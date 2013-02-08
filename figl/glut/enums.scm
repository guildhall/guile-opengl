;;; fgil
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
;; figl is the Foreign Interface to GL.
;;
;;; Code:

(define-module (figl glut enums)
  #:use-module (figl runtime)
  #:export (display-mode))

(define-bitfield
  display-mode
  (rgb #x0000)
  (rgba #x0000)
  (index #x0001)
  (single #x0000)
  (double #x0002)
  (accum #x0004)
  (alpha #x0008)
  (depth #x0010)
  (stencil #x0020)
  (multisample #x0080)
  (stereo #x0100)
  (luminance #x0200))
