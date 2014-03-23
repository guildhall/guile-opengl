#!/usr/bin/env guile
!#

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
;; This is the null OpenGL program.  Run as guile --listen
;; null-program.scm to build it out at runtime.
;;
;;; Code:

(use-modules (glut) (gl))

(define main-window #f)

(define accumulate-fps!
  (let ((frame-count 0)
        (last-time (get-internal-real-time))
        (last-frame-count 0))
    (lambda ()
      (let ((now (get-internal-real-time)))
        (set! frame-count (1+ frame-count))
        (when (> (- now last-time)
                 (* 2 internal-time-units-per-second))
          (format (current-error-port)
                  ";;; fps: ~a\n"
                  (/ (- frame-count last-frame-count)
                     (/ (- now last-time)
                        (exact->inexact internal-time-units-per-second))))
          (set! last-frame-count frame-count)
          (set! last-time now))))))

(define (on-display)
  (accumulate-fps!)
  (gl-clear (clear-buffer-mask color-buffer depth-buffer))

  ;; Draw here!

  ;; With double-buffering, swap-buffers will wait for the frame rate.
  (swap-buffers))

(define (on-reshape width height)
  (pk 'reshape width height))

(define (on-keyboard keycode x y)
  (let ((c (integer->char keycode)))
    (case c
      ((#\esc #\etx #\q)
       (format #t "~s pressed; quitting.\n" c)
       (exit))
      (else
       (pk 'keyboard c x y)))))

;; Like keyboard, but for special keys.
(define (on-special keycode x y)
  (pk 'special keycode x y))

(define (on-mouse button state x y)
  (pk 'mouse button state x y))

;; Called when a button is down.  Set a passive-motion-callback if you
;; want motion when no button is down.
(define (on-motion x y)
  (pk 'motion x y))

(define (on-visibility visible?)
  (pk 'visible visible?))

(define (on-idle)
  ;; Update the world here!

  (post-redisplay main-window))

(define (main args)
  (initialize-glut args
                   #:window-size '(320 . 200)
                   #:display-mode (display-mode rgb double depth))
  (set! main-window (make-window "glut"))
  ;; The trampolines allow the handlers to be overridden at runtime by
  ;; an attached Guile REPL client.
  (set-display-callback (lambda () (on-display)))
  (set-reshape-callback (lambda (w h) (on-reshape w h)))
  (set-keyboard-callback (lambda (k x y) (on-keyboard k x y)))
  (set-special-callback (lambda (k x y) (on-special k x y)))
  (set-mouse-callback (lambda (b s x y) (on-mouse b s x y)))
  (set-motion-callback (lambda (x y) (on-motion x y)))
  (set-visibility-callback (lambda (visible?) (on-visibility visible?)))
  (set-idle-callback (lambda () (on-idle)))
  (glut-main-loop))

(when (batch-mode?)
  (exit (main (program-arguments))))
