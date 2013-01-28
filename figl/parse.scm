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

(define-module (figl parse)
  #:use-module (figl config)
  #:use-module (sxml simple)
  #:use-module (ice-9 ftw)
  #:export ())

(define *man-sections*
  '("man2" "man3" "man4"))

(define *namespaces*
  '((mml . "http://www.w3.org/1998/Math/MathML")))

(define *entities*
  '())

(define (default-entity-handler port name)
  (format (current-warning-port)
          "~a:~a:~a: undefined entitity: &~a;\n"
          (or (port-filename port) "<unknown file>")
          (port-line port) (port-column port)
          name)
  (symbol->string name))

(define (parse-man-xml section filename)
  (call-with-input-file (in-vicinity (upstream-man-pages)
                                     (in-vicinity section filename))
    (lambda (port)
      (xml->sxml port #:namespaces *namespaces* #:declare-namespaces? #t
                 #:entities *entities*
                 #:default-entity-handler default-entity-handler))))

(define (xml-files section)
  (scandir (in-vicinity (upstream-man-pages) section)
           (lambda (x) (string-suffix? ".xml" x))))

