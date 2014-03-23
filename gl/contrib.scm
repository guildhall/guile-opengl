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
;; Small helpers that properly have no home, or are imported from
;; other sources.
;;
;;; Code:

(define-module (gl contrib)
  #:use-module (ice-9 regex)
  #:use-module (srfi srfi-69) ; hash tables
  #:export (memoize)
  #:replace (string-split))

(define (memoize proc)
  (let ((table (make-hash-table)))
    (lambda args
      (apply values
             (hash-table-ref
              table
              args
              (lambda ()
                (call-with-values
                    (lambda () (apply proc args))
                  (lambda results
                    (hash-table-set! table args results)
                    results))))))))

;; Based on code by Andy Wingo.  Eventually something like this will
;; be included with Guile.
(define (string-split str delimiter)
  (if (regexp? delimiter)
      (let ((ret (fold-matches
                  delimiter str (cons '() 0)
                  (lambda (m prev)
                    (let ((parts (car prev))
                          (start (cdr prev)))
                      (cons (cons (substring str start (match:start m))
                                  parts)
                            (match:end m)))))))
        (reverse (cons (substring str (cdr ret)) (car ret))))
      ((@ (guile) string-split) str delimiter)))
