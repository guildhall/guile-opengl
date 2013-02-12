;;; figl
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
;; OpenGL Utility Library (GLUT) binding.
;;
;;; Code:

(define-module (figl glut)
  #:use-module (figl contrib)
  #:use-module (figl glut runtime)
  #:use-module ((figl glut low-level) #:renamer (symbol-prefix-proc '%))
  #:use-module (figl glut enums)
  #:use-module (system foreign)
  #:use-module (srfi srfi-9)
  #:use-module (srfi srfi-39)) ; parameter objects

(module-use! (module-public-interface (current-module))
             (resolve-interface '(figl glut enums)))

;;;
;;; 2 Initialization
;;;

(define (set-initial-window-position position)
  (%glutInitWindowPosition (car position) (cdr position)))

(define (set-initial-window-size size)
  (%glutInitWindowSize (car size) (cdr size)))

(export set-initial-window-position
        set-initial-window-size)

(re-export (%glutInitDisplayMode . set-initial-display-mode))

(define glut-init? #f)

(define saved-c-strings '())

;; Note the use of 'saved-c-strings' to keep a reference to all of the
;; C string buffers that we ever pass to 'glutInit'. This is important
;; because the glut docs specify that 'glutInit' wants the original
;; unmodified 'argv' passed to 'main', which means that it can assume
;; that the strings will never be freed. 'string->pointer' returns a C
;; string buffer managed by the garbage collector, which means that
;; the string may be freed unless the GC can see a pointer to the
;; _beginning_ of the string.

(define* (initialize-glut #:optional (args (program-arguments))
                          #:key window-position window-size display-mode)
  (when glut-init?
    (error "GLUT already initialized"))

  (when window-position
    (%glutInitWindowPosition (car window-position) (cdr window-position)))

  (when window-size
    (%glutInitWindowSize (car window-size) (cdr window-size)))

  (when display-mode
    (%glutInitDisplayMode display-mode))

  (let* ((num-args (length args))
         (c-strings (map string->pointer args))
         (argcp (make-c-struct (list int)
                               (list num-args)))
         (argv (make-c-struct (make-list (+ 1 num-args) '*)
                              (append c-strings (list %null-pointer)))))
    (set! saved-c-strings (append c-strings saved-c-strings))
    (%glutInit argcp argv)
    (set! glut-init? #t)
    (let ((argc (car (parse-c-struct argcp (list int)))))
      (map pointer->string
           (parse-c-struct argv
                           (make-list argc '*))))))

(add-hook! *resolve-hook*
           (lambda (name)
             (unless (or glut-init? (string-prefix? "glutInit" name))
               (initialize-glut))))

(export initialize-glut)


;;;
;;; 3 Beginning Event Processing
;;;

(re-export (%glutMainLoop . glut-main-loop))


;;;
;;; 4 Window Management
;;;

;; Garbage collected windows are not automatically destroyed.  Permit
;; them to continue living inside GLUT.

(define-record-type window
  (%%make-window id live?)
  window?
  (id window-id)
  (live? window-live? set-window-live?!))

(define (assert-live-window! window)
  (unless (window-live? window)
    (error "window already destroyed" window)))

(define (top-level-window? window)
  (not (window-parent window)))

(define (sub-window? window)
  (and (window-parent window)
       #t))

(define (assert-top-level-window! window)
  (unless (top-level-window? window)
    (error "not a top-level window" window)))

;; Memoized so state requests can return the same object.
(define %make-window (memoize %%make-window))

(define (make-window str)
  (let ((id (%glutCreateWindow str)))
    (%make-window id #t)))

(define (make-sub-window window x y width height)
  (let ((id (%glutCreateSubWindow (window-id window) x y width height)))
    (%make-window id #t)))

(define (current-window)
  (let ((ret (%glutGetWindow)))
    (and (not (zero? ret))
         (%make-window ret #t))))

(define (set-current-window window)
  (assert-live-window! window)
  (let ((old (current-window)))
    (%glutSetWindow (window-id window))
    old))

(define (destroy-window window)
  (set-window-live?! window #f)
  ;; TODO: Also mark sub-windows.
  (%glutDestroyWindow (window-id window)))

;; A short detour for some syntax forms, then most window procedures
;; operate on /either/ current-window or a specified window.

(define (with-window* window thunk)
  (let* ((swap-windows (lambda ()
                         (set! window (set-current-window window)))))
    (dynamic-wind swap-windows thunk swap-windows)))

;; emacs: (put 'with-window 'scheme-indent-function 1)
(define-syntax with-window
  (syntax-rules ()
    ((_ window body1 body2 ...)
     (with-window* window (lambda () body1 body2 ...)))))

;; emacs: (put 'maybe-with-window 'scheme-indent-function 1)
(define-syntax maybe-with-window
  (syntax-rules ()
    ((_ window body1 body2 ...)
     (if (eqv? window #t) ; use current-window
         (begin
           body1 body2 ...)
         (with-window window
           (assert-live-window! window)
           body1 body2 ...)))))

(export with-window*)

(export-syntax with-window)

;; TODO: These post requests, and do not update the window parameters
;; immediately.  Otherwise, names like set-window-position! may be
;; more appropriate on the Scheme side.

(define (position-window window x y)
  (maybe-with-window window
    (%glutPositionWindow x y)))

(define (reshape-window window width height)
  (maybe-with-window window
    (%glutReshapeWindow width height)))

(define* (post-redisplay #:optional (window #t))
  (maybe-with-window window
    (%glutPostRedisplay)))

(define* (swap-buffers #:optional (window #t))
  (maybe-with-window window
    (%glutSwapBuffers)))

(define (full-screen window full-screen?)
  (if full-screen?
      (maybe-with-window window
        (%glutFullScreen))
      (error "leaving full-screen not supported")))

(define* (show-window #:optional (window #t))
  (maybe-with-window window
    (%glutShowWindow)))

(define* (hide-window #:optional (window #t))
  (maybe-with-window window
    (%glutHideWindow)))

(define* (iconify-window #:optional (window #t))
  (maybe-with-window window
    (%glutIconifyWindow)))

(define (set-window-title! window str)
  (assert-top-level-window! (if (eqv? window #t)
                                (current-window)
                                window))
  (maybe-with-window window
    (%glutSetWindowTitle str)))

(define (set-window-icon-title! window str)
  (assert-top-level-window! (if (eqv? window #t)
                                (current-window)
                                window))
  (maybe-with-window window
    (%glutSetIconTitle str)))

(define (set-window-cursor! window cursor)
  (maybe-with-window window
    (%glutSetCursor cursor)))

(export window?
        window-id
        top-level-window?
        sub-window?
        window-live?
        make-window
        make-sub-window
        current-window
        set-current-window
        destroy-window
        position-window
        reshape-window
        post-redisplay
        swap-buffers
        full-screen
        show-window
        hide-window
        iconify-window
        set-window-title!
        set-window-icon-title!
        set-window-cursor!)

(re-export (%glutPopWindow . pop-window)
           (%glutPushWindow . push-window))


;;;
;;; 7 Callback Registration
;;;

(re-export (%glutDisplayFunc . set-display-callback)
           (%glutOverlayDisplayFunc . set-overlay-display-callback)
           (%glutReshapeFunc . set-reshape-callback)
           (%glutKeyboardFunc . set-keyboard-callback)
           (%glutMouseFunc . set-mouse-callback)
           (%glutMotionFunc . set-motion-callback)
           (%glutPassiveMotionFunc . set-passive-motion-callback)
           (%glutVisibilityFunc . set-visibility-callback)
           (%glutEntryFunc . set-entry-callback)
           (%glutSpecialFunc . set-special-callback)
           (%glutSpaceballMotionFunc . set-spaceball-motion-callback)
           (%glutSpaceballRotateFunc . set-spaceball-rotate-callback)
           (%glutSpaceballButtonFunc . set-spaceball-button-callback)
           (%glutButtonBoxFunc . set-button-box-callback)
           (%glutDialsFunc . set-dials-callback)
           (%glutTabletMotionFunc . set-tablet-motion-callback)
           (%glutTabletButtonFunc . set-tablet-button-callback)
           (%glutMenuStatusFunc . set-menu-status-callback)
           (%glutIdleFunc . set-idle-callback))


;;;
;;; 9 State Retrieval
;;;

;;;
;;; 9.1 glutGet
;;;

(define (window-x width)
  (maybe-with-window window
    (%glutGet (glut-state window-x))))

(define (window-y width)
  (maybe-with-window window
    (%glutGet (glut-state window-y))))

(define (window-position window)
  (maybe-with-window window
    (cons (window-x #t)
          (window-y #t))))

(define (window-width width)
  (maybe-with-window window
    (%glutGet (glut-state window-width))))

(define (window-height width)
  (maybe-with-window window
    (%glutGet (glut-state window-height))))

(define (window-size window)
  (maybe-with-window window
    (cons (window-width #t)
          (window-height #t))))

(define (window-color-buffer-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-buffer-size))))

(define (window-stencil-buffer-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-stencil-size))))

(define (window-depth-buffer-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-depth-size))))

(define (window-red-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-red-size))))

(define (window-green-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-green-size))))

(define (window-blue-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-blue-size))))

(define (window-alpha-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-alpha-size))))

;; TODO: window-accum

(define (window-rgba? window)
  (maybe-with-window window
    (eqv? (%glutGet (glut-state window-rgba))
          1)))

(define (window-double-buffered? window)
  (maybe-with-window window
    (eqv? (%glutGet (glut-state window-doublebuffer))
          1)))

(define (window-parent window)
  (maybe-with-window window
    (let ((ret (%glutGet (glut-state window-parent))))
      (and (not (zero? ret))
           (%make-window ret #t)))))

(define (window-number-of-children window)
  (maybe-with-window window
    (%glutGet (glut-state window-num-children))))

(define (window-colormap-size window)
  (maybe-with-window window
    (%glutGet (glut-state window-colormap-size))))

(define (window-number-of-samples window)
  (maybe-with-window window
    (%glutGet (glut-state window-num-samples))))

(define (window-stereo? window)
  (maybe-with-window window
    (eqv? (%glutGet (glut-state window-stereo))
          1)))

;; TODO: window-cursor

(export window-x
        window-y
        window-position
        window-width
        window-height
        window-size
        window-color-buffer-size
        window-stencil-buffer-size
        window-depth-buffer-size
        window-red-size
        window-green-size
        window-blue-size
        window-alpha-size
        window-rgba
        window-double-buffered?
        window-parent
        window-number-of-children
        window-colormap-size
        window-number-of-samples
        window-stereo?)

(define (screen-width)
  (let ((ret (%glutGet (glut-state screen-width))))
    (and (not (zero? ret))
         ret)))

(define (screen-height)
  (let ((ret (%glutGet (glut-state screen-height))))
    (and (not (zero? ret))
         ret)))

(define (screen-size)
  (and (screen-width)
       (cons (screen-width)
             (screen-height))))

(define (screen-width-mm)
  (let ((ret (%glutGet (glut-state screen-width-mm))))
    (and (not (zero? ret))
         ret)))

(define (screen-height-mm)
  (let ((ret (%glutGet (glut-state screen-height-mm))))
    (and (not (zero? ret))
         ret)))

(define (screen-size-mm)
  (and (screen-width-mm)
       (cons (screen-width-mm)
             (screen-height-mm))))

(export screen-width
        screen-height
        screen-size
        screen-width-mm
        screen-height-mm
        screen-size-mm)

;; TODO: menu-number-of-items

(define (display-mode-possible?)
  (eqv? (%glutGet (glut-state display-mode-possible))
        1))

(define (initial-display-mode)
  (%glutGet (glut-state init-display-mode)))

(define (initial-window-x)
  (%glutGet (glut-state init-window-x)))

(define (initial-window-y)
  (%glutGet (glut-state init-window-y)))

(define (initial-window-position)
  (cons (initial-window-x)
        (initial-window-y)))

(define (initial-window-width)
  (%glutGet (glut-state init-window-width)))

(define (initial-window-height)
  (%glutGet (glut-state init-window-height)))

(define (initial-window-size)
  (cons (initial-window-width)
        (initial-window-height)))

(define (elapsed-time)
  (%glutGet (glut-state elapsed-time)))

(export display-mode-possible?
        initial-display-mode
        initial-window-x
        initial-window-y
        initial-window-position
        initial-window-width
        initial-window-height
        initial-window-size
        elapsed-time)
