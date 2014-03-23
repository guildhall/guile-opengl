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
;; Derived from the values listed in the OpenGL Utility Toolkit (GLUT)
;; Programming Inferface, API Version 3.
;;
;;; Code:

(define-module (glut enums)
  #:use-module (gl runtime)
  #:export (display-mode
            button-name
            button-state
            special-key
            entry-state
            menu-status
            visibility-state
            color-component
            layer-name
            glut-state
            device-info
            layer-info
            modifiers
            cursor-name))

(define-bitfield
  display-mode
  (rgb 0)
  (rgba 0)
  (index 1)
  (single 0)
  (double 2)
  (accum 4)
  (alpha 8)
  (depth 16)
  (stencil 32)
  (multisample 128)
  (stereo 256)
  (luminance 512))

(define-enumeration
  button-name
  (left-button 0)
  (middle-button 1)
  (right-button 2))

(define-enumeration
  button-state
  (down 0)
  (up 1))

(define-enumeration
  special-key
  ;; function keys
  (key-f1 1)
  (key-f2 2)
  (key-f3 3)
  (key-f4 4)
  (key-f5 5)
  (key-f6 6)
  (key-f7 7)
  (key-f8 8)
  (key-f9 9)
  (key-f10 10)
  (key-f11 11)
  (key-f12 12)
  ;; directional keys
  (key-left 100)
  (key-up 101)
  (key-right 102)
  (key-down 103)
  (key-page-up 104)
  (key-page-down 105)
  (key-home 106)
  (key-end 107)
  (key-insert 108))

(define-enumeration
  entry-state
  (left 0)
  (entered 1))

(define-enumeration
  menu-status
  (menu-not-in-use 0)
  (menu-in-use 1))

(define-enumeration
  visibility-state
  (not-visible 0)
  (visible 1))

(define-enumeration
  color-component
  (red 0)
  (green 1)
  (blue 2))

(define-enumeration
  layer-name
  (normal 0)
  (overlay 1))

;; TODO: Fonts.

;; extern void *glutStrokeRoman;
;; extern void *glutStrokeMonoRoman;

;; ;; stroke font constants (use these in GLUT program)
;; #define GLUT_STROKE_ROMAN (&glutStrokeRoman)
;; #define GLUT_STROKE_MONO_ROMAN (&glutStrokeMonoRoman)

;; ;; bitmap font opaque addresses (use constants instead in source code)
;; extern void *glutBitmap9By15;
;; extern void *glutBitmap8By13;
;; extern void *glutBitmapTimesRoman10;
;; extern void *glutBitmapTimesRoman24;
;; extern void *glutBitmapHelvetica10;
;; extern void *glutBitmapHelvetica12;
;; extern void *glutBitmapHelvetica18;

;; ;; bitmap font constants (use these in GLUT program)
;; #define GLUT_BITMAP_9_BY_15 (&glutBitmap9By15)
;; #define GLUT_BITMAP_8_BY_13 (&glutBitmap8By13)
;; #define GLUT_BITMAP_TIMES_ROMAN_10 (&glutBitmapTimesRoman10)
;; #define GLUT_BITMAP_TIMES_ROMAN_24 (&glutBitmapTimesRoman24)
;; #define GLUT_BITMAP_HELVETICA_10 (&glutBitmapHelvetica10)
;; #define GLUT_BITMAP_HELVETICA_12 (&glutBitmapHelvetica12)
;; #define GLUT_BITMAP_HELVETICA_18 (&glutBitmapHelvetica18)

(define-enumeration
  glut-state
  (window-x 100)
  (window-y 101)
  (window-width 102)
  (window-height 103)
  (window-buffer-size 104)
  (window-stencil-size 105)
  (window-depth-size 106)
  (window-red-size 107)
  (window-green-size 108)
  (window-blue-size 109)
  (window-alpha-size 110)
  (window-accum-red-size 111)
  (window-accum-green-size 112)
  (window-accum-blue-size 113)
  (window-accum-alpha-size 114)
  (window-doublebuffer 115)
  (window-rgba 116)
  (window-parent 117)
  (window-num-children 118)
  (window-colormap-size 119)
  (window-num-samples 120)
  (window-stereo 121)
  (window-cursor 122)
  (screen-width 200)
  (screen-height 201)
  (screen-width-mm 202)
  (screen-height-mm 203)
  (menu-num-items 300)
  (display-mode-possible 400)
  (init-window-x 500)
  (init-window-y 501)
  (init-window-width 502)
  (init-window-height 503)
  (init-display-mode 504)
  (elapsed-time 700))

(define-enumeration
  device-info
  (has-keyboard 600)
  (has-mouse 601)
  (has-spaceball 602)
  (has-dial-and-button-box 603)
  (has-tablet 604)
  (num-mouse-buttons 605)
  (num-spaceball-buttons 606)
  (num-button-box-buttons 607)
  (num-dials 608)
  (num-tablet-buttons 609))

(define-enumeration
  layer-info
  (overlay-possible 800)
  (layer-in-use 801)
  (has-overlay 802)
  (transparent-index 803)
  (normal-damaged 804)
  (overlay-damaged 805))

(define-bitfield
  modifiers
  (active-shift 1)
  (active-ctrl 2)
  (active-alt 4))

(define-enumeration
  cursor-name
  ;; Basic arrows
  (cursor-right-arrow 0)
  (cursor-left-arrow 1)
  ;; Symbolic cursor shapees
  (cursor-info 2)
  (cursor-destroy 3)
  (cursor-help 4)
  (cursor-cycle 5)
  (cursor-spray 6)
  (cursor-wait 7)
  (cursor-text 8)
  (cursor-crosshair 9)
  ;; Directional cursors
  (cursor-up-down 10)
  (cursor-left-right 11)
  ;; Sizing cursors
  (cursor-top-side 12)
  (cursor-bottom-side 13)
  (cursor-left-side 14)
  (cursor-right-side 15)
  (cursor-top-left-corner 16)
  (cursor-top-right-corner 17)
  (cursor-bottom-right-corner 18)
  (cursor-bottom-left-corner 19)
  ;; Inherit from parent window
  (cursor-inherit 100)
  ;; Blank cursor
  (cursor-none 101)
  ;; Fullscreen crosshair (if available)
  (cursor-full-crosshair 102))
