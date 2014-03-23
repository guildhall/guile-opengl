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
;; These bindings are direct mappings to the OpenGL Utility Library
;; (GLUT) Programming Interface, API Version 3.
;;
;; Care should be taken to avoid errors as GLUT implementations may
;; exit() on error condition.  See section 14.3 of the specification.
;;
;;; Code:

(define-module (glut low-level)
  #:use-module (glut runtime)
  #:use-module (glut types)
  #:use-module (gl types)
  #:use-module ((system foreign) #:renamer (symbol-prefix-proc 'ffi:))
  #:use-module (srfi srfi-26) ; cut
  #:export (;; 2 Initialization
            glutInit
            glutInitWindowPosition
            glutInitWindowSize
            glutInitDisplayMode

            ;; 3 Begin Event Processing
            glutMainLoop

            ;; 4 Window Management
            glutCreateWindow
            glutCreateSubWindow
            glutSetWindow
            glutGetWindow
            glutDestroyWindow
            glutPostRedisplay
            glutSwapBuffers
            glutPositionWindow
            glutReshapeWindow
            glutFullScreen
            glutPopWindow
            glutPushWindow
            glutShowWindow
            glutHideWindow
            glutIconifyWindow
            glutSetWindowTitle
            glutSetIconTitle
            glutSetCursor

            ;; 5 Overlay Management
            glutEstablishOverlay
            glutUseLayer
            glutRemoveOverlay
            glutPostOverlayRedisplay
            glutShowOverlay
            glutHideOverlay

            ;; 6 Menu Management
            glutCreateMenu
            glutSetMenu
            glutGetMenu
            glutDestroyMenu
            glutAddMenuEntry
            glutAddSubMenu
            glutChangeToMenuEntry
            glutChangeToSubMenu
            glutRemoveMenuItem
            glutAttachMenu
            glutDetachMenu

            ;; 7 Callback Registration
            glutDisplayFunc
            glutOverlayDisplayFunc
            glutReshapeFunc
            glutKeyboardFunc
            glutMouseFunc
            glutMotionFunc
            glutPassiveMotionFunc
            glutVisibilityFunc
            glutEntryFunc
            glutSpecialFunc
            glutSpaceballMotionFunc
            glutSpaceballRotateFunc
            glutSpaceballButtonFunc
            glutButtonBoxFunc
            glutDialsFunc
            glutTabletMotionFunc
            glutTabletButtonFunc
            glutMenuStatusFunc
            glutMenuStateFunc
            glutIdleFunc
            glutTimerFunc

            ;; 8 Color Index Colormap Management
            glutSetColor
            glutGetColor
            glutCopyColormap

            ;; 9 State Retrieval
            glutGet
            glutLayerGet
            glutDeviceGet
            glutGetModifiers
            glutExtensionSupported

            ;; 10 Font Rendering
            glutBitmapCharacter
            glutBitmapWidth
            glutStrokeCharacter
            glutStrokeWidth

            ;; 11 Geometric Object Rendering
            glutSolidSphere
            glutWireSphere
            glutSolidCube
            glutWireCube
            glutSolidCone
            glutWireCone
            glutSolidTorus
            glutWireTorus
            glutSolidDodecahedron
            glutWireDodecahedron
            glutSolidOctahedron
            glutWireOctahedron
            glutSolidTetrahedron
            glutWireTetrahedron
            glutSolidIcosahedron
            glutWireIcosahedron
            glutSolidTeapot
            glutWireTeapot
            ))

;;;
;;; 2 Initialization
;;;

(define-glut-procedure
  (glutInit (argcp int-*) (argv char-**) -> void)
  #f)

(define-glut-procedure
  (glutInitWindowPosition (x int) (y int) -> void)
  #f)

(define-glut-procedure
  (glutInitWindowSize (width int) (height int) -> void)
  #f)

(define-glut-procedure
  (glutInitDisplayMode (mode unsigned-int) -> void)
  #f)

;;;
;;; 3 Begin Event Processing
;;;

(define-glut-procedure
  (glutMainLoop -> void)
  #f)

;;;
;;; 4 Window Management
;;;

(define-glut-procedure
  (glutCreateWindow (name char-*) -> int)
  #f)

(define-glut-procedure
  (glutCreateSubWindow (win int)
                       (x int)
                       (y int)
                       (width int)
                       (height int)
                       ->
                       int)
  #f)

(define-glut-procedure
  (glutSetWindow (win int) -> void)
  #f)

(define-glut-procedure
  (glutGetWindow -> int)
  #f)

(define-glut-procedure
  (glutDestroyWindow (win int) -> void)
  #f)

(define-glut-procedure
  (glutPostRedisplay -> void)
  #f)

(define-glut-procedure
  (glutSwapBuffers -> void)
  #f)

(define-glut-procedure
  (glutPositionWindow (x int) (y int) -> void)
  #f)

(define-glut-procedure
  (glutReshapeWindow (width int) (height int) -> void)
  #f)

(define-glut-procedure
  (glutFullScreen -> void)
  #f)

(define-glut-procedure
  (glutPopWindow -> void)
  #f)

(define-glut-procedure
  (glutPushWindow -> void)
  #f)

(define-glut-procedure
  (glutShowWindow -> void)
  #f)

(define-glut-procedure
  (glutHideWindow -> void)
  #f)

(define-glut-procedure
  (glutIconifyWindow -> void)
  #f)

(define-glut-procedure
  (glutSetWindowTitle (name char-*) -> void)
  #f)

(define-glut-procedure
  (glutSetIconTitle (name char-*) -> void)
  #f)

(define-glut-procedure
  (glutSetCursor (cursor int) -> void)
  #f)


;;;
;;; 5 Overlay Management
;;;

(define-glut-procedure
  (glutEstablishOverlay -> void)
  #f)

(define-glut-procedure
  (glutUseLayer (layer GLenum) -> void)
  #f)

(define-glut-procedure
  (glutRemoveOverlay -> void)
  #f)

(define-glut-procedure
  (glutPostOverlayRedisplay -> void)
  #f)

(define-glut-procedure
  (glutShowOverlay -> void)
  #f)

(define-glut-procedure
  (glutHideOverlay -> void)
  #f)


;;;
;;; 6 Menu Management
;;;

(define-glut-procedure
  (glutCreateMenu (func void-*) -> int)
  #f)

(define-glut-procedure
  (glutSetMenu (menu int) -> void)
  #f)

(define-glut-procedure
  (glutGetMenu -> int)
  #f)

(define-glut-procedure
  (glutDestroyMenu (menu int) -> void)
  #f)

(define-glut-procedure
  (glutAddMenuEntry (name char-*) (value int) -> void)
  #f)

(define-glut-procedure
  (glutAddSubMenu (name char-*) (menu int) -> void)
  #f)

(define-glut-procedure
  (glutChangeToMenuEntry (entry int)
                         (name char-*)
                         (value int)
                         ->
                         void)
  #f)

(define-glut-procedure
  (glutChangeToSubMenu (entry int)
                       (name char-*)
                       (menu int)
                       ->
                       void)
  #f)

(define-glut-procedure
  (glutRemoveMenuItem (entry int) -> void)
  #f)

(define-glut-procedure
  (glutAttachMenu (button int) -> void)
  #f)

(define-glut-procedure
  (glutDetachMenu (button int) -> void)
  #f)


;;;
;;; 7 Callback Registration
;;;

(define-glut-procedure
  (glutDisplayFunc (func display-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutOverlayDisplayFunc (func overlay-display-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutReshapeFunc (func reshape-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutKeyboardFunc (func keyboard-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutMouseFunc (func mouse-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutMotionFunc (func motion-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutPassiveMotionFunc (func passive-motion-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutVisibilityFunc (func visibility-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutEntryFunc (func entry-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutSpecialFunc (func special-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutSpaceballMotionFunc (func spaceball-motion-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutSpaceballRotateFunc (func spaceball-rotate-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutSpaceballButtonFunc (func spaceball-button-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutButtonBoxFunc (func button-box-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutDialsFunc (func dials-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutTabletMotionFunc (func tablet-motion-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutTabletButtonFunc (func tablet-button-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutMenuStatusFunc (func menu-status-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutIdleFunc (func idle-callback-*) -> void)
  #f)

(define-glut-procedure
  (glutTimerFunc (msecs unsigned-int)
                 (func timer-callback-*)
                 (value int)
                 ->
                 void)
  #f)


;;;
;;; 8 Color Index Colormap Management
;;;

(define-glut-procedure
  (glutSetColor (cell int)
                (red GLfloat)
                (green GLfloat)
                (blue GLfloat)
                ->
                void)
  #f)

(define-glut-procedure
  (glutGetColor (cell int) (component int) -> GLfloat)
  #f)

(define-glut-procedure
  (glutCopyColormap (win int) -> void)
  #f)

;;;
;;; 9 State Retrieval
;;;

(define-glut-procedure
  (glutGet (state GLenum) -> int)
  #f)

(define-glut-procedure
  (glutLayerGet (info GLenum) -> int)
  #f)

(define-glut-procedure
  (glutDeviceGet (info GLenum) -> int)
  #f)

(define-glut-procedure
  (glutGetModifiers -> int)
  #f)

(define-glut-procedure
  (glutExtensionSupported (extension char-*) -> int)
  #f)

;;;
;;; 10 Font Rendering
;;;

(define-glut-procedure
  (glutBitmapCharacter (font void-*) (character int) -> void)
  #f)

(define-glut-procedure
  (glutBitmapWidth (font void-*) (character int) -> int)
  #f)

(define-glut-procedure
  (glutStrokeCharacter (font void-*) (character int) -> void)
  #f)

(define-glut-procedure
  (glutStrokeWidth (font void-*) (character int) -> void)
  #f)


;;;
;;; 11 Geometric Object Rendering
;;;

(define-glut-procedure
  (glutSolidSphere (radius GLdouble)
                   (slices GLint)
                   (stacks GLint)
                   ->
                   void)
  #f)

(define-glut-procedure
  (glutWireSphere (radius GLdouble)
                  (slices GLint)
                  (stacks GLint)
                  ->
                  void)
  #f)

(define-glut-procedure
  (glutSolidCube (size GLdouble) -> void)
  #f)

(define-glut-procedure
  (glutWireCube (size GLdouble) -> void)
  #f)

(define-glut-procedure
  (glutSolidCone (base GLdouble)
                 (height GLdouble)
                 (slices GLint)
                 (stacks GLint)
                 ->
                 void)
  #f)

(define-glut-procedure
  (glutWireCone (base GLdouble)
                (height GLdouble)
                (slices GLint)
                (stacks GLint)
                ->
                void)
  #f)

(define-glut-procedure
  (glutSolidTorus (inner-radius GLdouble)
                  (outer-radius GLdouble)
                  (sides GLint)
                  (rings GLint)
                  ->
                  void)
  #f)

(define-glut-procedure
  (glutWireTorus (inner-radius GLdouble)
                 (outer-radius GLdouble)
                 (sides GLint)
                 (rings GLint)
                 ->
                 void)
  #f)

(define-glut-procedure
  (glutSolidDodecahedron -> void)
  #f)

(define-glut-procedure
  (glutWireDodecahedron -> void)
  #f)

(define-glut-procedure
  (glutSolidOctahedron -> void)
  #f)

(define-glut-procedure
  (glutWireOctahedron -> void)
  #f)

(define-glut-procedure
  (glutSolidTetrahedron -> void)
  #f)

(define-glut-procedure
  (glutWireTetrahedron -> void)
  #f)

(define-glut-procedure
  (glutSolidIcosahedron -> void)
  #f)

(define-glut-procedure
  (glutWireIcosahedron -> void)
  #f)

(define-glut-procedure
  (glutSolidTeapot (size GLdouble) -> void)
  #f)

(define-glut-procedure
  (glutWireTeapot (size GLdouble) -> void)
  #f)
