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

(define-module (glx runtime)
  #:use-module (system foreign)
  #:use-module (gl types)
  #:use-module (gl runtime)
  #:export (define-glx-procedure define-glx-procedures))

(define libGL
  (delay (dynamic-link "libGL")))

(define (get-libGL)
  (force libGL))

(define (dladdr-resolve name)
  (dynamic-pointer (symbol->string name) (get-libGL)))

(define-foreign-procedure (glx-resolve (name const-GLchar-*) -> void-*)
  (dladdr-resolve 'glXGetProcAddress)
  "The GLX resolver.")

(current-gl-resolver glx-resolve)
(current-gl-get-dynamic-object get-libGL)

(define (resolve name)
  (let ((ptr (glx-resolve (symbol->string name))))
    (if (null-pointer? ptr)
        (dladdr-resolve name)
        ptr)))

(define-syntax define-glx-procedure
  (syntax-rules (->)
    ((define-glx-procedure (name (pname ptype) ... -> type)
       docstring)
     (define-foreign-procedure (name (pname ptype) ... -> type)
       (resolve 'name)
       docstring))))

(define-syntax define-glx-procedures
  (syntax-rules ()
    ((define-glx-procedures ((name prototype ...) ...)
       docstring)
     (begin
       (define-glx-procedure (name prototype ...)
         docstring)
       ...))))
