#!/usr/bin/env guile
!#

(use-modules (figl glut low-level)
             (figl glut)
             (figl gl)
             (system foreign))

(define (render-scene)
  (gl-clear (clear-buffer-mask color-buffer depth-buffer))
  (gl-begin (begin-mode triangles)
    (gl-vertex -0.5 -0.5 0.0)
    (gl-vertex 0.5 0.0 0.0)
    (gl-vertex 0.0 0.5 0.0))
  (swap-buffers))

(set-initial-window-size 320 200)
(set-initial-display-mode (display-mode rgb double depth))

(glut-init (program-arguments))

(define main-window (make-window "glut"))

(glutDisplayFunc (procedure->pointer void render-scene (list)))
(glut-main-loop)
