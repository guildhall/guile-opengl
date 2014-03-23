
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
;;;
;;; Derived from the API specifications at www.opengl.org/registry/api/.
;;;
;;; Automatically generated; you probably don't want to edit this.  To
;;; update, run "make update-enums" in the top-level build tree.
;;;

(define-module
  (glx enums)
  #:use-module
  (gl runtime)
  #:export
  (glx-string-name
    glx-error-code
    glx-drawable-type-mask
    glx-render-type-mask
    glx-sync-type
    glx-event-mask
    glx-pbuffer-clobber-mask
    glx-hyperpipe-type-mask
    glx-hyperpipe-attrib
    glx-hyperpipe-misc
    glx-bind-to-texture-target-mask
    glx-context-flags
    glx-context-profile-mask
    glx-attribute
    nv-present-video
    ext-swap-control
    ext-swap-control-tear
    ext-buffer-age
    glx-amd-gpu-association
    glx-arb-create-context-robustness
    arb-create-context-profile))

(define-enumeration
  glx-string-name
  (vendor 1)
  (version 2)
  (extensions 3))

(define-enumeration
  glx-error-code
  (bad-screen 1)
  (bad-attribute 2)
  (no-extension 3)
  (bad-visual 4)
  (bad-context 5)
  (bad-value 6)
  (bad-enum 7)
  (bad-hyperpipe-config-sgix 91)
  (bad-hyperpipe-sgix 92))

(define-enumeration
  glx-drawable-type-mask
  (window-bit 1)
  (pixmap-bit 2)
  (pbuffer-bit 4)
  (window-bit-sgix 1)
  (pixmap-bit-sgix 2)
  (pbuffer-bit-sgix 4))

(define-enumeration
  glx-render-type-mask
  (rgba-bit 1)
  (color-index-bit 2)
  (rgba-bit-sgix 1)
  (color-index-bit-sgix 2)
  (rgba-float-bit-arb 4)
  (rgba-unsigned-float-bit-ext 8))

(define-enumeration
  glx-sync-type
  (sync-frame-sgix 0)
  (sync-swap-sgix 1))

(define-enumeration
  glx-event-mask
  (pbuffer-clobber-mask 134217728)
  (buffer-clobber-mask-sgix 134217728)
  (buffer-swap-complete-intel-mask 67108864))

(define-enumeration
  glx-pbuffer-clobber-mask
  (front-left-buffer-bit 1)
  (front-right-buffer-bit 2)
  (back-left-buffer-bit 4)
  (back-right-buffer-bit 8)
  (aux-buffers-bit 16)
  (depth-buffer-bit 32)
  (stencil-buffer-bit 64)
  (accum-buffer-bit 128)
  (front-left-buffer-bit-sgix 1)
  (front-right-buffer-bit-sgix 2)
  (back-left-buffer-bit-sgix 4)
  (back-right-buffer-bit-sgix 8)
  (aux-buffers-bit-sgix 16)
  (depth-buffer-bit-sgix 32)
  (stencil-buffer-bit-sgix 64)
  (accum-buffer-bit-sgix 128)
  (sample-buffers-bit-sgix 256))

(define-enumeration
  glx-hyperpipe-type-mask
  (hyperpipe-display-pipe-sgix 1)
  (hyperpipe-render-pipe-sgix 2))

(define-enumeration
  glx-hyperpipe-attrib
  (pipe-rect-sgix 1)
  (pipe-rect-limits-sgix 2)
  (hyperpipe-stereo-sgix 3)
  (hyperpipe-pixel-average-sgix 4))

(define-enumeration
  glx-hyperpipe-misc
  (hyperpipe-pipe-name-length-sgix 80))

(define-enumeration
  glx-bind-to-texture-target-mask
  (texture-1d-bit-ext 1)
  (texture-2d-bit-ext 2)
  (texture-rectangle-bit-ext 4))

(define-enumeration
  glx-context-flags
  (context-debug-bit-arb 1)
  (context-forward-compatible-bit-arb 2)
  (context-robust-access-bit-arb 4)
  (context-reset-isolation-bit-arb 8))

(define-enumeration
  glx-context-profile-mask
  (context-core-profile-bit-arb 1)
  (context-compatibility-profile-bit-arb 2)
  (context-es-profile-bit-ext 4)
  (context-es2-profile-bit-ext 4))

(define-enumeration
  glx-attribute
  (use-gl 1)
  (buffer-size 2)
  (level 3)
  (rgba 4)
  (doublebuffer 5)
  (stereo 6)
  (aux-buffers 7)
  (red-size 8)
  (green-size 9)
  (blue-size 10)
  (alpha-size 11)
  (depth-size 12)
  (stencil-size 13)
  (accum-red-size 14)
  (accum-green-size 15)
  (accum-blue-size 16)
  (accum-alpha-size 17)
  (config-caveat 32)
  (x-visual-type 34)
  (transparent-type 35)
  (transparent-index-value 36)
  (transparent-red-value 37)
  (transparent-green-value 38)
  (transparent-blue-value 39)
  (transparent-alpha-value 40)
  (dont-care 4294967295)
  (none 32768)
  (slow-config 32769)
  (true-color 32770)
  (direct-color 32771)
  (pseudo-color 32772)
  (static-color 32773)
  (gray-scale 32774)
  (static-gray 32775)
  (transparent-rgb 32776)
  (transparent-index 32777)
  (visual-id 32779)
  (screen 32780)
  (non-conformant-config 32781)
  (drawable-type 32784)
  (render-type 32785)
  (x-renderable 32786)
  (fbconfig-id 32787)
  (rgba-type 32788)
  (color-index-type 32789)
  (max-pbuffer-width 32790)
  (max-pbuffer-height 32791)
  (max-pbuffer-pixels 32792)
  (preserved-contents 32795)
  (largest-pbuffer 32796)
  (width 32797)
  (height 32798)
  (event-mask 32799)
  (damaged 32800)
  (saved 32801)
  (window 32802)
  (pbuffer 32803)
  (pbuffer-height 32832)
  (pbuffer-width 32833)
  (visual-caveat-ext 32)
  (x-visual-type-ext 34)
  (transparent-type-ext 35)
  (transparent-index-value-ext 36)
  (transparent-red-value-ext 37)
  (transparent-green-value-ext 38)
  (transparent-blue-value-ext 39)
  (transparent-alpha-value-ext 40)
  (none-ext 32768)
  (slow-visual-ext 32769)
  (true-color-ext 32770)
  (direct-color-ext 32771)
  (pseudo-color-ext 32772)
  (static-color-ext 32773)
  (gray-scale-ext 32774)
  (static-gray-ext 32775)
  (transparent-rgb-ext 32776)
  (transparent-index-ext 32777)
  (share-context-ext 32778)
  (visual-id-ext 32779)
  (screen-ext 32780)
  (non-conformant-visual-ext 32781)
  (drawable-type-sgix 32784)
  (render-type-sgix 32785)
  (x-renderable-sgix 32786)
  (fbconfig-id-sgix 32787)
  (rgba-type-sgix 32788)
  (color-index-type-sgix 32789)
  (max-pbuffer-width-sgix 32790)
  (max-pbuffer-height-sgix 32791)
  (max-pbuffer-pixels-sgix 32792)
  (optimal-pbuffer-width-sgix 32793)
  (optimal-pbuffer-height-sgix 32794)
  (preserved-contents-sgix 32795)
  (largest-pbuffer-sgix 32796)
  (width-sgix 32797)
  (height-sgix 32798)
  (event-mask-sgix 32799)
  (damaged-sgix 32800)
  (saved-sgix 32801)
  (window-sgix 32802)
  (pbuffer-sgix 32803)
  (digital-media-pbuffer-sgix 32804)
  (blended-rgba-sgis 32805)
  (multisample-sub-rect-width-sgis 32806)
  (multisample-sub-rect-height-sgis 32807)
  (visual-select-group-sgix 32808)
  (hyperpipe-id-sgix 32816)
  (sample-buffers-sgis 100000)
  (samples-sgis 100001)
  (sample-buffers-arb 100000)
  (samples-arb 100001)
  (sample-buffers 100000)
  (samples 100001)
  (coverage-samples-nv 100001)
  (context-major-version-arb 8337)
  (context-minor-version-arb 8338)
  (context-flags-arb 8340)
  (context-allow-buffer-byte-order-mismatch-arb
    8341)
  (float-components-nv 8368)
  (rgba-unsigned-float-type-ext 8369)
  (framebuffer-srgb-capable-arb 8370)
  (framebuffer-srgb-capable-ext 8370)
  (color-samples-nv 8371)
  (rgba-float-type-arb 8377)
  (video-out-color-nv 8387)
  (video-out-alpha-nv 8388)
  (video-out-depth-nv 8389)
  (video-out-color-and-alpha-nv 8390)
  (video-out-color-and-depth-nv 8391)
  (video-out-frame-nv 8392)
  (video-out-field-1-nv 8393)
  (video-out-field-2-nv 8394)
  (video-out-stacked-fields-1-2-nv 8395)
  (video-out-stacked-fields-2-1-nv 8396)
  (device-id-nv 8397)
  (unique-id-nv 8398)
  (num-video-capture-slots-nv 8399)
  (bind-to-texture-rgb-ext 8400)
  (bind-to-texture-rgba-ext 8401)
  (bind-to-mipmap-texture-ext 8402)
  (bind-to-texture-targets-ext 8403)
  (y-inverted-ext 8404)
  (texture-format-ext 8405)
  (texture-target-ext 8406)
  (mipmap-texture-ext 8407)
  (texture-format-none-ext 8408)
  (texture-format-rgb-ext 8409)
  (texture-format-rgba-ext 8410)
  (texture-1d-ext 8411)
  (texture-2d-ext 8412)
  (texture-rectangle-ext 8413)
  (front-left-ext 8414)
  (front-right-ext 8415)
  (back-left-ext 8416)
  (back-right-ext 8417)
  (front-ext 8414)
  (back-ext 8416)
  (aux0-ext 8418)
  (aux1-ext 8419)
  (aux2-ext 8420)
  (aux3-ext 8421)
  (aux4-ext 8422)
  (aux5-ext 8423)
  (aux6-ext 8424)
  (aux7-ext 8425)
  (aux8-ext 8426)
  (aux9-ext 8427))

(define-enumeration
  nv-present-video
  (num-video-slots-nv 8432))

(define-enumeration
  ext-swap-control
  (swap-interval-ext 8433)
  (max-swap-interval-ext 8434))

(define-enumeration
  ext-swap-control-tear
  (late-swaps-tear-ext 8435))

(define-enumeration
  ext-buffer-age
  (back-buffer-age-ext 8436))

(define-enumeration
  glx-amd-gpu-association
  (gpu-vendor-amd 7936)
  (gpu-renderer-string-amd 7937)
  (gpu-opengl-version-string-amd 7938)
  (gpu-fastest-target-gpus-amd 8610)
  (gpu-ram-amd 8611)
  (gpu-clock-amd 8612)
  (gpu-num-pipes-amd 8613)
  (gpu-num-simd-amd 8614)
  (gpu-num-rb-amd 8615)
  (gpu-num-spi-amd 8616))

(define-enumeration
  glx-arb-create-context-robustness
  (lose-context-on-reset-arb 33362)
  (context-reset-notification-strategy-arb 33366)
  (no-reset-notification-arb 33377))

(define-enumeration
  arb-create-context-profile
  (context-profile-mask-arb 37158))

