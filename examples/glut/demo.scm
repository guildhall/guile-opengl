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
  (glutSwapBuffers))

(glutInitWindowSize 320 200)
(glutInitDisplayMode (display-mode rgb double depth))

(glut-init (program-arguments))

(define main-window (glutCreateWindow "glut"))

(glutDisplayFunc (procedure->pointer void render-scene (list)))
(glutMainLoop)
