;;; figl
;;; Copyright (C) 2013 Andy Wingo <wingo@pobox.com>
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
;; OpenGL binding.
;;
;;; Code:

(define-module (figl glx)
  #:use-module (system foreign)
  #:use-module (figl runtime)
  #:use-module (figl glx low-level))

(define libGL
  (delay (dynamic-link "libGL")))

(define glXGetProcAddress
  (delay (pointer->procedure
          '*
          (dynamic-pointer "glXGetProcAddress" (force libGL))
          '(*))))

(define (glx-resolver name)
  ((force glXGetProcAddress) (string->pointer name)))

(current-resolver glx-resolver)
