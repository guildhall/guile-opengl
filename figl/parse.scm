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
  #:use-module ((srfi srfi-1) #:select (filter))
  #:use-module (texinfo docbook)
  #:use-module (ice-9 ftw)
  #:export ())

(define *man-sections*
  '("man2" "man3" "man4"))

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

(define (parse-man-xml section filename)
  (call-with-input-file (in-vicinity (upstream-man-pages)
                                     (in-vicinity section filename))
    (lambda (port)
      (zap-whitespace
       (xml->sxml port #:declare-namespaces? #t
                  #:default-entity-handler default-entity-handler
                  #:doctype-handler docbook-with-mathml-handler)))))

(define (xml-files section)
  (scandir (in-vicinity (upstream-man-pages) section)
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

(define (parse-prototype xml)
  xml)

(define *rules*
  `((refsect1
     . ,(lambda (tag id . body)
          body))
    (title
     . ,(lambda (tag body)
          `(heading ,body)))
    (variablelist
     ((varlistentry
       . ,(lambda (tag term . body)
            `(entry (% (heading ,@(cdr term))) ,@body)))
      (listitem
       . ,(lambda (tag . rest)
            (cond ((null? rest)
                   (warn "null listitem")
                   '(*fragment*))
                  ((pair? (car rest))
                   (if (not (null? (cdr rest)))
                       (warn "ignoring listitem extra contents:" (cddr rest)))
                   (car rest))
                  (else
                   (list 'para rest))))))
     . ,(lambda (tag . body)
          `(table (% (formatter (var))) ,@body)))
    (term
     . ,(lambda (tag param . rest)
          (if (pair? param)
              param
              (list 'var param))))
    (parameter
     . ,(lambda (tag body)
          `(var ,body)))
    (type
     . ,(lambda (tag body)
          `(code ,body)))
    (constant
     . ,(lambda (tag . body)
          `(code . ,body)))
    (function
     . ,(lambda (tag body . ignored)
          (or (null? ignored) (warn "ignored function tail" ignored))
          `(code ,body)))
    (emphasis
     . ,(lambda (tag . body)
          `(var . ,body)))
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
    ,@(sdocbook->stexi parameters)
    ,@(sdocbook->stexi description)
    ,@(sdocbook->stexi errors)))

(define (xml->definition xml)
  `((name . ,(xml-name xml))
    (prototype . ,(parse-prototype (xml-prototype xml)))
    (documentation . ,(generate-documentation (xml-purpose xml)
                                              (xml-parameters xml)
                                              (xml-description xml)
                                              (xml-errors xml)))))
