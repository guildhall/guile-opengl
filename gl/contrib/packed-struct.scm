;;; Guile-OpenGL
;;; Copyright (C) 2014, 2019 Andy Wingo <wingo@pobox.com>
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
;; Packed binary structures.
;;
;;; Code:

(define-module (gl contrib packed-struct)
  #:use-module (ice-9 futures)
  #:use-module (ice-9 threads)
  #:use-module (rnrs bytevectors)
  #:export (
            define-packed-struct
            packed-struct-size
            packed-struct-offset
            pack pack* unpack unpack*

            make-packed-array
            packed-array-length

            parallel-visit iota-visitor

            pack-visitor pack-each pack-each/serial
            unpack-visitor unpack-each unpack-each/serial
            repack-visitor repack-each repack-each/serial
            ))

(define-syntax-parameter struct-size (syntax-rules ()))
(define-syntax-parameter struct-offset (syntax-rules ()))
(define-syntax-parameter struct-packer (syntax-rules ()))
(define-syntax-parameter struct-unpacker (syntax-rules ()))
(define-syntax-parameter struct-getter (syntax-rules ()))
(define-syntax-parameter struct-setter (syntax-rules ()))

(define-syntax define-packed-struct
  (lambda (stx)
    (define (stx-map-fold proc lst seed)
      (let lp ((lst lst) (out '()) (seed seed))
        (syntax-case lst ()
          (() (values (reverse out) seed))
          ((elt . lst)
           (call-with-values (lambda () (proc #'elt seed))
             (lambda (elt seed)
               (lp #'lst (cons elt out) seed)))))))

    (define (compute-layout types)
      (stx-map-fold
       (lambda (type offset)
         (define (return size ref set)
           (values #`(#,offset #,ref #,set)
                   (+ offset size)))
         (case (syntax->datum type)
           ((float)  (return 4
                             #'bytevector-ieee-single-native-ref
                             #'bytevector-ieee-single-native-set!))
           ((double) (return 8
                             #'bytevector-ieee-double-native-ref
                             #'bytevector-ieee-double-native-set!))
           ((int8)   (return 1
                             #'bytevector-s8-ref
                             #'bytevector-s8-set!))
           ((uint8)  (return 1
                             #'bytevector-u8-ref
                             #'bytevector-u8-set!))
           ((int16)  (return 2
                             #'bytevector-s16-native-ref
                             #'bytevector-s16-native-set!))
           ((uint16) (return 2
                             #'bytevector-u16-native-ref
                             #'bytevector-u16-native-set!))
           ((int32)  (return 4
                             #'bytevector-s32-native-ref
                             #'bytevector-s32-native-set!))
           ((uint32) (return 4
                             #'bytevector-u32-native-ref
                             #'bytevector-u32-native-set!))
           ((int64)  (return 8
                             #'bytevector-s64-native-ref
                             #'bytevector-s64-native-set!))
           ((uint64) (return 8
                             #'bytevector-u64-native-ref
                             #'bytevector-u64-native-set!))
           (else (error "unrecognized type" (syntax->datum type)))))
       types
       0))

    (syntax-case stx ()
      ((define-packed-struct name
         (field-name field-type)
         ...)
       (call-with-values (lambda () (compute-layout #'(field-type ...)))
         (lambda (accessors byte-size)
           (with-syntax ((((field-offset field-ref field-set) ...) accessors)
                         (byte-size byte-size))
             #`(define-syntax name
                 (syntax-rules (struct-size
                                struct-offset
                                struct-unpacker struct-packer
                                struct-getter struct-setter)
                   ((_ struct-size) byte-size)
                   ((_ struct-offset field)
                    (case 'field
                      ((field-name) field-offset)
                      ...
                      (else (error "unknown field" 'field))))
                   ((_ struct-unpacker)
                    (lambda (bv offset k)
                      (k (field-ref bv (+ offset field-offset))
                         ...)))
                   ((_ struct-packer)
                    (lambda (bv offset field-name ...)
                      (field-set bv (+ offset field-offset) field-name)
                      ...))
                   ((_ struct-getter field)
                    (case 'field
                      ((field-name)
                       (lambda (bv offset)
                         (field-ref bv (+ offset field-offset))))
                      ...
                      (else (error "unknown field" 'field))))
                   ((_ struct-setter field)
                    (case 'field
                      ((field-name)
                       (lambda (bv offset val)
                         (field-set bv (+ offset field-offset) val)))
                      ...
                      (else (error "unknown field" 'field)))))))))))))

(define-syntax-rule (packed-struct-size type)
  (type struct-size))

(define-syntax-rule (packed-struct-offset type field)
  (type struct-offset field))

(define-syntax-rule (packed-struct-getter type field)
  (type struct-getter field))

(define-syntax-rule (packed-struct-setter type field)
  (type struct-setter field))

(define-syntax-rule (packed-struct-unpacker type)
  (type struct-unpacker))

(define-syntax-rule (packed-struct-packer type)
  (type struct-packer))

(define-syntax-rule (unpack* bv offset type k)
  ((packed-struct-unpacker type) bv offset k))

(define-syntax-rule (unpack bv n type k)
  (unpack* bv (* n (packed-struct-size type)) type k))

(define-syntax-rule (pack* bv offset type v ...)
  ((packed-struct-packer type) bv offset v ...))

(define-syntax-rule (pack bv n type v ...)
  (pack* bv (* n (packed-struct-size type)) type v ...))

(define-syntax-rule (make-packed-array type len)
  (make-bytevector (* (packed-struct-size type) len) 0))

(define-syntax-rule (packed-array-length bv type)
  (/ (bytevector-length bv) (packed-struct-size type)))

(define-syntax parallel-visit
  (syntax-rules ()
    ((parallel-visit n visit 1)
     (let ((end n))
       (unless (= end 0)
         (visit 0 end))))
    ((parallel-visit n visit nprocs*)
     (let lp ((start 0) (end n) (nprocs nprocs*))
       (cond
        ((= start end))
        ((eqv? nprocs 1)
         (visit start end))
        (else
         (let* ((pivot (+ start (ceiling/ (- end start) nprocs)))
                (left (future (lp start pivot 1))))
           (lp pivot end (1- nprocs))
           (touch left))))))))

(define-syntax-rule (iota-visitor proc)
  (lambda (start end)
    (let lp ((n start))
      (when (< n end)
        (proc n)
        (lp (1+ n))))))

(define-syntax-rule (pack-visitor bv type proc)
  (iota-visitor
   (lambda (n)
     (call-with-values (lambda () (proc n))
       (lambda args
         (apply (packed-struct-packer type)
                bv
                (* n (packed-struct-size type))
                args))))))

(define-syntax-rule (pack-each* bv type proc nprocs)
  (parallel-visit (packed-array-length bv type)
                  (pack-visitor bv type proc)
                  nprocs))

(define-syntax-rule (pack-each bv type proc)
  (pack-each* bv type proc (current-processor-count)))

(define-syntax-rule (pack-each/serial bv type proc)
  (pack-each* bv type proc 1))

(define-syntax-rule (unpack-visitor bv type proc)
  (iota-visitor
   (lambda (n)
     ((packed-struct-unpacker type)
      bv
      (* n (packed-struct-size type))
      (lambda args
        (apply proc n args))))))

(define-syntax-rule (unpack-each* bv type proc nprocs)
  (parallel-visit (packed-array-length bv type)
                  (unpack-visitor bv type proc)
                  nprocs))

(define-syntax-rule (unpack-each bv type proc)
  (unpack-each* bv type proc (current-processor-count)))

(define-syntax-rule (unpack-each/serial bv type proc)
  (unpack-each* bv type proc 1))

(define-syntax-rule (repack-visitor bv type proc)
  (pack-visitor
   bv
   type
   (lambda (n)
     ((packed-struct-unpacker type)
      bv
      (* n (packed-struct-size type))
      (lambda args
        (apply proc n args))))))

(define-syntax-rule (repack-each* bv type proc nprocs)
  (parallel-visit (packed-array-length bv type)
                  (repack-visitor bv type proc)
                  nprocs))

(define-syntax-rule (repack-each bv type proc)
  (repack-each* bv type proc (current-processor-count)))

(define-syntax-rule (repack-each/serial bv type proc)
  (repack-each* bv type proc 1))
