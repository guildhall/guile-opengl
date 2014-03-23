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

(define-module (glut runtime)
  #:use-module (system foreign)
  #:use-module (gl runtime)
  #:export (*resolve-hook*
            define-glut-procedure))

(define libglut
  (delay (dynamic-link "libglut")))

(define (get-libglut)
  (force libglut))

(current-gl-get-dynamic-object get-libglut)

(define *resolve-hook* (make-hook 1))

(define (resolve name)
  (let ((name-str (symbol->string name)))
    (run-hook *resolve-hook* name-str)
    (dynamic-pointer name-str (get-libglut))))

(define-syntax define-glut-procedure
  (syntax-rules (->)
    ((define-glut-procedure (name (pname ptype) ... -> type)
       docstring)
     (define-foreign-procedure (name (pname ptype) ... -> type)
       (resolve 'name)
       docstring))))
