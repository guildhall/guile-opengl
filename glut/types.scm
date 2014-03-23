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
;; Mappings from GLUT to FFI types.
;;
;;; Code:

(define-module (glut types)
  #:use-module (gl runtime)
  #:use-module (gl types)
  #:use-module ((system foreign) #:renamer (symbol-prefix-proc 'ffi:))
  #:use-module (srfi srfi-26) ; cut
  #:export (unsigned-char
            int
            unsigned-int
            char-*
            int-*
            char-**

            display-callback-*
            overlay-display-callback-*
            reshape-callback-*
            keyboard-callback-*
            mouse-callback-*
            motion-callback-*
            passive-motion-callback-*
            visibility-callback-*
            entry-callback-*
            special-callback-*
            spaceball-motion-callback-*
            spaceball-rotate-callback-*
            spaceball-button-callback-*
            button-box-callback-*
            dials-callback-*
            tablet-motion-callback-*
            tablet-button-callback-*
            menu-status-callback-*
            idle-callback-*
            timer-callback-*))

(define-simple-foreign-type unsigned-char ffi:uint8)
(define-simple-foreign-type int ffi:int)
(define-simple-foreign-type unsigned-int ffi:unsigned-int)

;; GLUT specifies that all strings are ASCII encoded.
(define-foreign-type char-* '*
  (cut ffi:string->pointer <> "ASCII")
  (cut ffi:pointer->string <> -1 "ASCII"))

(define-simple-foreign-type int-* '*)
(define-simple-foreign-type char-** '*)

;; Callbacks are either "ephemeral" or "sticky".  Ephemeral callbacks
;; are only called once, and are protected between the time they are
;; wrapped and the time they are called.  Sticky callbacks can be called
;; multiple times, and are protected for all time.  Perhaps we should
;; allow sticky callbacks to be unprotected at some time, but it
;; probably doesn't matter.

(define *gc-protected* '())

(define (gc-protect! proc)
  (set! *gc-protected* (cons proc *gc-protected*)))

(define (gc-unprotect! proc)
  (set! *gc-protected* (delq! proc *gc-protected*)))

(define (coerce-callback-pointer/ephemeral x return-type arg-types)
  (cond
   ((not x)
    ffi:%null-pointer)
   ((ffi:pointer? x)
    x)
   ((procedure? x)
    (letrec ((ptr (ffi:procedure->pointer return-type
                                          (lambda args
                                            (gc-unprotect! ptr)
                                            (apply x args))
                                          arg-types)))
      (gc-protect! ptr)
      ptr))
   (else
    (error "unhandled callback-pointer type" x))))

(define (coerce-callback-pointer/sticky x return-type arg-types)
  (cond
   ((not x)
    ffi:%null-pointer)
   ((ffi:pointer? x)
    x)
   ((procedure? x)
    (let ((ptr (ffi:procedure->pointer return-type x arg-types)))
      (gc-protect! ptr)
      ptr))
   (else
    (error "unhandled callback-pointer type" x))))

(define-syntax define-ephemeral-callback-pointer-type
  (syntax-rules (->)
    ((_ name ((pname ptype) ... -> type))
     (define-foreign-type name '*
       (cute coerce-callback-pointer/ephemeral <> (type) (list (ptype) ...))
       (lambda (x) x)))))

(define-syntax define-sticky-callback-pointer-type
  (syntax-rules (->)
    ((_ name ((pname ptype) ... -> type))
     (define-foreign-type name '*
       (cute coerce-callback-pointer/sticky <> (type) (list (ptype) ...))
       (lambda (x) x)))))

(define-sticky-callback-pointer-type display-callback-*
  (-> void))
(define-sticky-callback-pointer-type overlay-display-callback-*
  (-> void))
(define-sticky-callback-pointer-type reshape-callback-*
  ((width int) (height int) -> void))
(define-sticky-callback-pointer-type keyboard-callback-*
  ((key unsigned-char) (x int) (y int) -> void))
(define-sticky-callback-pointer-type mouse-callback-*
  ((button int) (state int) (x int) (y int) -> void))
(define-sticky-callback-pointer-type motion-callback-*
  ((x int) (y int) -> void))
(define-sticky-callback-pointer-type passive-motion-callback-*
  ((x int) (y int) -> void))
(define-sticky-callback-pointer-type visibility-callback-*
  ((state int) -> void))
(define-sticky-callback-pointer-type entry-callback-*
  ((state int) -> void))
(define-sticky-callback-pointer-type special-callback-*
  ((key int) (x int) (y int) -> void))
(define-sticky-callback-pointer-type spaceball-motion-callback-*
  ((x int) (y int) (z int) -> void))
(define-sticky-callback-pointer-type spaceball-rotate-callback-*
  ((x int) (y int) (z int) -> void))
(define-sticky-callback-pointer-type spaceball-button-callback-*
  ((button int) (state int) -> void))
(define-sticky-callback-pointer-type button-box-callback-*
  ((button int) (state int) -> void))
(define-sticky-callback-pointer-type dials-callback-*
  ((dial int) (value int) -> void))
(define-sticky-callback-pointer-type tablet-motion-callback-*
  ((x int) (y int) -> void))
(define-sticky-callback-pointer-type tablet-button-callback-*
  ((button int) (state int) (x int) (y int) -> void))
(define-sticky-callback-pointer-type menu-status-callback-*
  ((status int) (x int) (y int) -> void))
(define-sticky-callback-pointer-type idle-callback-*
  (-> void))

(define-ephemeral-callback-pointer-type timer-callback-*
  ((value int) -> void))
