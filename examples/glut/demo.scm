#!/usr/bin/env guile
!#

(use-modules (figl glut low-level)
             (figl glut)
             (figl gl enums)
             (figl gl low-level)
             (system foreign))

(define GLUT_RGB #x0000)
(define GLUT_RGBA #x0000)
(define GLUT_INDEX #x0001)
(define GLUT_SINGLE #x0000)
(define GLUT_DOUBLE #x0002)
(define GLUT_ACCUM #x0004)
(define GLUT_ALPHA #x0008)
(define GLUT_DEPTH #x0010)
(define GLUT_STENCIL #x0020)
(define GLUT_MULTISAMPLE #x0080)
(define GLUT_STEREO #x0100)
(define GLUT_LUMINANCE #x0200)

(define (render-scene)
  (glClear (attrib-mask color-buffer depth-buffer))
  (glBegin (begin-mode triangles))
  (glVertex3f -0.5 -0.5 0.0)
  (glVertex3f 0.5 0.0 0.0)
  (glVertex3f 0.0 0.5 0.0)
  (glEnd)

  (glutSwapBuffers))

(glutInitWindowSize 320 200)
(glutInitDisplayMode (logior GLUT_RGB GLUT_DOUBLE GLUT_DEPTH))

(glut-init (program-arguments))

(define main-window (glutCreateWindow "glut"))

(glutDisplayFunc (procedure->pointer void render-scene (list)))
(glutMainLoop)
