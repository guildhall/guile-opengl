#!/usr/bin/env guile
!#

(use-modules (figl glut enums)
             (figl glut low-level)
             (figl glut)
             (figl gl enums)
             (figl gl low-level)
             (system foreign))

(define (render-scene)
  (glClear (clear-buffer-mask color-buffer depth-buffer))
  (glBegin (begin-mode triangles))
  (glVertex3f -0.5 -0.5 0.0)
  (glVertex3f 0.5 0.0 0.0)
  (glVertex3f 0.0 0.5 0.0)
  (glEnd)

  (glutSwapBuffers))

(glutInitWindowSize 320 200)
(glutInitDisplayMode (display-mode rgb double depth))

(glut-init (program-arguments))

(define main-window (glutCreateWindow "glut"))

(glutDisplayFunc (procedure->pointer void render-scene (list)))
(glutMainLoop)
