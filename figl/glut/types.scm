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
;; Mappings from GLUT to FFI types.
;;
;;; Code:

(define-module (figl glut types)
  #:use-module (figl runtime)
  #:use-module (figl gl types)
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

(define (coerce-callback-pointer x return-type arg-types)
  (cond
   ((ffi:pointer? x)
    x)
   ((procedure? x)
    (ffi:procedure->pointer return-type x arg-types))
   (else
    (error "unhandled callback-pointer type" x))))

(define-syntax define-callback-pointer-type
  (syntax-rules (->)
    ((_ name ((pname ptype) ... -> type))
     (define-foreign-type name '*
       (cute coerce-callback-pointer <> (type) (list (ptype) ...))
       (lambda (x) x)))))

;; TODO: These callback-pointer types are not used at, as it is not
;; clear how to efficiently keep the pointers alive.  Defined now
;; anyway as a stub, and users can access them if they keep the
;; pointer alive themselves.

(define-callback-pointer-type display-callback-*
  (-> void))
(define-callback-pointer-type overlay-display-callback-*
  (-> void))
(define-callback-pointer-type reshape-callback-*
  ((width int) (height int) -> void))
(define-callback-pointer-type keyboard-callback-*
  ((key unsigned-char) (x int) (y int) -> void))
(define-callback-pointer-type mouse-callback-*
  ((button int) (state int) (x int) (y int) -> void))
(define-callback-pointer-type motion-callback-*
  ((x int) (y int) -> void))
(define-callback-pointer-type passive-motion-callback-*
  ((x int) (y int) -> void))
(define-callback-pointer-type visibility-callback-*
  ((state int) -> void))
(define-callback-pointer-type entry-callback-*
  ((state int) -> void))
(define-callback-pointer-type special-callback-*
  ((key int) (x int) (y int) -> void))
(define-callback-pointer-type spaceball-motion-callback-*
  ((x int) (y int) (z int) -> void))
(define-callback-pointer-type spaceball-rotate-callback-*
  ((x int) (y int) (z int) -> void))
(define-callback-pointer-type spaceball-button-callback-*
  ((button int) (state int) -> void))
(define-callback-pointer-type button-box-callback-*
  ((button int) (state int) -> void))
(define-callback-pointer-type dials-callback-*
  ((dial int) (value int) -> void))
(define-callback-pointer-type tablet-motion-callback-*
  ((x int) (y int) -> void))
(define-callback-pointer-type tablet-button-callback-*
  ((button int) (state int) (x int) (y int) -> void))
(define-callback-pointer-type menu-status-callback-*
  ((status int) (x int) (y int) -> void))
(define-callback-pointer-type idle-callback-*
  (-> void))
(define-callback-pointer-type timer-callback-*
  ((value int) -> void))
