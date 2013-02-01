;;; figl
;;; Copyright (C) 2013 Andy Wingo <wingo@pobox.com>
;;; 
;;; Figl is free software: you can redistribute it and/or modify it
;;; under the terms of the GNU Lesser General Public License as
;;; published by the Free Software Foundation, either version 3 of the
;;; License, or (at your option) any later version.
;;; 
;;; Figl is distributed in the hope that it will be useful, but WITHOUT
;;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
;;; or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General
;;; Public License for more details.
;;; 
;;; You should have received a copy of the GNU Lesser General Public
;;; License along with this program.  If not, see
;;; <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; figl is the Foreign Interface to GL.
;;
;;; Code:

(define-module (figl parse)
  #:use-module (figl config)
  #:use-module (sxml simple)
  #:use-module ((sxml xpath) #:hide (filter))
  #:use-module (sxml transform)
  #:use-module (sxml fold)
  #:use-module ((srfi srfi-1) #:select (filter fold append-map))
  #:use-module (srfi srfi-9)
  #:use-module (texinfo docbook)
  #:use-module (ice-9 ftw)
  #:use-module (ice-9 match)
  #:export (gl-definition?
            make-gl-definition
            gl-definition-name
            gl-definition-prototype
            gl-definition-documentation
            gl-definition-copyright
            parse-gl-definitions))

(define-record-type gl-definition
  (make-gl-definition name prototype documentation copyright)
  gl-definition?
  (name gl-definition-name)
  (prototype gl-definition-prototype)
  (documentation gl-definition-documentation)
  (copyright gl-definition-copyright))

(define *namespaces*
  '((mml . "http://www.w3.org/1998/Math/MathML")))

(define *entities*
  '(;; From http://www.w3.org/TR/MathML2/mmlextra.html
    (af . "\u2061") ;; Function application.
    (it . "\u2062") ;; Invisible times.
    ;; http://www.w3.org/TR/MathML2/isonum.html
    (plus . "\u002B") ;; Plus sign.
    (times . "\u00D7") ;; Multiplication sign.
    ;; http://www.w3.org/TR/MathML2/isotech.html
    (Prime . "\u2033") ;; Double prime.
    (le . "\u2264") ;; Less than or equal to.
    (ne . "\u2260") ;; Not equal to.
    (minus . "\u2212") ;; Minus sign.
    ;; http://www.w3.org/TR/MathML2/isoamsc.html
    (lceil . "\u2308") ;; Left ceiling.
    (rceil . "\u2309") ;; Right ceiling.
    (lfloor . "\u230A") ;; Left floor.
    (rfloor . "\u230B") ;; Right floor.
    ;; http://www.w3.org/TR/MathML2/mmlalias.html
    (DoubleVerticalBar . "\u2225") ;; Parallel to.
    (LeftFloor . "\u230A") ;; Left floor.
    (RightFloor . "\u230B") ;; Right floor.
    (LeftCeiling . "\u2308") ;; Left ceiling.
    (RightCeiling . "\u2309") ;; Right ceiling.
    (CenterDot . "\u00B7") ;; Middle dot.
    (VerticalBar . "\u2223") ;; Divides.
    (PartialD . "\u2202") ;; Partial derivative.
    ;; http://www.w3.org/TR/MathML2/mmlextra.html
    (Hat . "\u005E") ;; Circumflex accent.
    ;; http://www.w3.org/TR/MathML2/isogrk3.html
    (Delta . "\u0394") ;; Greek capital letter delta.
    (Sigma . "\u03A3") ;; Greek capital letter sigma.
    ;; Misc.
    (nbsp . "\u00A0")
    ))

(define (default-entity-handler port name)
  (format (current-warning-port)
          "~a:~a:~a: undefined entitity: &~a;\n"
          (or (port-filename port) "<unknown file>")
          (port-line port) (port-column port)
          name)
  (symbol->string name))

(define dbmathml
  "http://www.oasis-open.org/docbook/xml/mathml/1.1CR1/dbmathml.dtd")

(define (docbook-with-mathml-handler docname systemid internal)
  (unless (equal? systemid dbmathml)
    (warn "unexpected doctype" docname systemid internal))
  (values #:entities *entities* #:namespaces *namespaces*))

(define (trim-whitespace-left str)
  (let ((first (and (not (string-null? str))
                    (string-ref str 0))))
    (if (and first (char-whitespace? first))
        (string-append (string first) (string-trim str char-whitespace?))
        str)))

(define (trim-whitespace-right str)
  (let ((last (and (not (string-null? str))
                   (string-ref str (1- (string-length str))))))
    (if (and last (char-whitespace? last))
        (string-append (string-trim-right str char-whitespace?) (string last))
        str)))

(define (trim-whitespace str)
  (trim-whitespace-left
   (trim-whitespace-right str)))

(define (zap-whitespace sxml)
  (define (not-whitespace x)
    (or (not (string? x))
        (not (string-every char-whitespace? x))))
  (pre-post-order sxml
                  `((*default* . ,(lambda (tag . body)
                                    (cons tag
                                          (filter not-whitespace body))))
                    (*text* . ,(lambda (tag text)
                                 (if (string? text)
                                     (trim-whitespace text)
                                     text))))))

(define (parse-man-xml version filename)
  (define subdir (format #f "man~A" version))
  (call-with-input-file (in-vicinity (upstream-man-pages)
                                     (in-vicinity subdir filename))
    (lambda (port)
      (zap-whitespace
       (xml->sxml port #:declare-namespaces? #t
                  #:default-entity-handler default-entity-handler
                  #:doctype-handler docbook-with-mathml-handler)))))

(define (xml-files version)
  (define subdir (format #f "man~A" version))
  (scandir (in-vicinity (upstream-man-pages) subdir)
           (lambda (x) (string-suffix? ".xml" x))))

(define (take-first proc)
  (lambda (xml)
    (let ((res (proc xml)))
      (and (pair? res) (car res)))))

(define xml-name
  (take-first (sxpath '(refentry refnamediv refname *text*))))

(define xml-purpose
  (take-first (sxpath '(refentry refnamediv refpurpose *text*))))

(define xml-prototype
  (take-first (sxpath '(refentry refsynopsisdiv funcsynopsis))))

(define xml-parameters
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "parameters")))))))

(define xml-description
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "description")))))))

(define xml-errors
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "errors")))))))

(define xml-copyright
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "Copyright")))))))

(define (parse-prototype xml)
  xml)

(define (collapse-fragments nodeset)
  (match nodeset
    ((('*fragment* elts ...) nodes ...)
     (append (collapse-fragments elts)
             (collapse-fragments nodes)))
    ((((and tag (? symbol?)) elts ...) nodes ...)
     (acons tag (collapse-fragments elts) (collapse-fragments nodes)))
    ((elt nodes ...)
     (cons elt (collapse-fragments nodes)))
    (() '())))

(define (list-intersperse src-l elem)
  (if (null? src-l) src-l
      (let loop ((l (cdr src-l)) (dest (cons (car src-l) '())))
        (if (null? l) (reverse dest)
            (loop (cdr l) (cons (car l) (cons elem dest)))))))

(define (lift-tables sdocbook)
  ;; Like sdocbook-flatten, but tweaked to lift tables from inside
  ;; paras, but not paras from inside tables.  Pretty hacky stuff.
  (define *sdocbook-block-commands*
    '(informaltable programlisting variablelist))

  (define (inline-command? command)
    (not (memq command *sdocbook-block-commands*)))

  (define (fhere str accum block cont)
    (values (cons str accum)
            block
            cont))
  (define (fdown node accum block cont)
    (match node
      ((command (and attrs ('% . _)) body ...)
       (values body '() '()
               (lambda (accum block)
                 (values
                  `(,command ,attrs ,@(reverse accum))
                  block))))
      ((command body ...)
       (values body '() '()
               (lambda (accum block)
                 (values
                  `(,command ,@(reverse accum))
                  block))))))
  (define (fup node paccum pblock pcont kaccum kblock kcont)
    (call-with-values (lambda () (kcont kaccum kblock))
      (lambda (ret block)
        (if (inline-command? (car ret))
            (values (cons ret paccum) (append kblock pblock) pcont)
            (values paccum (append kblock (cons ret pblock)) pcont)))))
  (call-with-values
      (lambda () (foldts*-values fdown fup fhere sdocbook '() '() #f))
    (lambda (accum block cont)
      (append (reverse accum)
              (reverse block)
              ))))

(define *rules*
  `((refsect1
     *preorder*
     . ,(lambda (tag id . body)
          (append-map (lambda (nodeset)
                        (map
                         (lambda (x)
                           (pre-post-order x *rules*))
                         nodeset))
                      (map lift-tables body))))
    (title
     . ,(lambda (tag body)
          `(heading ,body)))
    (variablelist
     ((varlistentry
       . ,(lambda (tag term . body)
            `(entry (% (heading ,@(cdar term))) ,@(apply append body))))
      (listitem
       . ,(lambda (tag . body)
            (map (lambda (x)
                   (if (string? x)
                       `(para ,x)
                       x))
                 body)))
      (term
       . ,(lambda (tag . rest)
            `((itemx ,@rest)))))
     . ,(lambda (tag . body)
          `(table (% (formatter (asis))) ,@body)))
    (trademark
     . ,(match-lambda*
         ((_ ('@ ('class "copyright"))) '(copyright))))
    (parameter
     . ,(lambda (tag body)
          `(var ,body)))
    (type
     . ,(lambda (tag body)
          `(code ,body)))
    (constant
     . ,(lambda (tag . body)
          `(code . ,body)))
    (code
     . ,(lambda (tag . body)
          `(code . ,body)))
    (function
     . ,(lambda (tag body . ignored)
          (or (null? ignored) (warn "ignored function tail" ignored))
          `(code ,body)))
    (emphasis
     . ,(match-lambda*
         ((_) "")
         ((_ ('@ ('role "bold")) (and body (? string?)))
          `(strong ,(string-trim-both body)))
         ((_ ('@ ('role "bold")) . body) `(strong ,@body))
         ((_ body) `(var ,body))))
    (citerefentry
     . ,(lambda (tag contents)
          contents))
    (refentrytitle
     . ,(lambda (tag contents)
          `(code ,contents)))
    (inlineequation
     . ,(lambda (tag contents)
          contents))
    (informalequation
     . ,(lambda (tag contents)
          contents))
    (informaltable
     . ,(lambda (tag attrs tgroup)
          tgroup))
    (tgroup
     ((thead
       . ,(lambda (tag . rows)
            rows))
      (colspec
       . ,(lambda _
            #f))
      (tbody
       . ,(lambda (tag . rows)
            rows))
      (row
       . ,(lambda (tag first . rest)
            `(entry (% (heading ,@first))
                    (para ,@(apply
                             append
                             (list-intersperse rest '(", ")))))))
      (entry
       . ,(match-lambda*
           ((_) '())
           ((_ ('@ . _)) '())
           ((_ ('@ . _) x ...) x)
           ((_ x ...) x))))
     . ,(lambda (tag attrs . contents)
          `(table (% (formatter (asis)))
                  ,@(apply append (filter identity contents)))))

    ;; Poor man's mathml.
    (mml:math
     . ,(lambda (tag . contents)
          `(math . ,(collapse-fragments contents))))
    (mml:mn
     . ,(lambda (tag n . rest)
          (if (pair? rest)
              `(*fragment* ,n . ,rest)
              n)))
    (mml:mi
     . ,(case-lambda
          ((tag contents)
           `(code ,contents))
          ((tag attrs contents)
           (match attrs
             (('@ (mathvariant "italic"))
              `(var ,contents))
             (_ `(code ,contents))))))
    ;; It would be possible to represent a matrix as a @multitable, but
    ;; Guile doesn't really have support for that.  So instead print
    ;; each row in parentheses.
    (mml:mtable
     ((mml:mtr
       . ,(lambda (tag . body)
            `("(" ,@(list-intersperse body " ") ")")))
      (mml:mtd
       . ,(match-lambda*
           ((tag ('@ . _) body ...)
            `(*fragment* ,@body))
           ((tag body ...)
            `(*fragment* ,@body)))))
     . ,(lambda (tag . rows)
          ;; Rely on outer mfence for outer parens, if any
          (let ((rows (if (and (pair? rows) (eq? (caar rows) '@))
                          (cdr rows)
                          rows)))
            `(*fragment* ,@(apply append (list-intersperse rows '(", ")))))))
    (mml:mspace
     . ,(lambda (tag . _)
          " "))
    (mml:msup
     . ,(lambda (tag base exponent)
          `(*fragment* ,base "^" ,exponent)))
    (mml:msub
     . ,(lambda (tag base exponent)
          `(*fragment* ,base "_" ,exponent)))
    (mml:mover
     . ,(lambda (tag base over)
          `(*fragment* ,base ,over)))
    (mml:munderover
     . ,(lambda (tag under base over)
          `(*fragment* ,under ,base ,over)))
    (mml:mfrac
     . ,(lambda (tag num denom)
          `(*fragment* ,num "/" ,denom)))
    (mml:msqrt
     . ,(lambda (tag base)
          `(*fragment* "√" ,base)))
    (mml:infinity
     . ,(lambda (tag)
          "∞"))
    (mml:mo
     . ,(lambda (tag operator)
          operator))
    (mml:mrow
     . ,(lambda (tag . contents)
          `(*fragment* . ,contents)))
    (mml:mfenced
     . ,(lambda (tag attrs left . right)
          `(*fragment* ,@(assq-ref attrs 'open)
                       ,left
                       ","
                       ,@right
                       ,@(assq-ref attrs 'close))))
    (*text*
     . ,(lambda (tag text)
          text))
    ,@*sdocbook->stexi-rules*))

(define (sdocbook->stexi sdocbook)
  (pre-post-order sdocbook *rules*))

;; Produces an stexinfo fragment.
(define (generate-documentation purpose parameters description errors)
  `(*fragment*
    (heading ,purpose)
    ,@(if parameters (sdocbook->stexi parameters) '())
    ,@(if description (sdocbook->stexi description) '())
    ,@(if errors (sdocbook->stexi errors) '())))

(define (xml->definition xml)
  (make-gl-definition (xml-name xml)
                      (parse-prototype (xml-prototype xml))
                      (generate-documentation (xml-purpose xml)
                                              (xml-parameters xml)
                                              (xml-description xml)
                                              (xml-errors xml))
                      (and=> (xml-copyright xml) sdocbook->stexi)))

(define (parse-gl-definitions version)
  (map (lambda (file)
         (xml->definition (parse-man-xml version file)))
       (xml-files version)))
