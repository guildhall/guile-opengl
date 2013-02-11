#!/usr/bin/env guile
!#

(use-modules (figl glut)
             (figl gl)
             (system foreign))

(define (render-scene)
  (gl-clear (clear-buffer-mask color-buffer depth-buffer))
  (gl-begin (begin-mode triangles)
    (gl-vertex -0.5 -0.5 0.0)
    (gl-vertex 0.5 0.0 0.0)
    (gl-vertex 0.0 0.5 0.0))
  (swap-buffers))

(initialize-glut #:window-size '(320 . 200)
                 #:display-mode (display-mode rgb double depth))

(define main-window (make-window "glut"))

(set-display-callback render-scene)
(glut-main-loop)
