;;; Guile-OpenGL
;;; Copyright (C) 2014 Free Software Foundation, Inc.
;;;
;;; Guile-OpenGL is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU Lesser General Public License as
;;; published by the Free Software Foundation, either version 3 of the
;;; License, or (at your option) any later version.
;;; 
;;; Guile-OpenGL is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; Lesser General Public License for more details.
;;; 
;;; You should have received a copy of the GNU Lesser General Public
;;; License along with this program.  If not, see
;;; <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; figl is the Foreign Interface to GL.
;;
;;; Code:

(define-module (gl parse)
  #:use-module (gl config)
  #:use-module (gl contrib)
  #:use-module (sxml simple)
  #:use-module ((sxml xpath) #:hide (filter))
  #:use-module (sxml transform)
  #:use-module (sxml fold)
  #:use-module ((srfi srfi-1) #:select (filter fold append-map filter-map))
  #:use-module (srfi srfi-9) ; define-record-type
  #:use-module (srfi srfi-42) ; eager comprehensions
  #:use-module (texinfo docbook)
  #:use-module (ice-9 ftw)
  #:use-module (ice-9 rdelim)
  #:use-module (ice-9 match)
  #:use-module (ice-9 regex)
  #:export (gl-definition?
            make-gl-definition
            gl-definition-name
            gl-definition-prototypes
            gl-definition-documentation
            gl-definition-copyright
            parse-gl-definitions

            gl-enumeration?
            make-gl-enumeration
            gl-enumeration-category
            gl-enumeration-values
            parse-gl-enumerations

            gl-param-type?
            make-gl-param-type
            gl-param-type-type
            gl-param-type-direction
            gl-param-type-transfer-type
            parse-gl-type-map))

(define-record-type gl-definition
  (make-gl-definition name prototypes documentation copyright)
  gl-definition?
  (name gl-definition-name)
  (prototypes gl-definition-prototypes)
  (documentation gl-definition-documentation)
  (copyright gl-definition-copyright))

;; values := (name . number) ...
(define-record-type gl-enumeration
  (make-gl-enumeration category values)
  gl-enumeration?
  (category gl-enumeration-category)
  (values gl-enumeration-values))

;; Seed of gl-param and more.
;; TODO: Is this not really gl-type?
(define-record-type gl-param-type
  (%make-gl-param-type type direction transfer-type)
  gl-param-type?
  (type gl-param-type-type)
  (direction gl-param-type-direction)
  (transfer-type gl-param-type-transfer-type))

;; Memoized for eq?, hash, memory usage.
(define make-gl-param-type (memoize %make-gl-param-type))

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
  (call-with-input-file (in-vicinity (upstream-doc)
                                     (in-vicinity subdir filename))
    (lambda (port)
      (zap-whitespace
       (xml->sxml port #:declare-namespaces? #t
                  #:default-entity-handler default-entity-handler
                  #:doctype-handler docbook-with-mathml-handler)))))

(define (xml-files version)
  (define subdir (format #f "man~A" version))
  (scandir (in-vicinity (upstream-doc) subdir)
           (lambda (x) (string-suffix? ".xml" x))))

(define (take-first proc)
  (lambda (xml)
    (let ((res (proc xml)))
      (and (pair? res) (car res)))))

(define xml-name
  (take-first (sxpath '(refentry refnamediv refname *text*))))

(define xml-purpose
  (take-first (sxpath '(refentry refnamediv refpurpose *text*))))

(define xml-funcprototypes
  (sxpath '(refentry refsynopsisdiv funcsynopsis funcprototype)))

(define xml-parameters
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "parameters")))))))

(define xml-description
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "description")))))))

(define xml-errors
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "errors")))))))

(define xml-copyright
  (take-first (sxpath '(refentry (refsect1 (@ id (equal? "Copyright")))))))

(define (string->gl-type str)
  (string->symbol
   (string-join (string-split (string-trim-both str) #\space) "-")))

(define (parse-prototypes sxml)
  (define all-names
    (match sxml
      ((('funcprototype ('funcdef return-type ('function names))
                        . _)
        ...)
       names)))

  (define (redundant-variant? s shun-suffix prefer-suffix)
    (and (string-suffix? shun-suffix s)
         (member (string-append (substring s 0 (- (string-length s)
                                                  (string-length shun-suffix)))
                                prefer-suffix)
                 all-names)))

  (filter-map
   (lambda (sxml)
     (match sxml
       (('funcprototype ('funcdef return-type ('function name))
                        ('paramdef ('parameter "void")))
        `(,(string->symbol name)
          -> ,(string->gl-type return-type)))
       (('funcprototype ('funcdef return-type ('function name))
                        ('paramdef ptype ('parameter pname))
                        ...)
        `(,(string->symbol name)
          ,@(map (lambda (pname ptype)
                   (list (string->symbol pname)
                         (string->gl-type ptype)))
                 pname ptype)
          -> ,(string->gl-type return-type)))))
   sxml))

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

(define (canonicalize-heading heading)
  (match heading
    (()
     ;; Some headings are empty.  makeinfo wants them to be present, so
     ;; appease.
     '("."))
    (else
     (map (lambda (x)
            (cond
             ((string? x)
              (string-join (string-split x #\newline) " "))
             ((symbol? x) x)
             (else (canonicalize-heading x))))
          heading))))

(define *rules*
  `((refsect1
     *preorder*
     . ,(lambda (tag id . body)
          (append-map (lambda (nodeset)
                        (map
                         (lambda (x)
                           (pre-post-order x *rules*))
                         nodeset))
                      (map lift-tables
                           (match body
                             ((('title _) body ...) body)
                             (_ body))))))
    (variablelist
     ((varlistentry
       . ,(lambda (tag term . body)
            `(entry (% (heading ,@(canonicalize-heading
                                   (cdar term))))
                    ,@(apply append body))))
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
            `(entry (% (heading ,@(canonicalize-heading first)))
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
          `(r . ,(collapse-fragments contents))))
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
    (para ,(string-append (string (char-upcase (string-ref purpose 0)))
                          (substring purpose 1)
                          "."))
    ,@(if parameters (sdocbook->stexi parameters) '())
    ,@(if description (sdocbook->stexi description) '())
    ,@(if errors (sdocbook->stexi errors) '())))

(define (xml->definition xml)
  (let ((prototypes (parse-prototypes (xml-funcprototypes xml))))
    (and (pair? prototypes)
         (make-gl-definition (xml-name xml)
                             prototypes
                             (generate-documentation (xml-purpose xml)
                                                     (xml-parameters xml)
                                                     (xml-description xml)
                                                     (xml-errors xml))
                             (and=> (xml-copyright xml)
                                    (lambda (c)
                                      `(*fragment* ,@(sdocbook->stexi c))))))))

(define (parse-gl-definitions version)
  (filter-map (lambda (file)
                (xml->definition (parse-man-xml version file)))
              (xml-files version)))

(define (trim-comment line)
  (cond
   ((string-index line #\#)
    => (lambda (idx) (substring line 0 idx)))
   (else line)))

(define (expand-camel-case s)
  (define (add-humps humps out more?)
    (match humps
      (() out)
      ((head)
       (if (null? out)
           humps
           (cons* head #\- out)))
      ((head tail ...)
       (let ((out (if (null? out)
                      tail
                      (append tail (cons #\- out)))))
         (if more?
             (cons* head #\- out)
             (cons head out))))))
  (let lp ((in (string->list s)) (humps '()) (out '()))
    (match in
      (()
       (list->string (reverse (add-humps humps out #f))))
      ((c in ...)
       (if (and (char-lower-case? c)
                ;; Try to keep subtokens like 12x3 in one piece.
                (or (null? humps)
                    (not (and-map char-numeric? humps))))
           (lp in '() (cons c (add-humps humps out #t)))
           (lp in (cons (char-downcase c) humps) out))))))

(define (mangle-name name)
  (string->symbol
   (string-join (map expand-camel-case (string-split name #\_))
                "-")))

(define (parse-number num)
  (cond
   ((equal? "0xFFFFFFFFu" num)
    #xFFFFFFFF)
   ((equal? "0xFFFFFFFFFFFFFFFFull" num)
    #xFFFFFFFFFFFFFFFF)
   ((string-prefix? "0x" num)
    (string->number (substring num 2) 16))
   ((string-prefix? "GL_" num)
    (cons #f (mangle-name (substring num 3))))
   ;; Hackety hack...
   ((string-prefix? "GLX_" num)
    (cons #f (mangle-name (substring num 4))))
   (else
    (string->number num))))

(define (read-line-and-trim-comment port)
  (let ((line (read-line port)))
    (if (eof-object? line)
        line
        (string-trim-both (trim-comment line)))))

(define (resolve-enumerations enums)
  ;; We shouldn't fail to resolve anything, but there are a couple bugs
  ;; in enum.spec currently:
  ;; http://www.khronos.org/bugzilla/show_bug.cgi?id=787.  Until they
  ;; are fixed, allow resolution to fail.
  (define (resolve-value category name value)
    (match value
      (#f #f)
      ((? number?)
       value)
      ((#f . (and name (? symbol?)))
       (resolve-value category name category))
      ((? symbol?)
       (resolve-value value name (assq-ref (assq-ref enums value) name)))))
  (let lp ((in enums) (out '()))
    (match in
      (()
       (reverse out))
      (((category (name . value) ...) . in)
       (lp in
           (cons (make-gl-enumeration
                  category
                  (filter-map
                   (lambda (name value)
                     (and=> (resolve-value category name value)
                            (lambda (value)
                              (cons name value))))
                   name value))
                 out))))))

(define (merge-alists in)
  ;; O(n^2), whee
  (define (collect-values key values in)
    (let lp ((in in) (values values))
      (if (null? in)
          values
          (lp (cdr in)
              (if (eq? (caar in) key)
                  (append values (cdar in))
                  values)))))
  (let lp ((in in) (out '()))
    (cond
     ((null? in) (reverse out))
     ((assq (caar in) out) (lp (cdr in) out))
     (else (lp (cdr in)
               (acons (caar in)
                      (collect-values (caar in) (cdar in) (cdr in))
                      out))))))

(define (parse-enumerations-from-port port)
  (define (finish-block headers enums accum)
    (if (null? enums)
        accum
        (fold (lambda (header accum)
                (acons header (reverse enums) accum))
              accum
              headers)))
  (let lp ((current-headers '()) (current-enums '()) (accum '()))
    (let ((line (read-line-and-trim-comment port)))
      (cond
       ((eof-object? line)
        (resolve-enumerations
         (merge-alists
          (reverse (finish-block current-headers current-enums accum)))))
       ((string-index line #\:)
        => (lambda (pos)
             (let* ((ws (or (string-index-right line char-whitespace? 0 pos) 0))
                    (headers (filter
                              (compose not string-null?)
                              (map string-trim-both
                                   (string-split (substring line 0 ws) #\,))))
                    (def (substring line (1+ ws) pos)))
               (match (cons def headers)
                 ((or ("define" _ ...)
                      ((? (lambda (x) (string-suffix? "_future_use" x)))))
                  (lp '()
                      '()
                      (finish-block current-headers current-enums accum)))
                 (("enum" headers ...)
                  (if (null? current-enums)
                      (lp (append current-headers (map mangle-name headers))
                          current-enums
                          accum)
                      (lp (map mangle-name headers)
                          '()
                          (finish-block current-headers current-enums accum))))
                 (x (error "qux." x))))))
       ((string-null? line)
        (lp current-headers current-enums accum))
       (else
        (match (filter (compose not string-null?)
                       (string-split (trim-comment line) char-whitespace?))
          ((enum "=" value)
           (lp current-headers
               (acons (mangle-name enum)
                      (or (parse-number value)
                          (error "failed to parse" value))
                      current-enums)
               accum))
          (("use" header enum)
           (lp current-headers
               (acons (mangle-name enum)
                      (mangle-name header)
                      current-enums)
               accum))
          (x (error x))))))))

(define (parse-gl-enumerations spec)
  (call-with-input-file (in-vicinity (upstream-doc)
                                     (in-vicinity "spec" spec))
    parse-enumerations-from-port))


;;;
;;; Type Map
;;;

(define valid-directions '(in out in/out))

(define valid-transfer-types '(array reference value))

(define* (string->directions str #:optional
                             (expansion valid-directions))
  (let ((direction (string->symbol str)))
    (cond
     ((and (eq? direction '*) expansion)
      expansion)
     ((memq direction valid-directions)
      (list direction))
     (else
      (error "unknown direction" str)))))

(define* (string->transfer-types str #:optional
                                 (expansion valid-transfer-types))
  (let ((trans (string->symbol str)))
    (cond
     ((and (eq? trans '*) expansion)
      expansion)
     ((memq trans valid-transfer-types)
      (list trans))
     (else
      (error "unknown transfer-type" str)))))

(define (expand-type-map-entry type
                               direction
                               transfer-type
                               mapped-type
                               mapped-direction
                               mapped-transfer-type)
  (let ((type (mangle-name type))
        (mapped-type (string->gl-type mapped-type)))
    (list-ec (:list direction (string->directions direction))
             (:list transfer-type (string->transfer-types transfer-type))
             (:list mapped-direction
                    (string->directions mapped-direction
                                        (list direction)))
             (:list mapped-transfer-type
                    (string->transfer-types mapped-transfer-type
                                            (list transfer-type)))
             (cons (make-gl-param-type type
                                       direction
                                       transfer-type)
                   (make-gl-param-type mapped-type
                                       mapped-direction
                                       mapped-transfer-type)))))
               
(define (parse-type-map-from-port port)
  (define delimiter (make-regexp "[ \t]*,[ \t]*"))

  (let lp ((accum '()))
    (let ((line (read-line-and-trim-comment port)))
      (cond
       ((eof-object? line)
        (reverse accum))
       ((string-null? line)
        (lp accum))
       (else
        ;; TODO: Filter needed here to avoid formatting bug:
        ;; http://www.khronos.org/bugzilla/show_bug.cgi?id=790
        (match (filter (compose not string-null?)
                       (string-split line delimiter))
          ((type direction transfer-type
            mapped-type mapped-direction mapped-transfer-type)
           (lp (append (expand-type-map-entry type
                                              direction
                                              transfer-type
                                              mapped-type
                                              mapped-direction
                                              mapped-transfer-type)
                       accum)))
          (x (error x))))))))

(define (parse-gl-type-map tm)
  (call-with-input-file (in-vicinity (upstream-doc)
                                     (in-vicinity "spec" tm))
    parse-type-map-from-port))
