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

(define-module (gl)
  #:use-module (gl runtime)
  #:use-module (gl types)
  #:use-module (gl enums)
  #:use-module ((gl low-level) #:renamer (symbol-prefix-proc '%))
  #:use-module (rnrs bytevectors)
  #:use-module (system foreign))

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
             (resolve-interface '(gl enums)))

;;;
;;; 2.6 Begin/End Paradigm
;;;

;; emacs: (put 'gl-begin 'scheme-indent-function 1)
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

;; TODO: Maybe re-export packed variants here.  Unpacked byte
;; variants?

(define* (gl-vertex x y #:optional (z 0.0) (w 1.0))
  (%glVertex4f x y z w))

(define* (gl-texture-coordinates s #:optional (t 0.0) (r 0.0) (q 1.0))
  (%glTexCoord4f s t r q))

(define* (gl-multi-texture-coordinates texture s #:optional (t 0.0) (r 0.0) (q 1.0))
  (%glMultiTexCoord4f texture s t r q))

(define* (gl-color red green blue #:optional (alpha 1.0))
  (%glColor4f red green blue alpha))

(define* (gl-vertex-attribute index x #:optional (y 0.0) (z 0.0) (w 1.0))
  (%glVertexAttrib4f index x y z w))

(export gl-vertex
        gl-texture-coordinates
        gl-multi-texture-coordinates
        gl-color
        gl-vertex-attribute)

(re-export (%glNormal3f . gl-normal)
           (%glFogCoordf . gl-fog-coordinate)
           (%glSecondaryColor3f . gl-secondary-color)
           (%glIndexi . gl-index))

;;;
;;; 2.8 Vertex Arrays
;;;


(define (->pointer bv-or-pointer offset)
  (cond
   ((zero? offset)
    bv-or-pointer)
   ((not bv-or-pointer)
    (make-pointer offset))
   (else
    (bytevector->pointer bv-or-pointer offset))))

(define-syntax define-gl-array-setter
  (syntax-rules ()
    ((_ set-gl-foo-array glFooPointer default-size)
     (define* (set-gl-foo-array type bv-or-pointer
                                #:optional (size default-size)
                                #:key (stride 0) (offset 0))
       (glFooPointer size type stride
                     (->pointer bv-or-pointer offset))))))

(define-syntax define-gl-array-setters
  (syntax-rules ()
    ((_ (name binding default-size) ...)
     (begin
       (define-gl-array-setter name binding default-size)
       ...))))

(define-gl-array-setters
  (set-gl-vertex-array %glVertexPointer 3)
  (set-gl-color-array %glColorPointer 3)
  (set-gl-secondary-color-array %glSecondaryColorPointer 3)
  (set-gl-texture-coordinates-array %glTexCoordPointer 2))

(define* (set-gl-normal-array type bv-or-pointer
                              #:key (stride 0) (offset 0))
  (%glNormalPointer type stride
                    (->pointer bv-or-pointer offset)))

(define* (set-gl-fog-coordinate-array type bv-or-pointer #:optional
                                      (stride 0) (offset 0))
  (%glFogCoordPointer type stride
                      (->pointer bv-or-pointer offset)))

(define* (set-gl-index-array type bv-or-pointer
                             #:key (stride 0) (offset 0))
  (%glIndexPointer type stride
                   (->pointer bv-or-pointer offset)))

(define* (set-gl-vertex-attribute-array index type normalized? bv-or-pointer
                                        #:optional (size 4)
                                        #:key (stride 0) (offset 0))
  (%glVertexAttribPointer index size type normalized? stride
                          (->pointer bv-or-pointer offset)))

(export set-gl-vertex-array
        set-gl-normal-array
        set-gl-color-array
        set-gl-secondary-color-array
        set-gl-index-array
        ;; set-gl-edge-flag-array
        set-gl-fog-coordinate-array
        set-gl-texture-coordinates-array
        set-gl-vertex-attribute-array
        )

(re-export (%glEnableClientState . gl-enable-client-state)
           (%glDisableClientState . gl-disable-client-state)
           (%glEnableVertexAttribArray . gl-enable-vertex-attribute-array)
           (%glDisableVertexAttribArray . gl-disable-vertex-attribute-array)
           (%glClientActiveTexture . set-gl-client-active-texture))

(re-export (%glArrayElement . gl-array-element)
           (%glDrawArrays . gl-draw-arrays))

;; TODO: Rest of 2.8 procedures (interleaved-arrays, etc.).

;;;
;;; 2.9 Buffer Objects
;;;

(define (gl-generate-buffer)
  (let ((bv (u32vector 0)))
    (%glGenBuffers 1 bv)
    (u32vector-ref bv 0)))

(define (gl-delete-buffer n)
  (let ((bv (u32vector n)))
    (%glDeleteBuffers 1 bv)))

(define* (set-gl-buffer-data target data usage
                             #:optional (size (bytevector-length data)))
  (%glBufferData target size data usage))

(define* (update-gl-buffer-data target data
                                #:optional (size (bytevector-length data))
                                #:key (offset 0))
  (%glBufferSubData target offset size data))

(re-export (%glBindBuffer . gl-bind-buffer))

(export gl-generate-buffer
        gl-delete-buffer
        set-gl-buffer-data
        update-gl-buffer-data)

;;; TODO: complete

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

(re-export (%glMatrixMode . set-gl-matrix-mode)
           (%glLoadIdentity . gl-load-identity)
           (%glRotatef . gl-rotate)
           (%glTranslatef . gl-translate)
           (%glScalef . gl-scale)
           (%glFrustum . gl-frustum)
           (%glOrtho . gl-ortho)
           (%glActiveTexture . set-gl-active-texture))

;; emacs: (put 'with-gl-push-matrix 'scheme-indent-function 0)
(define-syntax with-gl-push-matrix
  (syntax-rules ()
    ((_ body ...)
     (call-with-values
         (lambda ()
           (%glPushMatrix)
           body ...)
       (lambda vals
         (%glPopMatrix)
         (apply values vals))))))

(export-syntax with-gl-push-matrix)

;;;
;;; 2.11.3 Normal Transformations
;;;

(re-export (%glEnable . gl-enable)
           (%glDisable . gl-disable))

;;;
;;; 2.14 Colors and Coloring
;;;

(re-export (%glShadeModel . set-gl-shade-model))

;;;
;;; 3.8.12 Texture Objects
;;;

(define (gl-generate-texture)
  (let ((tv (u32vector 0)))
    (%glGenTextures 1 tv)
    (u32vector-ref tv 0)))

(define (gl-delete-texture n)
  (let ((tv (u32vector n)))
    (%glDeleteTextures 1 tv)))

(export gl-generate-texture
        gl-delete-texture)

(re-export (%glBindTexture . gl-bind-texture))


;;;
;;; 4.1 Per-Fragment Operations
;;;

(define* (set-gl-stencil-function stencil-function k #:key
                                  (mask #xFFFFFFFF) ; 32-bit mask
                                  face)
  (if face
      (%glStencilFuncSeparate face stencil-function k mask)
      (%glStencilFunc stencil-function k mask)))

(define* (set-gl-stencil-operation stencil-fail depth-fail depth-pass #:key
                                   face)
  (if face
      (%glStencilOpSeparate face stencil-fail depth-fail depth-pass)
      (%glStencilOp stencil-fail depth-fail depth-pass)))

;; TODO: 4.1.7 Occlusion Queries

(define* (set-gl-blend-equation mode-rgb #:optional (mode-alpha mode-rgb))
  (%glBlendEquationSeparate mode-rgb mode-alpha))

(define* (set-gl-blend-function src-rgb dest-rgb #:optional
                                (src-alpha src-rgb)
                                (dest-alpha dest-rgb))
  (%glBlendFuncSeparate src-rgb dest-rgb src-alpha dest-alpha))

(export set-gl-stencil-function
        set-gl-stencil-operation
        set-gl-blend-equation
        set-gl-blend-function
        )

(re-export (%glScissor . set-gl-scissor)
           (%glSampleCoverage . set-gl-sample-coverage)
           (%glAlphaFunc . set-gl-alpha-function)
           (%glDepthFunc . set-gl-depth-function)
           (%glBlendColor . set-gl-blend-color)
           (%glLogicOp . set-gl-logic-operation)
           )

;;;
;;; 4.2 Whole Framebuffer Operations
;;;

(define (set-gl-draw-buffers buffers)
  (let* ((n (length buffers))
         (buffers (make-c-struct (make-list n (GLenum))
                                 buffers)))
    (%glDrawBuffers n buffers)))

(define* (set-gl-stencil-mask mask #:key face)
  (if face
      (%glStencilMaskSeparate face mask)
      (%glStencilMask mask)))

(export set-gl-draw-buffers
        set-gl-stencil-mask)

(re-export (%glDrawBuffer . set-gl-draw-buffer)
           (%glIndexMask . set-gl-index-mask)
           (%glColorMask . set-gl-color-mask)
           (%glDepthMask . set-gl-depth-mask)
           (%glClear . gl-clear)
           (%glClearColor . set-gl-clear-color)
           (%glClearIndex . set-gl-clear-index)
           (%glClearDepth . set-gl-clear-depth)
           (%glClearStencil . set-gl-clear-stencil-value)
           (%glClearAccum . set-gl-clear-accumulation-color)
           (%glAccum . set-gl-accumulation-buffer-operation))

;;;
;;; 4.3 Drawing, Reading, and Copying Pixels
;;;

;; TODO: read-pixels

(re-export (%glReadBuffer . set-gl-read-buffer)
           (%glCopyPixels . gl-copy-pixels))

;;;
;;; 6.1 Querying GL State
;;;

;; emacs: (put 'with-gl-push-attrib 'scheme-indent-function 1)
(define-syntax-rule (with-gl-push-attrib bits body ...)
  (call-with-values
      (lambda ()
        (%glPushAttrib bits)
        body ...)
    (lambda vals
      (%glPopAttrib)
      (apply values vals))))

(export with-gl-push-attrib)
