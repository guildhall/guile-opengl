;;; figl
;;; Copyright (C) 2013 Daniel Hartwig <mandyke@gmail.com>
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

(define-module (figl glut)
  #:use-module (figl glut low-level)
  #:use-module (system foreign)
  #:use-module (srfi srfi-39) ; parameter objects
  #:export (glut-init))

;; TODO: Most procedures should prevent themself from being called
;; before glut-init.

(define glut-init? (make-parameter #f))

;; Note the use of 'saved-c-strings' to keep a reference to all of the
;; C string buffers that we ever pass to 'glutInit'. This is important
;; because the glut docs specify that 'glutInit' wants the original
;; unmodified 'argv' passed to 'main', which means that it can assume
;; that the strings will never be freed. 'string->pointer' returns a C
;; string buffer managed by the garbage collector, which means that
;; the string may be freed unless the GC can see a pointer to the
;; _beginning_ of the string.
(define glut-init
  (let ((saved-c-strings '()))
    (lambda (args)
      ;; Avoid calling init twice as GLUT will exit().
      (unless (glut-init?)
        (let* ((num-args (length args))
               (c-strings (map string->pointer args))
               (argcp (make-c-struct (list int)
                                     (list num-args)))
               (argv (make-c-struct (make-list (+ 1 num-args) '*)
                                    (append c-strings
                                            (list %null-pointer)))))
          (set! saved-c-strings (append c-strings saved-c-strings))
          (glutInit argcp argv)
          (glut-init? #t)
          (let ((argc (car (parse-c-struct argcp (list int)))))
            (map pointer->string
                 (parse-c-struct argv
                                 (make-list argc '*)))))))))
