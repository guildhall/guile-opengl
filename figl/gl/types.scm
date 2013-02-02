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
  #:use-module (figl runtime)
  #:use-module ((system foreign) #:renamer (symbol-prefix-proc 'ffi:))
  #:export (void
            GLboolean
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
  (case (ffi:sizeof '*)
    ((4) ffi:uint32)
    ((8) ffi:uint64)
    (else (error "unknown pointer size"))))

(define-simple-foreign-type void ffi:void)
(define-simple-foreign-type GLboolean ffi:uint8)
(define-simple-foreign-type GLbyte ffi:int8)
(define-simple-foreign-type GLubyte ffi:uint8)
(define-simple-foreign-type GLchar ffi:int8)
(define-simple-foreign-type Glshort ffi:int16)
(define-simple-foreign-type GLushort ffi:uint16)
(define-simple-foreign-type GLint ffi:int32)
(define-simple-foreign-type GLuint ffi:uint32)
(define-simple-foreign-type GLsizei ffi:int32)
(define-simple-foreign-type GLenum ffi:uint32)
(define-simple-foreign-type GLintptr %ptr)
(define-simple-foreign-type GLsizeiptr %ptr)
(define-simple-foreign-type GLbitfield ffi:uint32)
(define-simple-foreign-type GLfloat ffi:float)
(define-simple-foreign-type GLclampf ffi:float)
(define-simple-foreign-type GLdouble ffi:double)
(define-simple-foreign-type GLclampd ffi:double)

;; All of these have different meanings and we should be able to do a
;; basic job at teasing them out, but for now, just use the limited
;; annotation from (system foreign).
(define-simple-foreign-type GLboolean-* '*)
(define-simple-foreign-type GLchar-* '*)
(define-simple-foreign-type GLdouble-* '*)
(define-simple-foreign-type GLenum-* '*)
(define-simple-foreign-type GLfloat-* '*)
(define-simple-foreign-type GLint-* '*)
(define-simple-foreign-type GLsizei-* '*)
(define-simple-foreign-type GLubyte-* '*)
(define-simple-foreign-type GLuint-* '*)
(define-simple-foreign-type GLvoid-* '*)
(define-simple-foreign-type const-GLchar-* '*)
(define-simple-foreign-type const-GLchar-** '*)
(define-simple-foreign-type const-GLclampf-* '*)
(define-simple-foreign-type const-GLdouble-* '*)
(define-simple-foreign-type const-GLenum-* '*)
(define-simple-foreign-type const-GLfloat-* '*)
(define-simple-foreign-type const-GLint-* '*)
(define-simple-foreign-type const-GLsizei-* '*)
(define-simple-foreign-type const-GLubyte* '*)
(define-simple-foreign-type const-GLubyte-* '*)
(define-simple-foreign-type const-GLubyte-* '*)
(define-simple-foreign-type const-GLuint-* '*)
(define-simple-foreign-type const-GLvoid-* '*)
(define-simple-foreign-type const-GLvoid-** '*)
(define-simple-foreign-type void-* '*)
