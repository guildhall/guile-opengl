;;; figl
;;; Copyright (C) 2013 Andy Wingo <wingo@pobox.com>
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
;; figl is the Foreign Interface to GL.
;;
;;; Code:

(define-module (figl low-level support)
  #:use-module (system foreign)
  #:export (current-gl-resolver
            define-gl-procedure
            void))

(define void #f)

(module-use! (module-public-interface (current-module))
             (resolve-interface '(figl low-level types)))

(define (default-foreign-resolver name)
  (dynamic-pointer name (dynamic-link)))

(define current-gl-resolver
  (make-parameter default-foreign-resolver))

(define (resolve-foreign name)
  ((current-gl-resolver) name))

(define-syntax foreign-trampoline
  (lambda (stx)
    (syntax-case stx (->)
      ((_ trampoline
          name (pname ptype) ... -> type)
       (with-syntax ((sname (symbol->string (syntax->datum #'name))))
         #'(lambda (pname ...)
             (let ((ptr (resolve-foreign sname)))
               (set! trampoline
                     (pointer->procedure type
                                         ptr
                                         (list ptype ...)))
               (trampoline pname ...))))))))

(define-syntax define-gl-procedure
  (syntax-rules (->)
    ((define-gl-procedure ((name (pname ptype) ... -> type)
                           ...)
       docstring)
     (begin
       (define name
         (letrec ((trampoline
                   (foreign-trampoline trampoline
                                       name (pname ptype) ... -> type))
                  (name (lambda (pname ...)
                          docstring
                          (trampoline pname ...))))
           name))
       ...))))
