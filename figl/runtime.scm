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
  #:export (current-resolver
            define-foreign-procedure
            define-foreign-procedures
            define-foreign-type
            define-simple-foreign-type))

;;
;; OpenGL and loading.  What a mess.  So, in the beginning, when
;; Microsoft added support for OpenGL to Windows, they did so via a
;; trampoline DLL.  This DLL had a fixed number of entry points, and it
;; was independent of the driver that the graphics card provided.  It
;; also provided an extension interface, wglGetProcAddress, which could
;; return additional GL procedures by name.  Microsoft was unwilling to
;; extend their trampoline DLL for whatever reason, and so on Windows
;; you always needed to wglGetProcAddress for almost any OpenGL
;; function.
;;
;; Time passed and GLX and other GL implementations started to want
;; extensions too.  This let application vendors ship applications that
;; could take advantage of the capabilities of users's graphics cards
;; without requiring that they be present.
;;
;; There are a couple of differences between WGL and GLX, however.
;; Chiefly, wglGetProcAddress can only be called once you have a
;; context, and the resulting function can only be used in that context.
;; In practice it seems that it can be used also in other contexts that
;; end up referring to that same driver and GPU.  GLX on the other hand
;; is context-independent, but presence of a function does not mean that
;; the corresponding functionality is actually available.  In theory
;; users have to check for the presence of the GL extension or check the
;; core GL version, depending on whether the interface is an extension
;; or in GL core.
;;
;; Because of this difference between the GLX and WGL semantics, there
;; is no core "glGetProcAddress" function.  It's terrible: each
;; windowing system is responsible for providing their own
;; function-loader interface.
;;
;; Finally, Guile needs to load up at least some interfaces using
;; dynamic-link / dynamic-pointer in order to be able to talk to the
;; library at all (and to open a context in the case of Windows), and it
;; happens that these interfaces also work fine for getting some of the
;; GL functionality!
;;
;; All of this mess really has very little place in the world of free
;; software, where dynamic linking is entirely sufficient to deal with
;; this issue, but it is how things have evolved.
;;
;; In light of all of this, we need to make some simplifications.
;;
;; One is that each low-level function will have just one foreign
;; function wrapper.  This means that a minority of Windows
;; configurations won't work.  Oh well.
;;
;; Another is that if dynamic-link returns a result, that it is assumed
;; that glXGetProcAddress (or the equivalent) would return the same
;; value.  So we can try dynamic-link first, and only dispatch to e.g
;; glXGetProcAddress if that fails.
;;
;; Finally, we assume that all GL symbols may be resolved by
;; dynamic-pointer by looking in one library, regardless of whether they
;; come from the lower GL level or from the window-system-specific
;; level.
;;

;; FIXME: adapt implementation to match!
(define (default-resolver name)
  (dynamic-pointer name (dynamic-link)))

(define current-resolver
  (make-parameter default-resolver))

(define (resolve name)
  ((current-resolver) name))

(define-syntax foreign-trampoline
  (lambda (stx)
    (syntax-case stx (->)
      ((_ trampoline
          name (pname ptype) ... -> type)
       (with-syntax ((sname (symbol->string (syntax->datum #'name))))
         #'(lambda (pname ...)
             (let ((ptr (resolve sname)))
               (set! trampoline
                     (pointer->procedure (type)
                                         ptr
                                         (list (ptype) ...)))
               (trampoline pname ...))))))))

(define-syntax define-foreign-procedure
  (syntax-rules (->)
    ((define-foreign-procedure (name (pname ptype) ... -> type)
       docstring)
     (define name
       (letrec ((trampoline
                 (foreign-trampoline trampoline
                                     name (pname ptype) ... -> type))
                (name (lambda (pname ...)
                        docstring
                        (let ((pname (ptype #:unwrap pname))
                              ...)
                          (type #:wrap (trampoline pname ...))))))
         name)))))

(define-syntax define-foreign-procedures
  (syntax-rules ()
    ((define-foreign-procedures ((name prototype ...) ...)
       docstring)
     (begin
       (define-foreign-procedure (name prototype ...)
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
