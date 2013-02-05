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

(define-module (figl runtime)
  #:use-module (system foreign)
  #:export (define-foreign-procedure
            define-foreign-procedures
            define-foreign-type
            define-simple-foreign-type))

(define-syntax foreign-trampoline
  (syntax-rules (->)
    ((_ trampoline resolve-name (pname ptype) ... -> type)
     (lambda (pname ...)
       (set! trampoline
             (pointer->procedure (type)
                                 resolve-name
                                 (list (ptype) ...)))
       (trampoline pname ...)))))

(define-syntax define-foreign-procedure
  (syntax-rules (->)
    ((define-foreign-procedure (name (pname ptype) ... -> type)
       resolve-name
       docstring)
     (define name
       (letrec ((trampoline
                 (foreign-trampoline trampoline resolve-name
                                     (pname ptype) ... -> type))
                (name (lambda (pname ...)
                        docstring
                        (let ((pname (ptype #:unwrap pname))
                              ...)
                          (type #:wrap (trampoline pname ...))))))
         name)))))

(define-syntax define-foreign-procedures
  (syntax-rules ()
    ((define-foreign-procedures ((name prototype ...) ...)
       resolve-name
       docstring)
     (begin
       (define-foreign-procedure (name prototype ...)
         resolve-name
         docstring)
       ...))))

(define-syntax define-foreign-type
  (syntax-rules ()
    ((_ name ffi-type unwrap wrap)
     (define-syntax name
       (syntax-rules ()
         ((_) ffi-type)
         ((_ #:wrap x) (wrap x))
         ((_ #:unwrap x) (unwrap x)))))))

(define-syntax define-simple-foreign-type
  (syntax-rules ()
    ((_ name ffi-type)
     ;; We could dispatch through to define-foreign-type via:
     ;;
     ;;   (define-foreign-type name
     ;;     ffi-type
     ;;     (lambda (x) x)
     ;;     (lambda (x) x))
     ;;
     ;; However the resulting wrap expression:
     ;;
     ;;   ((lambda (x) x) (trampoline arg ...))
     ;;
     ;; would not be in tail position, as the optimizer doesn't know
     ;; that the foreign function just returns one value.  This hack
     ;; just passes the wrapped expression through, allowing it to be in
     ;; tail position.
     (define-syntax name
       (syntax-rules ()
         ((_) ffi-type)
         ((_ #:wrap x) x)
         ((_ #:unwrap x) x))))))
