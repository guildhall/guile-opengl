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
;; These bindings are direct mappings to the OpenGL Utility Library
;; (GLUT) Programming Interface, API Version 3.
;;
;; Care should be taken to avoid errors as GLUT implementations may
;; exit() on error condition.  See section 14.3 of the specification.
;;
;;; Code:

(define-module (figl glut low-level)
  #:use-module (figl runtime)
  #:use-module (figl gl types)
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

(define libglut (dynamic-link "libglut"))

(define (glut-resolver name)
  (dynamic-pointer name libglut))

(current-resolver glut-resolver)

(define-simple-foreign-type int ffi:int)
(define-simple-foreign-type unsigned-int ffi:unsigned-int)

;; GLUT specifies that all strings are ASCII encoded.
(define-foreign-type char-* '*
  (cut ffi:string->pointer <> "ASCII")
  (cut ffi:pointer->string <> -1 "ASCII"))

(define-simple-foreign-type int-* '*)
(define-simple-foreign-type char-** '*)

;;;
;;; 2 Initialization
;;;

(define-foreign-procedure
  (glutInit (argcp int-*) (argv char-**) -> void)
  #f)

(define-foreign-procedure
  (glutInitWindowPosition (x int) (y int) -> void)
  #f)

(define-foreign-procedure
  (glutInitWindowSize (width int) (height int) -> void)
  #f)

(define-foreign-procedure
  (glutInitDisplayMode (mode unsigned-int) -> void)
  #f)

;;;
;;; 3 Begin Event Processing
;;;

(define-foreign-procedure
  (glutMainLoop -> void)
  #f)

;;;
;;; 4 Window Management
;;;

(define-foreign-procedure
  (glutCreateWindow (name char-*) -> int)
  #f)

(define-foreign-procedure
  (glutCreateSubWindow (win int)
                       (x int)
                       (y int)
                       (width int)
                       (height int)
                       ->
                       int)
  #f)

(define-foreign-procedure
  (glutSetWindow (win int) -> void)
  #f)

(define-foreign-procedure
  (glutGetWindow -> int)
  #f)

(define-foreign-procedure
  (glutDestroyWindow (win int) -> void)
  #f)

(define-foreign-procedure
  (glutPostRedisplay -> void)
  #f)

(define-foreign-procedure
  (glutSwapBuffers -> void)
  #f)

(define-foreign-procedure
  (glutPositionWindow (x int) (y int) -> void)
  #f)

(define-foreign-procedure
  (glutReshapeWindow (width int) (height int) -> void)
  #f)

(define-foreign-procedure
  (glutFullScreen -> void)
  #f)

(define-foreign-procedure
  (glutPopWindow -> void)
  #f)

(define-foreign-procedure
  (glutPushWindow -> void)
  #f)

(define-foreign-procedure
  (glutShowWindow -> void)
  #f)

(define-foreign-procedure
  (glutHideWindow -> void)
  #f)

(define-foreign-procedure
  (glutIconifyWindow -> void)
  #f)

(define-foreign-procedure
  (glutSetWindowTitle (name char-*) -> void)
  #f)

(define-foreign-procedure
  (glutSetIconTitle (name char-*) -> void)
  #f)

(define-foreign-procedure
  (glutSetCursor (cursor int) -> void)
  #f)


;;;
;;; 5 Overlay Management
;;;

(define-foreign-procedure
  (glutEstablishOverlay -> void)
  #f)

(define-foreign-procedure
  (glutUseLayer (layer GLenum) -> void)
  #f)

(define-foreign-procedure
  (glutRemoveOverlay -> void)
  #f)

(define-foreign-procedure
  (glutPostOverlayRedisplay -> void)
  #f)

(define-foreign-procedure
  (glutShowOverlay -> void)
  #f)

(define-foreign-procedure
  (glutHideOverlay -> void)
  #f)


;;;
;;; 6 Menu Management
;;;

(define-foreign-procedure
  (glutCreateMenu (func void-*) -> int)
  #f)

(define-foreign-procedure
  (glutSetMenu (menu int) -> void)
  #f)

(define-foreign-procedure
  (glutGetMenu -> int)
  #f)

(define-foreign-procedure
  (glutDestroyMenu (menu int) -> void)
  #f)

(define-foreign-procedure
  (glutAddMenuEntry (name char-*) (value int) -> void)
  #f)

(define-foreign-procedure
  (glutAddSubMenu (name char-*) (menu int) -> void)
  #f)

(define-foreign-procedure
  (glutChangeToMenuEntry (entry int)
                         (name char-*)
                         (value int)
                         ->
                         void)
  #f)

(define-foreign-procedure
  (glutChangeToSubMenu (entry int)
                       (name char-*)
                       (menu int)
                       ->
                       void)
  #f)

(define-foreign-procedure
  (glutRemoveMenuItem (entry int) -> void)
  #f)

(define-foreign-procedure
  (glutAttachMenu (button int) -> void)
  #f)

(define-foreign-procedure
  (glutDetachMenu (button int) -> void)
  #f)


;;;
;;; 7 Callback Registration
;;;

(define-foreign-procedure
  (glutDisplayFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutOverlayDisplayFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutReshapeFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutKeyboardFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutMouseFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutMotionFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutPassiveMotionFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutVisibilityFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutEntryFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutSpecialFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutSpaceballMotionFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutSpaceballRotateFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutSpaceballButtonFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutButtonBoxFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutDialsFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutTabletMotionFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutTabletButtonFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutMenuStatusFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutMenuStateFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutIdleFunc (func void-*) -> void)
  #f)

(define-foreign-procedure
  (glutTimerFunc (msecs unsigned-int)
                 (func void-*)
                 (value int)
                 ->
                 void)
  #f)


;;;
;;; 8 Color Index Colormap Management
;;;

(define-foreign-procedure
  (glutSetColor (cell int)
                (red GLfloat)
                (green GLfloat)
                (blue GLfloat)
                ->
                void)
  #f)

(define-foreign-procedure
  (glutGetColor (cell int) (component int) -> GLfloat)
  #f)

(define-foreign-procedure
  (glutCopyColormap (win int) -> void)
  #f)

;;;
;;; 9 State Retrieval
;;;

(define-foreign-procedure
  (glutGet (state GLenum) -> int)
  #f)

(define-foreign-procedure
  (glutLayerGet (info GLenum) -> int)
  #f)

(define-foreign-procedure
  (glutDeviceGet (info GLenum) -> int)
  #f)

(define-foreign-procedure
  (glutGetModifiers -> int)
  #f)

(define-foreign-procedure
  (glutExtensionSupported (extension char-*) -> int)
  #f)

;;;
;;; 10 Font Rendering
;;;

(define-foreign-procedure
  (glutBitmapCharacter (font void-*) (character int) -> void)
  #f)

(define-foreign-procedure
  (glutBitmapWidth (font void-*) (character int) -> int)
  #f)

(define-foreign-procedure
  (glutStrokeCharacter (font void-*) (character int) -> void)
  #f)

(define-foreign-procedure
  (glutStrokeWidth (font void-*) (character int) -> void)
  #f)


;;;
;;; 11 Geometric Object Rendering
;;;

(define-foreign-procedure
  (glutSolidSphere (radius GLdouble)
                   (slices GLint)
                   (stacks GLint)
                   ->
                   void)
  #f)

(define-foreign-procedure
  (glutWireSphere (radius GLdouble)
                  (slices GLint)
                  (stacks GLint)
                  ->
                  void)
  #f)

(define-foreign-procedure
  (glutSolidCube (size GLdouble) -> void)
  #f)

(define-foreign-procedure
  (glutWireCube (size GLdouble) -> void)
  #f)

(define-foreign-procedure
  (glutSolidCone (base GLdouble)
                 (height GLdouble)
                 (slices GLint)
                 (stacks GLint)
                 ->
                 void)
  #f)

(define-foreign-procedure
  (glutWireCone (base GLdouble)
                (height GLdouble)
                (slices GLint)
                (stacks GLint)
                ->
                void)
  #f)

(define-foreign-procedure
  (glutSolidTorus (inner-radius GLdouble)
                  (outer-radius GLdouble)
                  (sides GLint)
                  (rings GLint)
                  ->
                  void)
  #f)

(define-foreign-procedure
  (glutWireTorus (inner-radius GLdouble)
                 (outer-radius GLdouble)
                 (sides GLint)
                 (rings GLint)
                 ->
                 void)
  #f)

(define-foreign-procedure
  (glutSolidDodecahedron -> void)
  #f)

(define-foreign-procedure
  (glutWireDodecahedron -> void)
  #f)

(define-foreign-procedure
  (glutSolidOctahedron -> void)
  #f)

(define-foreign-procedure
  (glutWireOctahedron -> void)
  #f)

(define-foreign-procedure
  (glutSolidTetrahedron -> void)
  #f)

(define-foreign-procedure
  (glutWireTetrahedron -> void)
  #f)

(define-foreign-procedure
  (glutSolidIcosahedron -> void)
  #f)

(define-foreign-procedure
  (glutWireIcosahedron -> void)
  #f)

(define-foreign-procedure
  (glutSolidTeapot (size GLdouble) -> void)
  #f)

(define-foreign-procedure
  (glutWireTeapot (size GLdouble) -> void)
  #f)
