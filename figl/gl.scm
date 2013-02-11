;;; figl
;;; Copyright (C) 2013 Andy Wingo <wingo@pobox.com>
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
;; OpenGL binding.
;;
;;; Code:

(define-module (figl gl)
  #:use-module (figl runtime)
  #:use-module (figl gl enums)
  #:use-module ((figl gl low-level) #:renamer (symbol-prefix-proc '%)))

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

(module-use! (module-public-interface (current-module))
             (resolve-interface '(figl gl enums)))

;;;
;;; 2.6 Begin/End Paradigm
;;;

;; emacs: (put! 'gl-begin 'scheme-indent-function 1)
(define-syntax gl-begin
  (syntax-rules ()
    ((_ mode body1 body2 ...)
     (call-with-values
         (lambda ()
           (%glBegin mode)
           body1 body2 ...)
       (lambda vals
         (%glEnd)
         (apply values vals))))))

(define (gl-edge-flag flag)
  (%glEdgeFlag (if flag (boolean true) (boolean false))))

(export-syntax gl-begin)

(export gl-edge-flag)

;;;
;;; 2.7 Vertex Specification
;;;

;; Note that these are float variants only.  This has implications for
;; some functions whose integer variants normalize their arguments.
;; The corresponding float variants expect normalized input, usually
;; in the range [0, 1].  Refer to the OpenGL specification for
;; details.
;;
;; For access to non-float variants please use the appropriate
;; low-level binding.

;; TODO: Maybe re-export packaged variants here.  Unpacked byte
;; variants?

(define* (gl-vertex x y #:optional (z 0.0) (w 1.0))
  (%glVertex4f x y z w))

(define* (gl-tex-coord s #:optional (t 0.0) (r 0.0) (q 1.0))
  (%glTexCoord4f s t r q))

(define* (gl-multi-tex-coord texture s #:optional (t 0.0) (r 0.0) (q 1.0))
  (%glMultiTexCoord4f texture s t r q))

(define* (gl-color red green blue #:optional (alpha 1.0))
  (%glColor4f red green blue alpha))

(define* (gl-vertex-attrib index x #:optional (y 0.0) (z 0.0) (w 1.0))
  (%glVertexAttrib4f index x y z w))

(export gl-vertex
        gl-tex-coord
        gl-multi-tex-coord
        gl-color)

(re-export (%glNormal3f . gl-normal)
           (%glFogCoordf . gl-fog-coord)
           (%glSecondaryColor3f . gl-secondary-color)
           (%glIndexi . gl-index))

;;;
;;; 2.10 Rectangles
;;;

(re-export (%glRectf . gl-rectangle))


;;;
;;; 2.11 Coordinate Transformation
;;;

;;;
;;; 2.11.1 Controlling the Viewport
;;;

(re-export (%glDepthRange . gl-depth-range)
           (%glViewport . gl-viewport))

;;;
;;; 2.11.2 Matrices
;;;

;; OpengGL matrices are stored in column-major order.  This is
;; different to the usual row-major order used in 2-dimensional
;; arrays, which will have to be transposed as they loaded.

(define* (gl-load-matrix m #:key (transpose #f))
  ((if transpose
       %glLoadTransposeMatrixf
       %glLoadMatrixf)
   (array-contents m)))

(define* (gl-multiply-matrix m #:key (transpose #f))
  ((if transpose
       %glMultTransposeMatrixf
       %glMultMatrixf)
   (array-contents m)))

(export gl-load-matrix
        gl-multiply-matrix)

(re-export (%glMatrixMode . gl-matrix-mode)
           (%glLoadIdentity . gl-load-identity)
           (%glRotatef . gl-rotate)
           (%glTranslatef . gl-translate)
           (%glScalef . gl-scale)
           (%glFrustum . gl-frustum)
           (%glOrtho . gl-ortho)
           (%glActiveTexture . set-gl-active-texture)
           (%glPushMatrix . gl-push-matrix)
           (%glPopMatrix . gl-pop-matrix))

(define-syntax with-gl-push-matrix
  (syntax-rules ()
    ((_ body ...)
     (begin
       (%glPushMatrix)
       body ...
       (%glPopMatrix)))))

(export-syntax with-gl-push-matrix)

;;;
;;; 2.11.3 Normal Transformations
;;;

(re-export (%glEnable . gl-enable)
           (%glDisable . gl-disable))
