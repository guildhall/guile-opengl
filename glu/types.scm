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
;; Mappings from OpenGL to FFI types.
;;
;;; Code:

(define-module (glu types)
  #:use-module (gl runtime)
  #:export (GLUnurbs*
            GLUquadric*
            GLUtesselator*
            GLdouble*
            GLfloat*
            GLvoid*
            _GLUfuncptr
            const-void-*))

(module-use! (module-public-interface (current-module))
             (resolve-interface '(gl types)))

(define-simple-foreign-type GLUnurbs* '*)
(define-simple-foreign-type GLUquadric* '*)
(define-simple-foreign-type GLUtesselator* '*)
(define-simple-foreign-type GLdouble* '*)
(define-simple-foreign-type GLfloat* '*)
(define-simple-foreign-type GLvoid* '*)
(define-simple-foreign-type _GLUfuncptr '*)
(define-simple-foreign-type const-void-* '*)
