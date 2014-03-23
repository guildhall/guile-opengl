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

(define-module (glx types)
  #:use-module ((system foreign) #:renamer (symbol-prefix-proc 'ffi:))
  #:use-module (gl runtime)
  #:export (int
            unsigned-long
            Bool
            Display-*
            Font
            GLXContext
            const-GLXContext
            GLXContextID
            GLXDrawable
            GLXFBConfig
            GLXFBConfig-*
            GLXFBConfig-*
            GLXPbuffer
            GLXPixmap
            GLXWindow
            Pixmap
            Window
            XVisualInfo*
            XVisualInfo-*
            const-char-*
            const-int-*
            int-*
            unsigned-int-*
            unsigned-long-*
            #{void\x28;*\x29;\x28;\x29;}#
            ))

(module-use! (module-public-interface (current-module))
             (resolve-interface '(gl types)))

(define-simple-foreign-type int ffi:int)
(define-simple-foreign-type unsigned-long ffi:unsigned-long)
(define-simple-foreign-type Bool ffi:int)
(define-simple-foreign-type Display-* '*)
(define-simple-foreign-type Font ffi:unsigned-long)
(define-simple-foreign-type GLXContext '*)
(define-simple-foreign-type const-GLXContext '*)
(define-simple-foreign-type GLXContextID '*)
(define-simple-foreign-type GLXDrawable ffi:unsigned-long)
(define-simple-foreign-type GLXFBConfig '*)
(define-simple-foreign-type GLXFBConfig-* '*)
(define-simple-foreign-type GLXFBConfig-* '*)
(define-simple-foreign-type GLXPbuffer ffi:unsigned-long)
(define-simple-foreign-type GLXPixmap ffi:unsigned-long)
(define-simple-foreign-type GLXWindow ffi:unsigned-long)
(define-simple-foreign-type Pixmap ffi:unsigned-long)
(define-simple-foreign-type Window ffi:unsigned-long)
(define-simple-foreign-type XVisualInfo* '*)
(define-simple-foreign-type XVisualInfo-* '*)
(define-simple-foreign-type const-char-* '*)
(define-simple-foreign-type const-int-* '*)
(define-simple-foreign-type int-* '*)
(define-simple-foreign-type unsigned-int-* '*)
(define-simple-foreign-type unsigned-long-* '*)
;; void(*)()
(define-simple-foreign-type #{void\x28;*\x29;\x28;\x29;}# '*)
