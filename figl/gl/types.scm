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
            GLclampd

            GLboolean-*
            GLchar-*
            GLdouble-*
            GLenum-*
            GLfloat-*
            GLint-*
            GLsizei-*
            GLubyte-*
            GLuint-*
            GLvoid-*
            const-GLchar-*
            const-GLchar-**
            const-GLclampf-*
            const-GLdouble-*
            const-GLenum-*
            const-GLfloat-*
            const-GLint-*
            const-GLsizei-*
            const-GLubyte*
            const-GLubyte-*
            const-GLubyte-*
            const-GLuint-*
            const-GLvoid-*
            const-GLvoid-**
            void-*))

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

;; All of these have different meanings and we should be able to do a
;; basic job at teasing them out, but for now, just use the limited
;; annotation from (system foreign).
(define GLboolean-* '*)
(define GLchar-* '*)
(define GLdouble-* '*)
(define GLenum-* '*)
(define GLfloat-* '*)
(define GLint-* '*)
(define GLsizei-* '*)
(define GLubyte-* '*)
(define GLuint-* '*)
(define GLvoid-* '*)
(define const-GLchar-* '*)
(define const-GLchar-** '*)
(define const-GLclampf-* '*)
(define const-GLdouble-* '*)
(define const-GLenum-* '*)
(define const-GLfloat-* '*)
(define const-GLint-* '*)
(define const-GLsizei-* '*)
(define const-GLubyte* '*)
(define const-GLubyte-* '*)
(define const-GLubyte-* '*)
(define const-GLuint-* '*)
(define const-GLvoid-* '*)
(define const-GLvoid-** '*)
(define void-* '*)
