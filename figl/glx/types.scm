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

(define-module (figl glx types)
  #:use-module (system foreign)
  #:re-export (int unsigned-long)
  #:export (Bool
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
             (resolve-interface '(figl gl types)))

(define Bool int)
(define Display-* '*)
(define Font unsigned-long)
(define GLXContext '*)
(define const-GLXContext '*)
(define GLXContextID '*)
(define GLXDrawable unsigned-long)
(define GLXFBConfig '*)
(define GLXFBConfig-* '*)
(define GLXFBConfig-* '*)
(define GLXPbuffer unsigned-long)
(define GLXPixmap unsigned-long)
(define GLXWindow unsigned-long)
(define Pixmap unsigned-long)
(define Window unsigned-long)
(define XVisualInfo* '*)
(define XVisualInfo-* '*)
(define const-char-* '*)
(define const-int-* '*)
(define int-* '*)
(define unsigned-int-* '*)
(define unsigned-long-* '*)
;; void(*)()
(define #{void\x28;*\x29;\x28;\x29;}# '*)
