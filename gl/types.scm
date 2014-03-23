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

(define-module (gl types)
  #:use-module (gl runtime)
  #:use-module (rnrs bytevectors)
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
            GLbyte-*
            GLubyte-*
            GLchar-*
            GLshort-*
            GLushort-*
            GLint-*
            GLuint-*
            GLsizei-*
            GLenum-*
            GLfloat-*
            GLclampf-*
            GLdouble-*
            GLclampd-*
            GLvoid-*
            GLvoid-**

            const-GLboolean-*
            const-GLbyte-*
            const-GLubyte-*
            const-GLubyte*
            const-GLchar-*
            const-GLchar-**
            const-GLshort-*
            const-GLushort-*
            const-GLint-*
            const-GLuint-*
            const-GLsizei-*
            const-GLenum-*
            const-GLfloat-*
            const-GLclampf-*
            const-GLdouble-*
            const-GLclampd-*
            const-GLvoid-*
            const-GLvoid-**
            void-*))

;; TODO: Taken from Mesa headers for some types below.  Not clear what
;; these types are on other platforms.
(define %ptr
  (cond
   ((defined? 'ffi:ptrdiff_t) ffi:ptrdiff_t)
   ((= (ffi:sizeof '*) 8) ffi:int64)
   ((= (ffi:sizeof '*) 4) ffi:int32)
   (else (error "unknown pointer size" (ffi:sizeof '*)))))

(define-simple-foreign-type void ffi:void)
(define-simple-foreign-type GLbyte ffi:int8)
(define-simple-foreign-type GLubyte ffi:uint8)
(define-simple-foreign-type GLchar ffi:int8)
(define-simple-foreign-type GLshort ffi:int16)
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
(define-simple-foreign-type GLvoid-* '*)
(define-simple-foreign-type void-* '*)
(define-simple-foreign-type const-GLvoid-* '*)

(define GL_FALSE 0)
(define GL_TRUE 1)

(define-foreign-type GLboolean ffi:uint8
  (lambda (x) (if x GL_TRUE GL_FALSE))
  (lambda (x) (eqv? x GL_TRUE)))

(define (coerce-array-pointer x)
  (cond
   ((ffi:pointer? x)
    x)
   ((bytevector? x)
    (ffi:bytevector->pointer x))
   ;; TODO: (typed-array? x element-type)
   ((not x)
    ffi:%null-pointer)
   (else
    (error "unhandled array-pointer type" x))))

(define-syntax define-array-foreign-type
  (syntax-rules ()
    ((_ name element-type)
     (define-foreign-type name '*
       coerce-array-pointer
       (lambda (x) x)))))

(define-array-foreign-type GLboolean-* GLboolean)
(define-array-foreign-type GLbyte-* GLbyte)
(define-array-foreign-type GLubyte-* GLubyte)
(define-array-foreign-type GLchar-* GLchar)
(define-array-foreign-type GLshort-* GLshort)
(define-array-foreign-type GLushort-* GLushort)
(define-array-foreign-type GLint-* GLint)
(define-array-foreign-type GLuint-* GLuint)
(define-array-foreign-type GLsizei-* GLsizei)
(define-array-foreign-type GLenum-* GLenum)
(define-array-foreign-type GLfloat-* GLfloat)
(define-array-foreign-type GLclampf-* GLclampf)
(define-array-foreign-type GLdouble-* GLdouble)
(define-array-foreign-type GLclampd-* GLclampd)

(define-array-foreign-type const-GLboolean-* GLboolean)
(define-array-foreign-type const-GLbyte-* GLbyte)
(define-array-foreign-type const-GLubyte-* GLubyte)
(define-array-foreign-type const-GLshort-* GLshort)
(define-array-foreign-type const-GLushort-* GLushort)
(define-array-foreign-type const-GLint-* GLint)
(define-array-foreign-type const-GLuint-* GLuint)
(define-array-foreign-type const-GLsizei-* GLsizei)
(define-array-foreign-type const-GLenum-* GLenum)
(define-array-foreign-type const-GLfloat-* GLfloat)
(define-array-foreign-type const-GLclampf-* GLclampf)
(define-array-foreign-type const-GLdouble-* GLdouble)
(define-array-foreign-type const-GLclampd-* GLclampd)
(define-array-foreign-type const-GLvoid-* GLvoid)

(define-foreign-type const-GLchar-* '*
  ffi:string->pointer
  ffi:pointer->string)

;; Functions with these types will need special help.
(define-simple-foreign-type GLvoid-** '*)
(define-simple-foreign-type const-GLchar-** '*)
(define-simple-foreign-type const-GLvoid-** '*)

;; TODO: Hacked for a typo in glGetString.xml.
(define-array-foreign-type const-GLubyte* GLubyte)
