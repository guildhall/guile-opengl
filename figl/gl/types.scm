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
;; Mappings from OpenGL to FFI types.
;;
;;; Code:

(define-module (figl gl types)
  #:use-module (system foreign)
  #:re-export (void)
  #:export (GLboolean
            GLbyte
            GLubyte
            GLchar
            GLshort
            GLushort
            GLint
            GLuint
            GLsizei
            GLenum
            GLintptr
            GLsizeiptr
            GLbitfield
            GLfloat
            GLclampf
            GLdouble
            GLclampd))

(define %ptr
  (case (sizeof '*)
    ((4) uint32)
    ((8) uint64)
    (else (error "unknown pointer size"))))

(define GLboolean uint8)
(define GLbyte int8)
(define GLubyte uint8)
(define GLchar int8)
(define Glshort int16)
(define GLushort uint16)
(define GLint int32)
(define GLuint uint32)
(define GLsizei int32)
(define GLenum uint32)
(define GLintptr %ptr)
(define GLsizeiptr %ptr)
(define GLbitfield uint32)
(define GLfloat float)
(define GLclampf float)
(define GLdouble double)
(define GLclampd double)
