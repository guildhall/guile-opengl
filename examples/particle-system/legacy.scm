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

(use-modules (glut)
             (gl)
             (glu)
             (ice-9 match)
             (ice-9 format)
             (gl contrib packed-struct))

(define-packed-struct zquad
  (r float)
  (g float)
  (b float)

  (x- float)
  (y- float)
  (x+ float)
  (y+ float)

  (z float))

(define-packed-struct position
  (x float)
  (y float)
  (z float)
  (vx float)
  (vy float)
  (vz float))

(define *zquads* (make-packed-array zquad 0))
(define *particles* (make-packed-array position 0))

(define (draw-particles)
  (gl-begin (begin-mode quads)
    (unpack-each/serial *zquads* zquad
                        (lambda (n r g b x- y- x+ y+ z)
                          (gl-color r g b)
                          (gl-vertex x- y- z)
                          (gl-vertex x+ y- z)
                          (gl-vertex x+ y+ z)
                          (gl-vertex x- y+ z)))))

(define (update-quads)
  (unpack-each
   *particles*
   position
   (lambda (n x y z vx vy vz)
     (let ((r (/ (abs vx) 5))
           (g (/ (abs vy) 5))
           (b (/ (abs vz) 5))
           (x- (- x 0.5))
           (y- (- y 0.5))
           (x+ (+ x 0.5))
           (y+ (+ y 0.5)))
       (pack *zquads* n zquad
             r g b x- y- x+ y+ z)))))

(define (update-particles dt)
  (let ((half-dt-squared (* 0.5 dt dt)))
    (repack-each
     *particles*
     position
     (lambda (n x y z vx vy vz)
       (let* ((distance-squared (+ (* x x) (* y y) (* z z)))
              (distance (sqrt distance-squared))
              (F (/ -200 distance-squared))
              (ax (* F (/ x distance)))
              (ay (* F (/ y distance)))
              (az (* F (/ z distance))))
         (values (+ x (* vx dt) (* ax half-dt-squared))
                 (+ y (* vy dt) (* ay half-dt-squared))
                 (+ z (* vz dt) (* az half-dt-squared))
                 (+ vx (* ax dt))
                 (+ vy (* ay dt))
                 (+ vz (* az dt))))))))

(define (prepare-particles n)
  (set! *particles* (make-packed-array position n))
  (set! *zquads* (make-packed-array zquad n))
  (pack-each
   *particles*
   position
   (lambda (n)
     (values
      ;; Position.
      (* (random:normal) 30)
      (* (random:normal) 30)
      (* (random:normal) 30)

      ;; Velocity.
      (* (random:normal) 2)
      (* (random:normal) 2)
      (* (random:normal) 2))))
  (update-quads))

(define main-window #f)

(define (make-fps-accumulator period)
  (let* ((frame-count 0)
         (last-fps-time (get-internal-real-time))
         (last-fps-run-time (get-internal-run-time))
         (last-frame-time (get-internal-real-time))
         (max-frame-time (get-internal-real-time))
         (last-frame-count 0)
         (jiffies-per-sec (exact->inexact internal-time-units-per-second))
         (jiffies-per-ms (/ jiffies-per-sec 1000)))
    (lambda ()
      (let ((now (get-internal-real-time)))
        (set! frame-count (1+ frame-count))
        (when (> (- now last-frame-time) max-frame-time)
          (set! max-frame-time (- now last-frame-time)))
        (set! last-frame-time now)
        (when (> (- now last-fps-time) period)
          (let* ((run (get-internal-run-time))
                 (frames (- frame-count last-frame-count))
                 (secs (/ (- now last-fps-time) jiffies-per-sec))
                 (fps (/ frames secs))
                 (ms-per-frame (/ (* secs 1000) frames))
                 (max-ms-per-frame (/ max-frame-time jiffies-per-ms))
                 (cpu (* 100.0 (/ (- run last-fps-run-time)
                                  (- now last-fps-time)))))
            (format
             (current-error-port)
             ";;; ~a frames in ~,2f sec = ~,2f fps; ~,2f ms/frame, ~,2f ms max; ~,2f% CPU\n"
             frames secs fps ms-per-frame max-ms-per-frame cpu)
            (set! last-frame-count frame-count)
            (set! max-frame-time 0)
            (set! last-fps-time now)
            (set! last-fps-run-time run)))))))

(define accumulate-fps!
  (make-fps-accumulator (* 2 internal-time-units-per-second)))

(define (draw-axis scale)
  ;; Could disable lighting and depth test.
  (gl-begin (begin-mode lines)
    (gl-color 1 0 0)
    (gl-vertex 0 0 0)
    (gl-vertex scale 0 0)

    (gl-color 0 1 0)
    (gl-vertex 0 0 0)
    (gl-vertex 0 scale 0)
        
    (gl-color 0 0 1)
    (gl-vertex 0 0 0)
    (gl-vertex 0 0 scale)))

(define (on-display)
  (accumulate-fps!)
  (gl-clear (clear-buffer-mask color-buffer depth-buffer))

  (draw-axis 10)

  (draw-particles)

  ;; With double-buffering, swap-buffers will wait for the frame to be shown,
  ;; which limits this program to the frame rate.
  (swap-buffers))

(define (on-reshape width height)
  (pk 'reshape! width height)
  (gl-viewport 0 0 width height)

  ;; Projection matrix.
  (set-gl-matrix-mode (matrix-mode projection))
  (gl-load-identity)
  (glu-perspective 60 (/ width height) 0.1 1000))

(define full-screen? #f)
(define running? #t)

(define (on-keyboard keycode x y)
  (let ((c (integer->char keycode)))
    (case c
      ((#\f)
       (set! full-screen? (not full-screen?))
       (full-screen main-window full-screen?))
      ((#\esc #\etx #\q)
       (format #t "~s pressed; quitting.\n" c)
       (exit))
      ((#\+)
       ;; The rotations are a hack to re-orient so that a translation in the Z
       ;; axis will move us towards the origin.
       (gl-rotate -10 1 0 0)
       (gl-translate 0 0 10)
       (gl-rotate 10 1 0 0))
      ((#\-)
       (gl-rotate -10 1 0 0)
       (gl-translate 0 0 -10)
       (gl-rotate 10 1 0 0))
      ((#\space)
       (set! running? (not running?))
       (set-idle-callback (and running? (lambda () (on-idle)))))
      (else
       (pk 'keyboard c x y)))))

(define (on-special keycode x y)
  (pk 'special keycode x y))

(define (on-mouse button state x y)
  (pk 'mouse button state x y))

(define (on-motion x y)
  (pk 'motion x y))

(define (on-visibility visible?)
  (pk 'visible visible?))

(define (on-idle)
  (set-gl-matrix-mode (matrix-mode modelview))
  ;; Rotate the camera 0.05 degree per frame about the Z axis.  At 60 fps that's
  ;; 120 seconds per full rotation.  Rotating about the Z axis keeps all the
  ;; quads facing our way.
  (gl-rotate 0.05 0 0 1)
  (update-particles 0.016)
  (update-quads)
  (post-redisplay main-window))

(define (register-glut-callbacks)
  ;; The trampolines allow the handlers to be overridden at runtime by
  ;; an attached Guile REPL client.
  (set-display-callback (lambda () (on-display)))
  (set-reshape-callback (lambda (w h) (on-reshape w h)))
  (set-keyboard-callback (lambda (k x y) (on-keyboard k x y)))
  (set-special-callback (lambda (k x y) (on-special k x y)))
  (set-mouse-callback (lambda (b s x y) (on-mouse b s x y)))
  (set-motion-callback (lambda (x y) (on-motion x y)))
  (set-visibility-callback (lambda (visible?) (on-visibility visible?)))
  (set-idle-callback (lambda () (on-idle))))

(define (main args)
  (let ((args
         (initialize-glut args
                          #:window-size '(640 . 480)
                          #:display-mode (display-mode rgba alpha double
                                                       depth))))
    (set! main-window (make-window "particle-system"))
    (register-glut-callbacks)
    (set-gl-clear-color 0 0 0 1)
    (set-gl-clear-depth 1)
    (set-gl-shade-model (shading-model smooth))

    ;; Resetting the modelview matrix mode leaves the camera at the origin,
    ;; oriented to look down the Z axis.  Rotate up a bit so that we can see the
    ;; Z axis.
    (set-gl-matrix-mode (matrix-mode modelview))
    (gl-load-identity)
    (gl-translate 0 0 -100)
    (gl-rotate 10 1 0 0)

    (gl-enable (enable-cap depth-test))

    (set! *random-state* (random-state-from-platform))
    (prepare-particles (match args
                         ((_) 1000)
                         ((_ n) (string->number n))))

    (glut-main-loop)))

(when (batch-mode?)
  (exit (main (program-arguments))))
