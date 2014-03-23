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
;; OpenGL binding.
;;
;;; Code:

(define-module (glu)
  #:use-module (gl runtime)
  #:use-module (glu types)
  #:use-module ((glu low-level) #:renamer (symbol-prefix-proc '%)))

;; Notice there is no #:export clause.  Exports are done inline to
;; facilitate re-exporting low-level bindings (and changing that
;; choice), and identifying gaps in the API.
;;
;; There are two sets of exports for each section.  The first is for
;; bindings defined in the specification, exported in order.  The
;; second is for additional procedures not defined by the spec. but
;; relevant to the section, for example with-gl-begin.
;;
;; At least keep this format until the bindings are fairly complete.

;;;
;;; 4 Matrix Manipulation
;;;

(re-export (%gluPerspective . glu-perspective))
