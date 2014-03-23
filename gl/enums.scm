
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
  (gl enums)
  #:use-module
  (gl runtime)
  #:export
  (attrib-mask
    version-1-3
    arb-multisample
    ext-multisample
    #{3dfx-multisample}#
    clear-buffer-mask
    client-attrib-mask
    version-3-0
    arb-map-buffer-range
    ext-map-buffer-range
    version-4-3
    khr-debug
    arb-robustness
    arb-separate-shader-objects
    arb-compute-shader
    ext-separate-shader-objects
    ext-shader-image-load-store
    arb-shader-image-load-store
    arb-shader-storage-buffer-object
    intel-map-texture
    boolean
    begin-mode
    version-3-2
    arb-geometry-shader-4
    nv-geometry-program-4
    arb-tessellation-shader
    nv-gpu-shader-5
    accum-op
    alpha-function
    blending-factor-dest
    blending-factor-src
    blend-equation-mode-ext
    color-material-face
    color-material-parameter
    color-pointer-type
    color-table-parameter-p-name-sgi
    color-table-target-sgi
    convolution-border-mode-ext
    convolution-parameter-ext
    convolution-target-ext
    cull-face-mode
    depth-function
    draw-buffer-mode
    oes-framebuffer-object
    enable-cap
    error-code
    arb-framebuffer-object
    ext-framebuffer-object
    feedback-type
    feed-back-token
    ffd-mask-sgix
    ffd-target-sgix
    fog-mode
    fog-parameter
    fragment-light-model-parameter-sgix
    front-face-direction
    get-color-table-parameter-p-name-sgi
    get-convolution-parameter
    get-histogram-parameter-p-name-ext
    get-map-query
    get-minmax-parameter-p-name-ext
    get-pixel-map
    get-pointerv-p-name
    get-p-name
    qcom-alpha-test
    ext-unpack-subimage
    ext-multiview-draw-buffers
    nv-read-buffer
    get-texture-parameter
    nv-texture-border-clamp
    hint-mode
    hint-target
    histogram-target-ext
    index-pointer-type
    light-env-mode-sgix
    light-env-parameter-sgix
    light-model-color-control
    light-model-parameter
    light-parameter
    list-mode
    data-type
    oes-element-index-uint
    oes-texture-float
    ext-vertex-attrib-64-bit
    arb-half-float-vertex
    arb-half-float-pixel
    nv-half-float
    apple-float-pixels
    arb-es2-compatibility
    oes-fixed-point
    nv-vertex-attrib-integer-64-bit
    list-name-type
    list-parameter-name
    logic-op
    map-target
    material-face
    material-parameter
    matrix-mode
    mesh-mode-1
    mesh-mode-2
    minmax-target-ext
    normal-pointer-type
    pixel-copy-type
    ext-discard-framebuffer
    pixel-format
    oes-depth-texture
    ext-texture-rg
    pixel-map
    pixel-store-parameter
    pixel-store-resample-mode
    pixel-store-subsample-rate
    pixel-tex-gen-mode
    pixel-tex-gen-parameter-name-sgis
    pixel-transfer-parameter
    pixel-type
    point-parameter-name-sgis
    polygon-mode
    read-buffer-mode
    rendering-mode
    sample-pattern-sgis
    separable-target-ext
    shading-model
    stencil-function
    stencil-op
    string-name
    tex-coord-pointer-type
    texture-coord-name
    texture-env-mode
    texture-env-parameter
    texture-env-target
    texture-filter-func-sgis
    texture-gen-mode
    texture-gen-parameter
    oes-texture-cube-map
    texture-mag-filter
    texture-min-filter
    texture-parameter-name
    texture-target
    texture-wrap-mode
    pixel-internal-format
    oes-rgb-8-rgba-8
    interleaved-array-format
    vertex-pointer-type
    clip-plane-name
    light-name
    ext-abgr
    version-1-2
    ext-blend-color
    ext-blend-minmax
    version-2-0
    ext-blend-equation-separate
    oes-blend-equation-separate
    ext-blend-subtract
    oes-blend-subtract
    ext-cmyka
    ext-convolution
    ext-histogram
    ext-packed-pixels
    ext-texture-type-2-10-10-10-rev
    ext-polygon-offset
    ext-rescale-normal
    ext-texture
    ext-texture-object
    ext-texture-3d
    oes-texture-3d
    ext-vertex-array
    sgix-interlace
    sgis-detail-texture
    sgis-multisample
    nv-multisample-coverage
    sgis-sharpen-texture
    sgi-color-matrix
    sgi-texture-color-table
    sgix-texture-add-env
    sgix-shadow-ambient
    version-1-4
    ext-blend-func-separate
    oes-blend-func-separate
    ext-422-pixels
    sgi-color-table
    arb-vertex-array-bgra
    ext-bgra
    sgis-texture-select
    arb-point-parameters
    ext-point-parameters
    sgis-point-parameters
    sgis-fog-function
    arb-texture-border-clamp
    sgis-texture-border-clamp
    sgix-texture-multi-buffer
    sgis-texture-edge-clamp
    sgis-texture-4d
    sgix-pixel-texture
    sgis-texture-lod
    sgix-pixel-tiles
    sgis-texture-filter-4
    sgix-sprite
    hp-convolution-border-modes
    sgix-clipmap
    sgix-texture-scale-bias
    sgix-reference-plane
    sgix-ir-instrument-1
    sgix-instruments
    sgix-list-priority
    sgix-calligraphic-fragment
    sgix-impact-pixel-texture
    sgix-framezoom
    sgix-texture-lod-bias
    sgis-generate-mipmap
    sgix-polynomial-ffd
    sgix-fog-offset
    sgix-shadow
    arb-depth-texture
    sgix-depth-texture
    oes-depth-24
    oes-depth-32
    ext-compiled-vertex-array
    ext-cull-vertex
    ext-index-array-formats
    ext-index-func
    ext-index-material
    sgix-ycrcb
    sunx-general-triangle-list
    sunx-constant-data
    sun-global-alpha
    sgis-texture-color-mask
    sgis-point-line-texgen
    ext-separate-specular-color
    ext-shared-texture-palette
    ati-text-fragment-shader
    ext-color-buffer-half-float
    oes-surfaceless-context
    arb-texture-rg
    arb-cl-event
    arb-debug-output
    arb-get-program-binary
    arb-viewport-array
    arb-explicit-uniform-location
    arb-internalformat-query-2
    arb-vertex-attrib-binding
    arb-texture-view
    sgix-depth-pass-instrument
    sgix-fragments-instrument
    sgix-convolution-accuracy
    sgix-ycrcba
    sgix-slim
    sgix-blend-alpha-minmax
    sgix-scalebias-hint
    sgix-async
    sgix-async-histogram
    ext-pixel-transform
    ext-light-texture
    sgis-pixel-texture
    sgix-line-quality-hint
    sgix-async-pixel
    sgix-texture-coordinate-clamp
    arb-texture-mirrored-repeat
    ibm-texture-mirrored-repeat
    oes-texture-mirrored-repeat
    s3-s-3-tc
    sgix-vertex-preclip
    ext-texture-compression-s-3-tc
    angle-texture-compression-dxt-3
    angle-texture-compression-dxt-5
    intel-parallel-arrays
    sgix-fragment-lighting
    sgix-resample
    version-1-5
    ext-fog-coord
    ext-secondary-color
    arb-vertex-program
    version-2-1
    sgix-icc-texture
    rend-screen-coordinates
    arb-multitexture
    oes-texture-env-crossbar
    arb-transpose-matrix
    arb-texture-env-combine
    arb-texture-compression
    nv-fence
    version-3-1
    arb-texture-rectangle
    nv-texture-rectangle
    ext-packed-depth-stencil
    nv-packed-depth-stencil
    oes-packed-depth-stencil
    ext-texture-lod-bias
    ext-texture-filter-anisotropic
    ext-vertex-weighting
    nv-light-max-exponent
    ext-stencil-wrap
    oes-stencil-wrap
    ext-texture-cube-map
    nv-texgen-reflection
    arb-texture-cube-map
    nv-vertex-array-range
    apple-vertex-array-range
    nv-register-combiners
    nv-register-combiners-2
    nv-primitive-restart
    nv-fog-distance
    nv-texgen-emboss
    ingr-color-clamp
    ingr-interlace-read
    ext-texture-env-combine
    nv-texture-env-combine-4
    sgix-subsample
    ext-texture-perturb-normal
    apple-specular-vector
    apple-transform-hint
    apple-client-storage
    apple-object-purgeable
    arb-vertex-array-object
    apple-vertex-array-object
    apple-texture-range
    apple-ycbcr-422
    mesa-ycbcr-texture
    sun-slice-accum
    sun-mesh-array
    nv-vertex-program
    arb-depth-clamp
    nv-depth-clamp
    arb-fragment-program
    arb-vertex-blend
    oes-matrix-palette
    arb-texture-env-dot-3
    img-texture-env-enhanced-fixed-function
    #{3dfx-texture-compression-fxt1}#
    nv-evaluators
    nv-tessellation-program-5
    nv-texture-shader
    nv-vdpau-interop
    nv-texture-shader-2
    ext-texture-env-dot-3
    amd-program-binary-z400
    oes-get-program-binary
    ati-texture-mirror-once
    ext-texture-mirror-clamp
    ati-texture-env-combine-3
    amd-stencil-operation-extended
    mesa-packed-depth-stencil
    mesa-trace
    mesa-pack-invert
    mesax-texture-stack
    mesa-shader-debug
    ati-vertex-array-object
    arb-vertex-buffer-object
    ati-element-array
    ati-vertex-streams
    ati-envmap-bumpmap
    ext-vertex-shader
    amd-compressed-atc-texture
    ati-pn-triangles
    amd-compressed-3dc-texture
    ati-meminfo
    ati-separate-stencil
    arb-texture-float
    ati-texture-float
    arb-color-buffer-float
    ati-pixel-format-float
    qcom-writeonly-rendering
    arb-draw-buffers
    ati-draw-buffers
    nv-draw-buffers
    amd-sample-positions
    arb-matrix-palette
    arb-shadow
    ext-shadow-samplers
    ext-texture-array
    arb-seamless-cube-map
    nv-texture-shader-3
    arb-point-sprite
    nv-point-sprite
    oes-point-sprite
    arb-occlusion-query
    nv-occlusion-query
    ext-occlusion-query-boolean
    nv-fragment-program
    nv-copy-depth-to-color
    nv-pixel-data-range
    arb-gpu-shader-5
    nv-float-buffer
    nv-texture-expand-normal
    ext-depth-bounds-test
    oes-mapbuffer
    nv-shader-buffer-store
    arb-timer-query
    ext-timer-query
    arb-pixel-buffer-object
    ext-pixel-buffer-object
    nv-s-rgb-formats
    ext-stencil-clear-tag
    nv-vertex-program-2-option
    nv-fragment-program-2
    arb-blend-func-extended
    nv-vertex-program-4
    version-3-3
    arb-instanced-arrays
    angle-instanced-arrays
    nv-instanced-arrays
    nv-gpu-program-4
    ext-stencil-two-side
    arb-sampler-objects
    ati-fragment-shader
    oml-interlace
    oml-subsample
    oml-resample
    oes-point-size-array
    oes-matrix-get
    apple-vertex-program-evaluators
    apple-fence
    apple-element-array
    arb-uniform-buffer-object
    apple-flush-buffer-range
    apple-aux-depth-stencil
    apple-row-bytes
    apple-rgb-422
    ext-texture-s-rgb-decode
    ext-debug-label
    ext-shader-framebuffer-fetch
    apple-sync
    arb-shader-objects
    arb-vertex-shader
    arb-fragment-shader
    nv-vertex-program-3
    oes-standard-derivatives
    ext-geometry-shader-4
    oes-compressed-paletted-texture
    oes-read-format
    oes-draw-texture
    mesa-program-debug
    amd-performance-monitor
    qcom-extended-get
    img-texture-compression-pvrtc
    img-shader-binary
    arb-texture-buffer-object
    ext-texture-buffer-object
    arb-occlusion-query-2
    arb-sample-shading
    ext-packed-float
    ext-texture-shared-exponent
    ext-texture-s-rgb
    ext-texture-compression-latc
    ext-transform-feedback
    nv-transform-feedback
    ext-framebuffer-blit
    angle-framebuffer-blit
    nv-framebuffer-blit
    angle-framebuffer-multisample
    ext-framebuffer-multisample
    nv-framebuffer-multisample
    nv-framebuffer-multisample-coverage
    arb-depth-buffer-float
    nv-fbo-color-attachments
    oes-stencil-1
    oes-stencil-4
    oes-stencil-8
    oes-vertex-half-float
    version-4-1
    oes-compressed-etc1-rgb8-texture
    oes-egl-image-external
    arb-es3-compatibility
    ext-multisampled-render-to-texture
    ext-texture-integer
    arb-vertex-type-2-10-10-10-rev
    nv-parameter-buffer-object
    nv-depth-buffer-float
    arb-shading-language-include
    arb-framebuffer-s-rgb
    ext-framebuffer-s-rgb
    arb-texture-compression-rgtc
    ext-texture-compression-rgtc
    ext-gpu-shader-4
    nv-shadow-samplers-array
    nv-shadow-samplers-cube
    ext-bindable-uniform
    arb-shader-subroutine
    oes-vertex-type-10-10-10-2
    nv-conditional-render
    arb-transform-feedback-2
    nv-transform-feedback-2
    nv-present-video
    nv-depth-nonlinear
    ext-direct-state-access
    arb-texture-swizzle
    ext-texture-swizzle
    arb-provoking-vertex
    ext-provoking-vertex
    arb-texture-multisample
    nv-explicit-multisample
    nv-gpu-program-5
    arb-texture-gather
    arb-transform-feedback-3
    arb-texture-compression-bptc
    nv-coverage-sample
    nv-shader-buffer-load
    nv-vertex-buffer-unified-memory
    arb-copy-buffer
    arb-draw-indirect
    arb-gpu-shader-fp-64
    arm-mali-shader-binary
    qcom-driver-control
    qcom-binning-control
    viv-shader-binary
    amd-vertex-shader-tesselator
    arb-texture-cube-map-array
    ext-texture-snorm
    amd-blend-minmax-factor
    amd-depth-clamp-separate
    nv-video-capture
    nv-texture-multisample
    arb-texture-rgb-10-a-2-ui
    nv-path-rendering
    ext-framebuffer-multisample-blit-scaled
    arb-map-buffer-alignment
    nv-deep-texture-3d
    ext-x-11-sync-object
    arb-stencil-texturing
    nv-compute-program-5
    arb-sync
    arb-compressed-texture-pixel-storage
    arb-texture-storage
    img-program-binary
    img-multisampled-render-to-texture
    img-texture-compression-pvrtc-2
    amd-debug-output
    amd-name-gen-delete
    amd-pinned-memory
    amd-query-buffer-object
    amd-sparse-texture
    arb-texture-buffer-range
    dmp-shader-binary
    fj-shader-binary-gccso
    arb-shader-atomic-counters
    arb-program-interface-query
    arb-framebuffer-no-attachments
    arb-internalformat-query
    angle-translated-shader-source
    angle-texture-usage
    angle-pack-reverse-row-order
    angle-depth-texture
    gl-khr-texture-compression-astc-ldr))

(define-bitfield
  attrib-mask
  (current 1)
  (point 2)
  (line 4)
  (polygon 8)
  (polygon-stipple 16)
  (pixel-mode 32)
  (lighting 64)
  (fog 128)
  (depth-buffer 256)
  (accum-buffer 512)
  (stencil-buffer 1024)
  (viewport 2048)
  (transform 4096)
  (enable 8192)
  (color-buffer 16384)
  (hint 32768)
  (eval 65536)
  (list 131072)
  (texture 262144)
  (scissor 524288)
  (all-attrib 4294967295))

(define-enumeration
  version-1-3
  (multisample-bit 536870912)
  (multisample 32925)
  (sample-alpha-to-coverage 32926)
  (sample-alpha-to-one 32927)
  (sample-coverage 32928)
  (sample-buffers 32936)
  (samples 32937)
  (sample-coverage-value 32938)
  (sample-coverage-invert 32939)
  (clamp-to-border 33069)
  (texture0 33984)
  (texture1 33985)
  (texture2 33986)
  (texture3 33987)
  (texture4 33988)
  (texture5 33989)
  (texture6 33990)
  (texture7 33991)
  (texture8 33992)
  (texture9 33993)
  (texture10 33994)
  (texture11 33995)
  (texture12 33996)
  (texture13 33997)
  (texture14 33998)
  (texture15 33999)
  (texture16 34000)
  (texture17 34001)
  (texture18 34002)
  (texture19 34003)
  (texture20 34004)
  (texture21 34005)
  (texture22 34006)
  (texture23 34007)
  (texture24 34008)
  (texture25 34009)
  (texture26 34010)
  (texture27 34011)
  (texture28 34012)
  (texture29 34013)
  (texture30 34014)
  (texture31 34015)
  (active-texture 34016)
  (client-active-texture 34017)
  (max-texture-units 34018)
  (transpose-modelview-matrix 34019)
  (transpose-projection-matrix 34020)
  (transpose-texture-matrix 34021)
  (transpose-color-matrix 34022)
  (subtract 34023)
  (compressed-alpha 34025)
  (compressed-luminance 34026)
  (compressed-luminance-alpha 34027)
  (compressed-intensity 34028)
  (compressed-rgb 34029)
  (compressed-rgba 34030)
  (texture-compression-hint 34031)
  (texture-compressed-image-size 34464)
  (texture-compressed 34465)
  (num-compressed-texture-formats 34466)
  (compressed-texture-formats 34467)
  (normal-map 34065)
  (reflection-map 34066)
  (texture-cube-map 34067)
  (texture-binding-cube-map 34068)
  (texture-cube-map-positive-x 34069)
  (texture-cube-map-negative-x 34070)
  (texture-cube-map-positive-y 34071)
  (texture-cube-map-negative-y 34072)
  (texture-cube-map-positive-z 34073)
  (texture-cube-map-negative-z 34074)
  (proxy-texture-cube-map 34075)
  (max-cube-map-texture-size 34076)
  (combine 34160)
  (combine-rgb 34161)
  (combine-alpha 34162)
  (rgb-scale 34163)
  (add-signed 34164)
  (interpolate 34165)
  (constant 34166)
  (primary-color 34167)
  (previous 34168)
  (source0-rgb 34176)
  (source1-rgb 34177)
  (source2-rgb 34178)
  (source0-alpha 34184)
  (source1-alpha 34185)
  (source2-alpha 34186)
  (operand0-rgb 34192)
  (operand1-rgb 34193)
  (operand2-rgb 34194)
  (operand0-alpha 34200)
  (operand1-alpha 34201)
  (operand2-alpha 34202)
  (dot3-rgb 34478)
  (dot3-rgba 34479))

(define-enumeration
  arb-multisample
  (multisample-bit-arb 536870912)
  (multisample-arb 32925)
  (sample-alpha-to-coverage-arb 32926)
  (sample-alpha-to-one-arb 32927)
  (sample-coverage-arb 32928)
  (sample-buffers-arb 32936)
  (samples-arb 32937)
  (sample-coverage-value-arb 32938)
  (sample-coverage-invert-arb 32939))

(define-enumeration
  ext-multisample
  (multisample-bit-ext 536870912)
  (multisample-ext 32925)
  (sample-alpha-to-mask-ext 32926)
  (sample-alpha-to-one-ext 32927)
  (sample-mask-ext 32928)
  (#{1pass-ext}# 32929)
  (#{2pass-0-ext}# 32930)
  (#{2pass-1-ext}# 32931)
  (#{4pass-0-ext}# 32932)
  (#{4pass-1-ext}# 32933)
  (#{4pass-2-ext}# 32934)
  (#{4pass-3-ext}# 32935)
  (sample-buffers-ext 32936)
  (samples-ext 32937)
  (sample-mask-value-ext 32938)
  (sample-mask-invert-ext 32939)
  (sample-pattern-ext 32940)
  (multisample-bit-ext 536870912))

(define-enumeration
  #{3dfx-multisample}#
  (multisample-bit-3dfx 536870912)
  (multisample-3dfx 34482)
  (sample-buffers-3dfx 34483)
  (samples-3dfx 34484)
  (multisample-bit-3dfx 536870912))

(define-bitfield
  clear-buffer-mask
  (depth-buffer 256)
  (accum-buffer 512)
  (stencil-buffer 1024)
  (color-buffer 16384)
  (coverage-buffer-bit-nv 32768))

(define-bitfield
  client-attrib-mask
  (client-pixel-store 1)
  (client-vertex-array 2)
  (client-all-attrib 4294967295))

(define-enumeration
  version-3-0
  (map-read-bit 1)
  (map-write-bit 2)
  (map-invalidate-range-bit 4)
  (map-invalidate-buffer-bit 8)
  (map-flush-explicit-bit 16)
  (map-unsynchronized-bit 32)
  (context-flag-forward-compatible-bit 1)
  (invalid-framebuffer-operation 1286)
  (half-float 5131)
  (clip-distance0 12288)
  (clip-distance1 12289)
  (clip-distance2 12290)
  (clip-distance3 12291)
  (clip-distance4 12292)
  (clip-distance5 12293)
  (clip-distance6 12294)
  (clip-distance7 12295)
  (framebuffer-attachment-color-encoding 33296)
  (framebuffer-attachment-component-type 33297)
  (framebuffer-attachment-red-size 33298)
  (framebuffer-attachment-green-size 33299)
  (framebuffer-attachment-blue-size 33300)
  (framebuffer-attachment-alpha-size 33301)
  (framebuffer-attachment-depth-size 33302)
  (framebuffer-attachment-stencil-size 33303)
  (framebuffer-default 33304)
  (framebuffer-undefined 33305)
  (depth-stencil-attachment 33306)
  (major-version 33307)
  (minor-version 33308)
  (num-extensions 33309)
  (context-flags 33310)
  (index 33314)
  (compressed-red 33317)
  (compressed-rg 33318)
  (rg 33319)
  (rg-integer 33320)
  (r8 33321)
  (r16 33322)
  (rg8 33323)
  (rg16 33324)
  (r16f 33325)
  (r32f 33326)
  (rg16f 33327)
  (rg32f 33328)
  (r8i 33329)
  (r8ui 33330)
  (r16i 33331)
  (r16ui 33332)
  (r32i 33333)
  (r32ui 33334)
  (rg8i 33335)
  (rg8ui 33336)
  (rg16i 33337)
  (rg16ui 33338)
  (rg32i 33339)
  (rg32ui 33340)
  (max-renderbuffer-size 34024)
  (depth-stencil 34041)
  (unsigned-int-24-8 34042)
  (vertex-array-binding 34229)
  (rgba32f 34836)
  (rgb32f 34837)
  (rgba16f 34842)
  (rgb16f 34843)
  (compare-ref-to-texture 34894)
  (depth24-stencil8 35056)
  (texture-stencil-size 35057)
  (vertex-attrib-array-integer 35069)
  (max-array-texture-layers 35071)
  (min-program-texel-offset 35076)
  (max-program-texel-offset 35077)
  (clamp-vertex-color 35098)
  (clamp-fragment-color 35099)
  (clamp-read-color 35100)
  (fixed-only 35101)
  (max-varying-components 35659)
  (texture-red-type 35856)
  (texture-green-type 35857)
  (texture-blue-type 35858)
  (texture-alpha-type 35859)
  (texture-luminance-type 35860)
  (texture-intensity-type 35861)
  (texture-depth-type 35862)
  (unsigned-normalized 35863)
  (texture-1d-array 35864)
  (proxy-texture-1d-array 35865)
  (texture-2d-array 35866)
  (proxy-texture-2d-array 35867)
  (texture-binding-1d-array 35868)
  (texture-binding-2d-array 35869)
  (r11f-g11f-b10f 35898)
  (unsigned-int-10f-11f-11f-rev 35899)
  (rgb9-e5 35901)
  (unsigned-int-5-9-9-9-rev 35902)
  (texture-shared-size 35903)
  (transform-feedback-varying-max-length 35958)
  (transform-feedback-varying-max-length-ext 35958)
  (back-primary-color-nv 35959)
  (back-secondary-color-nv 35960)
  (texture-coord-nv 35961)
  (clip-distance-nv 35962)
  (vertex-id-nv 35963)
  (primitive-id-nv 35964)
  (generic-attrib-nv 35965)
  (transform-feedback-attribs-nv 35966)
  (transform-feedback-buffer-mode 35967)
  (transform-feedback-buffer-mode-ext 35967)
  (transform-feedback-buffer-mode-nv 35967)
  (max-transform-feedback-separate-components
    35968)
  (max-transform-feedback-separate-components-ext
    35968)
  (max-transform-feedback-separate-components-nv
    35968)
  (active-varyings-nv 35969)
  (active-varying-max-length-nv 35970)
  (transform-feedback-varyings 35971)
  (transform-feedback-varyings-ext 35971)
  (transform-feedback-varyings-nv 35971)
  (transform-feedback-buffer-start 35972)
  (transform-feedback-buffer-start-ext 35972)
  (transform-feedback-buffer-start-nv 35972)
  (transform-feedback-buffer-size 35973)
  (transform-feedback-buffer-size-ext 35973)
  (transform-feedback-buffer-size-nv 35973)
  (transform-feedback-record-nv 35974)
  (primitives-generated 35975)
  (primitives-generated-ext 35975)
  (primitives-generated-nv 35975)
  (transform-feedback-primitives-written 35976)
  (transform-feedback-primitives-written-ext 35976)
  (transform-feedback-primitives-written-nv 35976)
  (rasterizer-discard 35977)
  (rasterizer-discard-ext 35977)
  (rasterizer-discard-nv 35977)
  (max-transform-feedback-interleaved-components
    35978)
  (max-transform-feedback-interleaved-components-ext
    35978)
  (max-transform-feedback-interleaved-components-nv
    35978)
  (max-transform-feedback-separate-attribs 35979)
  (max-transform-feedback-separate-attribs-ext
    35979)
  (max-transform-feedback-separate-attribs-nv
    35979)
  (interleaved-attribs 35980)
  (interleaved-attribs-ext 35980)
  (interleaved-attribs-nv 35980)
  (separate-attribs 35981)
  (separate-attribs-ext 35981)
  (separate-attribs-nv 35981)
  (transform-feedback-buffer 35982)
  (transform-feedback-buffer-ext 35982)
  (transform-feedback-buffer-nv 35982)
  (transform-feedback-buffer-binding 35983)
  (transform-feedback-buffer-binding-ext 35983)
  (transform-feedback-buffer-binding-nv 35983)
  (framebuffer-binding 36006)
  (draw-framebuffer-binding 36006)
  (renderbuffer-binding 36007)
  (read-framebuffer 36008)
  (draw-framebuffer 36009)
  (read-framebuffer-binding 36010)
  (renderbuffer-samples 36011)
  (depth-component32f 36012)
  (depth32f-stencil8 36013)
  (framebuffer-attachment-object-type 36048)
  (framebuffer-attachment-object-type-ext 36048)
  (framebuffer-attachment-object-name 36049)
  (framebuffer-attachment-object-name-ext 36049)
  (framebuffer-attachment-texture-level 36050)
  (framebuffer-attachment-texture-level-ext 36050)
  (framebuffer-attachment-texture-cube-map-face
    36051)
  (framebuffer-attachment-texture-cube-map-face-ext
    36051)
  (framebuffer-attachment-texture-layer 36052)
  (framebuffer-attachment-texture-3d-zoffset-ext
    36052)
  (framebuffer-complete 36053)
  (framebuffer-complete-ext 36053)
  (framebuffer-incomplete-attachment 36054)
  (framebuffer-incomplete-attachment-ext 36054)
  (framebuffer-incomplete-missing-attachment 36055)
  (framebuffer-incomplete-missing-attachment-ext
    36055)
  (framebuffer-incomplete-dimensions-ext 36057)
  (framebuffer-incomplete-formats-ext 36058)
  (framebuffer-incomplete-draw-buffer 36059)
  (framebuffer-incomplete-draw-buffer-ext 36059)
  (framebuffer-incomplete-read-buffer 36060)
  (framebuffer-incomplete-read-buffer-ext 36060)
  (framebuffer-unsupported 36061)
  (framebuffer-unsupported-ext 36061)
  (max-color-attachments 36063)
  (max-color-attachments-ext 36063)
  (color-attachment0 36064)
  (color-attachment0-ext 36064)
  (color-attachment1 36065)
  (color-attachment1-ext 36065)
  (color-attachment2 36066)
  (color-attachment2-ext 36066)
  (color-attachment3 36067)
  (color-attachment3-ext 36067)
  (color-attachment4 36068)
  (color-attachment4-ext 36068)
  (color-attachment5 36069)
  (color-attachment5-ext 36069)
  (color-attachment6 36070)
  (color-attachment6-ext 36070)
  (color-attachment7 36071)
  (color-attachment7-ext 36071)
  (color-attachment8 36072)
  (color-attachment8-ext 36072)
  (color-attachment9 36073)
  (color-attachment9-ext 36073)
  (color-attachment10 36074)
  (color-attachment10-ext 36074)
  (color-attachment11 36075)
  (color-attachment11-ext 36075)
  (color-attachment12 36076)
  (color-attachment12-ext 36076)
  (color-attachment13 36077)
  (color-attachment13-ext 36077)
  (color-attachment14 36078)
  (color-attachment14-ext 36078)
  (color-attachment15 36079)
  (color-attachment15-ext 36079)
  (depth-attachment 36096)
  (depth-attachment-ext 36096)
  (stencil-attachment 36128)
  (stencil-attachment-ext 36128)
  (framebuffer 36160)
  (framebuffer-ext 36160)
  (renderbuffer 36161)
  (renderbuffer-ext 36161)
  (renderbuffer-width 36162)
  (renderbuffer-width-ext 36162)
  (renderbuffer-height 36163)
  (renderbuffer-height-ext 36163)
  (renderbuffer-internal-format 36164)
  (renderbuffer-internal-format-ext 36164)
  (stencil-index1 36166)
  (stencil-index1-ext 36166)
  (stencil-index4 36167)
  (stencil-index4-ext 36167)
  (stencil-index8 36168)
  (stencil-index8-ext 36168)
  (stencil-index16 36169)
  (stencil-index16-ext 36169)
  (renderbuffer-red-size 36176)
  (renderbuffer-red-size-ext 36176)
  (renderbuffer-green-size 36177)
  (renderbuffer-green-size-ext 36177)
  (renderbuffer-blue-size 36178)
  (renderbuffer-blue-size-ext 36178)
  (renderbuffer-alpha-size 36179)
  (renderbuffer-alpha-size-ext 36179)
  (renderbuffer-depth-size 36180)
  (renderbuffer-depth-size-ext 36180)
  (renderbuffer-stencil-size 36181)
  (renderbuffer-stencil-size-ext 36181)
  (framebuffer-incomplete-multisample 36182)
  (max-samples 36183)
  (rgba32ui 36208)
  (rgba32ui-ext 36208)
  (rgb32ui 36209)
  (rgb32ui-ext 36209)
  (alpha32ui-ext 36210)
  (intensity32ui-ext 36211)
  (luminance32ui-ext 36212)
  (luminance-alpha32ui-ext 36213)
  (rgba16ui 36214)
  (rgba16ui-ext 36214)
  (rgb16ui 36215)
  (rgb16ui-ext 36215)
  (alpha16ui-ext 36216)
  (intensity16ui-ext 36217)
  (luminance16ui-ext 36218)
  (luminance-alpha16ui-ext 36219)
  (rgba8ui 36220)
  (rgba8ui-ext 36220)
  (rgb8ui 36221)
  (rgb8ui-ext 36221)
  (alpha8ui-ext 36222)
  (intensity8ui-ext 36223)
  (luminance8ui-ext 36224)
  (luminance-alpha8ui-ext 36225)
  (rgba32i 36226)
  (rgba32i-ext 36226)
  (rgb32i 36227)
  (rgb32i-ext 36227)
  (alpha32i-ext 36228)
  (intensity32i-ext 36229)
  (luminance32i-ext 36230)
  (luminance-alpha32i-ext 36231)
  (rgba16i 36232)
  (rgba16i-ext 36232)
  (rgb16i 36233)
  (rgb16i-ext 36233)
  (alpha16i-ext 36234)
  (intensity16i-ext 36235)
  (luminance16i-ext 36236)
  (luminance-alpha16i-ext 36237)
  (rgba8i 36238)
  (rgba8i-ext 36238)
  (rgb8i 36239)
  (rgb8i-ext 36239)
  (alpha8i-ext 36240)
  (intensity8i-ext 36241)
  (luminance8i-ext 36242)
  (luminance-alpha8i-ext 36243)
  (red-integer 36244)
  (red-integer-ext 36244)
  (green-integer 36245)
  (green-integer-ext 36245)
  (blue-integer 36246)
  (blue-integer-ext 36246)
  (alpha-integer 36247)
  (alpha-integer-ext 36247)
  (rgb-integer 36248)
  (rgb-integer-ext 36248)
  (rgba-integer 36249)
  (rgba-integer-ext 36249)
  (bgr-integer 36250)
  (bgr-integer-ext 36250)
  (bgra-integer 36251)
  (bgra-integer-ext 36251)
  (luminance-integer-ext 36252)
  (luminance-alpha-integer-ext 36253)
  (rgba-integer-mode-ext 36254)
  (float-32-unsigned-int-24-8-rev 36269)
  (framebuffer-srgb 36281)
  (compressed-red-rgtc1 36283)
  (compressed-signed-red-rgtc1 36284)
  (compressed-rg-rgtc2 36285)
  (compressed-signed-rg-rgtc2 36286)
  (sampler-1d-array 36288)
  (sampler-2d-array 36289)
  (sampler-1d-array-shadow 36291)
  (sampler-2d-array-shadow 36292)
  (sampler-cube-shadow 36293)
  (unsigned-int-vec2 36294)
  (unsigned-int-vec3 36295)
  (unsigned-int-vec4 36296)
  (int-sampler-1d 36297)
  (int-sampler-2d 36298)
  (int-sampler-3d 36299)
  (int-sampler-cube 36300)
  (int-sampler-1d-array 36302)
  (int-sampler-2d-array 36303)
  (unsigned-int-sampler-1d 36305)
  (unsigned-int-sampler-2d 36306)
  (unsigned-int-sampler-3d 36307)
  (unsigned-int-sampler-cube 36308)
  (unsigned-int-sampler-1d-array 36310)
  (unsigned-int-sampler-2d-array 36311)
  (query-wait 36371)
  (query-no-wait 36372)
  (query-by-region-wait 36373)
  (query-by-region-no-wait 36374)
  (buffer-access-flags 37151)
  (buffer-map-length 37152)
  (buffer-map-offset 37153))

(define-bitfield
  arb-map-buffer-range
  (map-read 1)
  (map-write 2)
  (map-invalidate-range 4)
  (map-invalidate-buffer 8)
  (map-flush-explicit 16)
  (map-unsynchronized 32))

(define-enumeration
  ext-map-buffer-range
  (map-read-bit-ext 1)
  (map-write-bit-ext 2)
  (map-invalidate-range-bit-ext 4)
  (map-invalidate-buffer-bit-ext 8)
  (map-flush-explicit-bit-ext 16)
  (map-unsynchronized-bit-ext 32))

(define-enumeration
  version-4-3
  (context-flag-debug-bit 2)
  (num-shading-language-versions 33513)
  (vertex-attrib-array-long 34638))

(define-enumeration
  khr-debug
  (context-flag-debug-bit 2)
  (debug-output-synchronous 33346)
  (debug-next-logged-message-length 33347)
  (debug-callback-function 33348)
  (debug-callback-user-param 33349)
  (debug-source-api 33350)
  (debug-source-window-system 33351)
  (debug-source-shader-compiler 33352)
  (debug-source-third-party 33353)
  (debug-source-application 33354)
  (debug-source-other 33355)
  (debug-type-error 33356)
  (debug-type-deprecated-behavior 33357)
  (debug-type-undefined-behavior 33358)
  (debug-type-portability 33359)
  (debug-type-performance 33360)
  (debug-type-other 33361)
  (debug-type-marker 33384)
  (debug-type-push-group 33385)
  (debug-type-pop-group 33386)
  (debug-severity-notification 33387)
  (max-debug-group-stack-depth 33388)
  (debug-group-stack-depth 33389)
  (buffer 33504)
  (shader 33505)
  (program 33506)
  (query 33507)
  (program-pipeline 33508)
  (sampler 33510)
  (display-list 33511)
  (max-label-length 33512)
  (max-debug-message-length 37187)
  (max-debug-logged-messages 37188)
  (debug-logged-messages 37189)
  (debug-severity-high 37190)
  (debug-severity-medium 37191)
  (debug-severity-low 37192)
  (debug-output 37600))

(define-enumeration
  arb-robustness
  (context-flag-robust-access-bit-arb 4)
  (lose-context-on-reset-arb 33362)
  (guilty-context-reset-arb 33363)
  (innocent-context-reset-arb 33364)
  (unknown-context-reset-arb 33365)
  (reset-notification-strategy-arb 33366)
  (no-reset-notification-arb 33377))

(define-enumeration
  arb-separate-shader-objects
  (vertex-shader-bit 1)
  (fragment-shader-bit 2)
  (geometry-shader-bit 4)
  (tess-control-shader-bit 8)
  (tess-evaluation-shader-bit 16)
  (all-shader-bits 4294967295)
  (program-separable 33368)
  (active-program 33369)
  (program-pipeline-binding 33370))

(define-enumeration
  arb-compute-shader
  (compute-shader-bit 32)
  (max-compute-shared-memory-size 33378)
  (max-compute-uniform-components 33379)
  (max-compute-atomic-counter-buffers 33380)
  (max-compute-atomic-counters 33381)
  (max-combined-compute-uniform-components 33382)
  (compute-local-work-size 33383)
  (max-compute-local-invocations 37099)
  (uniform-block-referenced-by-compute-shader
    37100)
  (atomic-counter-buffer-referenced-by-compute-shader
    37101)
  (dispatch-indirect-buffer 37102)
  (dispatch-indirect-buffer-binding 37103)
  (compute-shader 37305)
  (max-compute-uniform-blocks 37307)
  (max-compute-texture-image-units 37308)
  (max-compute-image-uniforms 37309)
  (max-compute-work-group-count 37310)
  (max-compute-work-group-size 37311))

(define-enumeration
  ext-separate-shader-objects
  (vertex-shader-bit-ext 1)
  (fragment-shader-bit-ext 2)
  (all-shader-bits-ext 4294967295)
  (program-separable-ext 33368)
  (active-program-ext 33369)
  (program-pipeline-binding-ext 33370)
  (active-program-ext 35725))

(define-enumeration
  ext-shader-image-load-store
  (vertex-attrib-array-barrier-bit-ext 1)
  (element-array-barrier-bit-ext 2)
  (uniform-barrier-bit-ext 4)
  (texture-fetch-barrier-bit-ext 8)
  (shader-image-access-barrier-bit-ext 32)
  (command-barrier-bit-ext 64)
  (pixel-buffer-barrier-bit-ext 128)
  (texture-update-barrier-bit-ext 256)
  (buffer-update-barrier-bit-ext 512)
  (framebuffer-barrier-bit-ext 1024)
  (transform-feedback-barrier-bit-ext 2048)
  (atomic-counter-barrier-bit-ext 4096)
  (all-barrier-bits-ext 4294967295)
  (max-image-units-ext 36664)
  (max-combined-image-units-and-fragment-outputs-ext
    36665)
  (image-binding-name-ext 36666)
  (image-binding-level-ext 36667)
  (image-binding-layered-ext 36668)
  (image-binding-layer-ext 36669)
  (image-binding-access-ext 36670)
  (image-1d-ext 36940)
  (image-2d-ext 36941)
  (image-3d-ext 36942)
  (image-2d-rect-ext 36943)
  (image-cube-ext 36944)
  (image-buffer-ext 36945)
  (image-1d-array-ext 36946)
  (image-2d-array-ext 36947)
  (image-cube-map-array-ext 36948)
  (image-2d-multisample-ext 36949)
  (image-2d-multisample-array-ext 36950)
  (int-image-1d-ext 36951)
  (int-image-2d-ext 36952)
  (int-image-3d-ext 36953)
  (int-image-2d-rect-ext 36954)
  (int-image-cube-ext 36955)
  (int-image-buffer-ext 36956)
  (int-image-1d-array-ext 36957)
  (int-image-2d-array-ext 36958)
  (int-image-cube-map-array-ext 36959)
  (int-image-2d-multisample-ext 36960)
  (int-image-2d-multisample-array-ext 36961)
  (unsigned-int-image-1d-ext 36962)
  (unsigned-int-image-2d-ext 36963)
  (unsigned-int-image-3d-ext 36964)
  (unsigned-int-image-2d-rect-ext 36965)
  (unsigned-int-image-cube-ext 36966)
  (unsigned-int-image-buffer-ext 36967)
  (unsigned-int-image-1d-array-ext 36968)
  (unsigned-int-image-2d-array-ext 36969)
  (unsigned-int-image-cube-map-array-ext 36970)
  (unsigned-int-image-2d-multisample-ext 36971)
  (unsigned-int-image-2d-multisample-array-ext
    36972)
  (max-image-samples-ext 36973)
  (image-binding-format-ext 36974))

(define-enumeration
  arb-shader-image-load-store
  (vertex-attrib-array-barrier-bit 1)
  (element-array-barrier-bit 2)
  (uniform-barrier-bit 4)
  (texture-fetch-barrier-bit 8)
  (shader-image-access-barrier-bit 32)
  (command-barrier-bit 64)
  (pixel-buffer-barrier-bit 128)
  (texture-update-barrier-bit 256)
  (buffer-update-barrier-bit 512)
  (framebuffer-barrier-bit 1024)
  (transform-feedback-barrier-bit 2048)
  (atomic-counter-barrier-bit 4096)
  (all-barrier-bits 4294967295)
  (max-image-units 36664)
  (max-combined-image-units-and-fragment-outputs
    36665)
  (image-binding-name 36666)
  (image-binding-level 36667)
  (image-binding-layered 36668)
  (image-binding-layer 36669)
  (image-binding-access 36670)
  (image-1d 36940)
  (image-2d 36941)
  (image-3d 36942)
  (image-2d-rect 36943)
  (image-cube 36944)
  (image-buffer 36945)
  (image-1d-array 36946)
  (image-2d-array 36947)
  (image-cube-map-array 36948)
  (image-2d-multisample 36949)
  (image-2d-multisample-array 36950)
  (int-image-1d 36951)
  (int-image-2d 36952)
  (int-image-3d 36953)
  (int-image-2d-rect 36954)
  (int-image-cube 36955)
  (int-image-buffer 36956)
  (int-image-1d-array 36957)
  (int-image-2d-array 36958)
  (int-image-cube-map-array 36959)
  (int-image-2d-multisample 36960)
  (int-image-2d-multisample-array 36961)
  (unsigned-int-image-1d 36962)
  (unsigned-int-image-2d 36963)
  (unsigned-int-image-3d 36964)
  (unsigned-int-image-2d-rect 36965)
  (unsigned-int-image-cube 36966)
  (unsigned-int-image-buffer 36967)
  (unsigned-int-image-1d-array 36968)
  (unsigned-int-image-2d-array 36969)
  (unsigned-int-image-cube-map-array 36970)
  (unsigned-int-image-2d-multisample 36971)
  (unsigned-int-image-2d-multisample-array 36972)
  (max-image-samples 36973)
  (image-binding-format 36974)
  (image-format-compatibility-type 37063)
  (image-format-compatibility-by-size 37064)
  (image-format-compatibility-by-class 37065)
  (max-vertex-image-uniforms 37066)
  (max-tess-control-image-uniforms 37067)
  (max-tess-evaluation-image-uniforms 37068)
  (max-geometry-image-uniforms 37069)
  (max-fragment-image-uniforms 37070)
  (max-combined-image-uniforms 37071))

(define-enumeration
  arb-shader-storage-buffer-object
  (shader-storage-barrier-bit 8192)
  (shader-storage-buffer 37074)
  (shader-storage-buffer-binding 37075)
  (shader-storage-buffer-start 37076)
  (shader-storage-buffer-size 37077)
  (max-vertex-shader-storage-blocks 37078)
  (max-geometry-shader-storage-blocks 37079)
  (max-tess-control-shader-storage-blocks 37080)
  (max-tess-evaluation-shader-storage-blocks 37081)
  (max-fragment-shader-storage-blocks 37082)
  (max-compute-shader-storage-blocks 37083)
  (max-combined-shader-storage-blocks 37084)
  (max-shader-storage-buffer-bindings 37085)
  (max-shader-storage-block-size 37086)
  (shader-storage-buffer-offset-alignment 37087)
  (max-combined-shader-output-resources 36665)
  (max-combined-image-units-and-fragment-outputs
    36665))

(define-enumeration
  intel-map-texture
  (layout-default-intel 0)
  (layout-linear-intel 1)
  (layout-linear-cpu-cached-intel 2)
  (texture-memory-layout-intel 33791))

(define-enumeration boolean (false 0) (true 1))

(define-enumeration
  begin-mode
  (points 0)
  (lines 1)
  (line-loop 2)
  (line-strip 3)
  (triangles 4)
  (triangle-strip 5)
  (triangle-fan 6)
  (quads 7)
  (quad-strip 8)
  (polygon 9))

(define-enumeration
  version-3-2
  (lines-adjacency 10)
  (line-strip-adjacency 11)
  (triangles-adjacency 12)
  (triangle-strip-adjacency 13)
  (program-point-size 34370)
  (depth-clamp 34383)
  (texture-cube-map-seamless 34895)
  (geometry-vertices-out 35094)
  (geometry-input-type 35095)
  (geometry-output-type 35096)
  (max-geometry-texture-image-units 35881)
  (framebuffer-attachment-layered 36263)
  (framebuffer-incomplete-layer-targets 36264)
  (geometry-shader 36313)
  (max-geometry-uniform-components 36319)
  (max-geometry-output-vertices 36320)
  (max-geometry-total-output-components 36321)
  (quads-follow-provoking-vertex-convention 36428)
  (first-vertex-convention 36429)
  (last-vertex-convention 36430)
  (provoking-vertex 36431)
  (sample-position 36432)
  (sample-mask 36433)
  (sample-mask-value 36434)
  (max-sample-mask-words 36441)
  (texture-2d-multisample 37120)
  (proxy-texture-2d-multisample 37121)
  (texture-2d-multisample-array 37122)
  (proxy-texture-2d-multisample-array 37123)
  (texture-binding-2d-multisample 37124)
  (texture-binding-2d-multisample-array 37125)
  (texture-samples 37126)
  (texture-fixed-sample-locations 37127)
  (sampler-2d-multisample 37128)
  (int-sampler-2d-multisample 37129)
  (unsigned-int-sampler-2d-multisample 37130)
  (sampler-2d-multisample-array 37131)
  (int-sampler-2d-multisample-array 37132)
  (unsigned-int-sampler-2d-multisample-array 37133)
  (max-color-texture-samples 37134)
  (max-depth-texture-samples 37135)
  (max-integer-samples 37136)
  (max-server-wait-timeout 37137)
  (object-type 37138)
  (sync-condition 37139)
  (sync-status 37140)
  (sync-flags 37141)
  (sync-fence 37142)
  (sync-gpu-commands-complete 37143)
  (unsignaled 37144)
  (signaled 37145)
  (already-signaled 37146)
  (timeout-expired 37147)
  (condition-satisfied 37148)
  (wait-failed 37149)
  (timeout-ignored 18446744073709551615)
  (sync-flush-commands-bit 1)
  (timeout-ignored 18446744073709551615)
  (max-vertex-output-components 37154)
  (max-geometry-input-components 37155)
  (max-geometry-output-components 37156)
  (max-fragment-input-components 37157)
  (context-core-profile-bit 1)
  (context-compatibility-profile-bit 2)
  (context-profile-mask 37158))

(define-enumeration
  arb-geometry-shader-4
  (lines-adjacency-arb 10)
  (line-strip-adjacency-arb 11)
  (triangles-adjacency-arb 12)
  (triangle-strip-adjacency-arb 13)
  (program-point-size-arb 34370)
  (max-varying-components 35659)
  (max-geometry-texture-image-units-arb 35881)
  (framebuffer-attachment-object-type 36048)
  (framebuffer-attachment-object-type-ext 36048)
  (framebuffer-attachment-object-name 36049)
  (framebuffer-attachment-object-name-ext 36049)
  (framebuffer-attachment-texture-level 36050)
  (framebuffer-attachment-texture-level-ext 36050)
  (framebuffer-attachment-texture-cube-map-face
    36051)
  (framebuffer-attachment-texture-cube-map-face-ext
    36051)
  (framebuffer-attachment-texture-layer 36052)
  (framebuffer-attachment-texture-3d-zoffset-ext
    36052)
  (framebuffer-complete 36053)
  (framebuffer-complete-ext 36053)
  (framebuffer-incomplete-attachment 36054)
  (framebuffer-incomplete-attachment-ext 36054)
  (framebuffer-incomplete-missing-attachment 36055)
  (framebuffer-incomplete-missing-attachment-ext
    36055)
  (framebuffer-incomplete-dimensions-ext 36057)
  (framebuffer-incomplete-formats-ext 36058)
  (framebuffer-incomplete-draw-buffer 36059)
  (framebuffer-incomplete-draw-buffer-ext 36059)
  (framebuffer-incomplete-read-buffer 36060)
  (framebuffer-incomplete-read-buffer-ext 36060)
  (framebuffer-unsupported 36061)
  (framebuffer-unsupported-ext 36061)
  (max-color-attachments 36063)
  (max-color-attachments-ext 36063)
  (color-attachment0 36064)
  (color-attachment0-ext 36064)
  (color-attachment1 36065)
  (color-attachment1-ext 36065)
  (color-attachment2 36066)
  (color-attachment2-ext 36066)
  (color-attachment3 36067)
  (color-attachment3-ext 36067)
  (color-attachment4 36068)
  (color-attachment4-ext 36068)
  (color-attachment5 36069)
  (color-attachment5-ext 36069)
  (color-attachment6 36070)
  (color-attachment6-ext 36070)
  (color-attachment7 36071)
  (color-attachment7-ext 36071)
  (color-attachment8 36072)
  (color-attachment8-ext 36072)
  (color-attachment9 36073)
  (color-attachment9-ext 36073)
  (color-attachment10 36074)
  (color-attachment10-ext 36074)
  (color-attachment11 36075)
  (color-attachment11-ext 36075)
  (color-attachment12 36076)
  (color-attachment12-ext 36076)
  (color-attachment13 36077)
  (color-attachment13-ext 36077)
  (color-attachment14 36078)
  (color-attachment14-ext 36078)
  (color-attachment15 36079)
  (color-attachment15-ext 36079)
  (depth-attachment 36096)
  (depth-attachment-ext 36096)
  (stencil-attachment 36128)
  (stencil-attachment-ext 36128)
  (framebuffer 36160)
  (framebuffer-ext 36160)
  (renderbuffer 36161)
  (renderbuffer-ext 36161)
  (renderbuffer-width 36162)
  (renderbuffer-width-ext 36162)
  (renderbuffer-height 36163)
  (renderbuffer-height-ext 36163)
  (renderbuffer-internal-format 36164)
  (renderbuffer-internal-format-ext 36164)
  (stencil-index1 36166)
  (stencil-index1-ext 36166)
  (stencil-index4 36167)
  (stencil-index4-ext 36167)
  (stencil-index8 36168)
  (stencil-index8-ext 36168)
  (stencil-index16 36169)
  (stencil-index16-ext 36169)
  (renderbuffer-red-size 36176)
  (renderbuffer-red-size-ext 36176)
  (renderbuffer-green-size 36177)
  (renderbuffer-green-size-ext 36177)
  (renderbuffer-blue-size 36178)
  (renderbuffer-blue-size-ext 36178)
  (renderbuffer-alpha-size 36179)
  (renderbuffer-alpha-size-ext 36179)
  (renderbuffer-depth-size 36180)
  (renderbuffer-depth-size-ext 36180)
  (renderbuffer-stencil-size 36181)
  (renderbuffer-stencil-size-ext 36181)
  (framebuffer-attachment-layered-arb 36263)
  (framebuffer-incomplete-layer-targets-arb 36264)
  (framebuffer-incomplete-layer-count-arb 36265)
  (geometry-shader-arb 36313)
  (geometry-vertices-out-arb 36314)
  (geometry-input-type-arb 36315)
  (geometry-output-type-arb 36316)
  (max-geometry-varying-components-arb 36317)
  (max-vertex-varying-components-arb 36318)
  (max-geometry-uniform-components-arb 36319)
  (max-geometry-output-vertices-arb 36320)
  (max-geometry-total-output-components-arb 36321))

(define-enumeration
  nv-geometry-program-4
  (lines-adjacency-ext 10)
  (line-strip-adjacency-ext 11)
  (triangles-adjacency-ext 12)
  (triangle-strip-adjacency-ext 13)
  (program-point-size-ext 34370)
  (geometry-program-nv 35878)
  (max-program-output-vertices-nv 35879)
  (max-program-total-output-components-nv 35880)
  (max-geometry-texture-image-units-ext 35881)
  (framebuffer-attachment-texture-layer-ext 36052)
  (framebuffer-attachment-layered-ext 36263)
  (framebuffer-incomplete-layer-targets-ext 36264)
  (framebuffer-incomplete-layer-count-ext 36265)
  (geometry-vertices-out-ext 36314)
  (geometry-input-type-ext 36315)
  (geometry-output-type-ext 36316))

(define-enumeration
  arb-tessellation-shader
  (patches 14)
  (uniform-block-referenced-by-tess-control-shader
    34032)
  (uniform-block-referenced-by-tess-evaluation-shader
    34033)
  (max-tess-control-input-components 34924)
  (max-tess-evaluation-input-components 34925)
  (max-combined-tess-control-uniform-components
    36382)
  (max-combined-tess-evaluation-uniform-components
    36383)
  (patch-vertices 36466)
  (patch-default-inner-level 36467)
  (patch-default-outer-level 36468)
  (tess-control-output-vertices 36469)
  (tess-gen-mode 36470)
  (tess-gen-spacing 36471)
  (tess-gen-vertex-order 36472)
  (tess-gen-point-mode 36473)
  (isolines 36474)
  (fractional-odd 36475)
  (fractional-even 36476)
  (max-patch-vertices 36477)
  (max-tess-gen-level 36478)
  (max-tess-control-uniform-components 36479)
  (max-tess-evaluation-uniform-components 36480)
  (max-tess-control-texture-image-units 36481)
  (max-tess-evaluation-texture-image-units 36482)
  (max-tess-control-output-components 36483)
  (max-tess-patch-components 36484)
  (max-tess-control-total-output-components 36485)
  (max-tess-evaluation-output-components 36486)
  (tess-evaluation-shader 36487)
  (tess-control-shader 36488)
  (max-tess-control-uniform-blocks 36489)
  (max-tess-evaluation-uniform-blocks 36490))

(define-enumeration
  nv-gpu-shader-5
  (patches 14)
  (int64-nv 5134)
  (unsigned-int64-nv 5135)
  (int8-nv 36832)
  (int8-vec2-nv 36833)
  (int8-vec3-nv 36834)
  (int8-vec4-nv 36835)
  (int16-nv 36836)
  (int16-vec2-nv 36837)
  (int16-vec3-nv 36838)
  (int16-vec4-nv 36839)
  (int64-vec2-nv 36841)
  (int64-vec3-nv 36842)
  (int64-vec4-nv 36843)
  (unsigned-int8-nv 36844)
  (unsigned-int8-vec2-nv 36845)
  (unsigned-int8-vec3-nv 36846)
  (unsigned-int8-vec4-nv 36847)
  (unsigned-int16-nv 36848)
  (unsigned-int16-vec2-nv 36849)
  (unsigned-int16-vec3-nv 36850)
  (unsigned-int16-vec4-nv 36851)
  (unsigned-int64-vec2-nv 36853)
  (unsigned-int64-vec3-nv 36854)
  (unsigned-int64-vec4-nv 36855)
  (float16-nv 36856)
  (float16-vec2-nv 36857)
  (float16-vec3-nv 36858)
  (float16-vec4-nv 36859))

(define-enumeration
  accum-op
  (accum 256)
  (load 257)
  (return 258)
  (mult 259)
  (add 260))

(define-enumeration
  alpha-function
  (never 512)
  (less 513)
  (equal 514)
  (lequal 515)
  (greater 516)
  (notequal 517)
  (gequal 518)
  (always 519))

(define-enumeration
  blending-factor-dest
  (zero 0)
  (one 1)
  (src-color 768)
  (one-minus-src-color 769)
  (src-alpha 770)
  (one-minus-src-alpha 771)
  (dst-alpha 772)
  (one-minus-dst-alpha 773)
  (constant-color-ext 32769)
  (one-minus-constant-color-ext 32770)
  (constant-alpha-ext 32771)
  (one-minus-constant-alpha-ext 32772))

(define-enumeration
  blending-factor-src
  (zero 0)
  (one 1)
  (dst-color 774)
  (one-minus-dst-color 775)
  (src-alpha-saturate 776)
  (src-alpha 770)
  (one-minus-src-alpha 771)
  (dst-alpha 772)
  (one-minus-dst-alpha 773)
  (constant-color-ext 32769)
  (one-minus-constant-color-ext 32770)
  (constant-alpha-ext 32771)
  (one-minus-constant-alpha-ext 32772))

(define-enumeration
  blend-equation-mode-ext
  (logic-op 3057)
  (func-add-ext 32774)
  (min-ext 32775)
  (max-ext 32776)
  (func-subtract-ext 32778)
  (func-reverse-subtract-ext 32779)
  (alpha-min-sgix 33568)
  (alpha-max-sgix 33569))

(define-enumeration
  color-material-face
  (front 1028)
  (back 1029)
  (front-and-back 1032))

(define-enumeration
  color-material-parameter
  (ambient 4608)
  (diffuse 4609)
  (specular 4610)
  (emission 5632)
  (ambient-and-diffuse 5634))

(define-enumeration
  color-pointer-type
  (byte 5120)
  (unsigned-byte 5121)
  (short 5122)
  (unsigned-short 5123)
  (int 5124)
  (unsigned-int 5125)
  (float 5126)
  (double 5130))

(define-enumeration
  color-table-parameter-p-name-sgi
  (color-table-scale-sgi 32982)
  (color-table-bias-sgi 32983))

(define-enumeration
  color-table-target-sgi
  (color-table-sgi 32976)
  (post-convolution-color-table-sgi 32977)
  (post-color-matrix-color-table-sgi 32978)
  (proxy-color-table-sgi 32979)
  (proxy-post-convolution-color-table-sgi 32980)
  (proxy-post-color-matrix-color-table-sgi 32981)
  (texture-color-table-sgi 32956)
  (proxy-texture-color-table-sgi 32957))

(define-enumeration
  convolution-border-mode-ext
  (reduce-ext 32790))

(define-enumeration
  convolution-parameter-ext
  (convolution-border-mode-ext 32787)
  (convolution-filter-scale-ext 32788)
  (convolution-filter-bias-ext 32789))

(define-enumeration
  convolution-target-ext
  (convolution-1d-ext 32784)
  (convolution-2d-ext 32785))

(define-enumeration
  cull-face-mode
  (front 1028)
  (back 1029)
  (front-and-back 1032))

(define-enumeration
  depth-function
  (never 512)
  (less 513)
  (equal 514)
  (lequal 515)
  (greater 516)
  (notequal 517)
  (gequal 518)
  (always 519))

(define-enumeration
  draw-buffer-mode
  (none 0)
  (front-left 1024)
  (front-right 1025)
  (back-left 1026)
  (back-right 1027)
  (front 1028)
  (back 1029)
  (left 1030)
  (right 1031)
  (front-and-back 1032)
  (aux0 1033)
  (aux1 1034)
  (aux2 1035)
  (aux3 1036))

(define-enumeration
  oes-framebuffer-object
  (fog 2912)
  (lighting 2896)
  (texture-1d 3552)
  (texture-2d 3553)
  (line-stipple 2852)
  (polygon-stipple 2882)
  (cull-face 2884)
  (alpha-test 3008)
  (blend 3042)
  (index-logic-op 3057)
  (color-logic-op 3058)
  (dither 3024)
  (stencil-test 2960)
  (depth-test 2929)
  (clip-plane0 12288)
  (clip-plane1 12289)
  (clip-plane2 12290)
  (clip-plane3 12291)
  (clip-plane4 12292)
  (clip-plane5 12293)
  (light0 16384)
  (light1 16385)
  (light2 16386)
  (light3 16387)
  (light4 16388)
  (light5 16389)
  (light6 16390)
  (light7 16391)
  (texture-gen-s 3168)
  (texture-gen-t 3169)
  (texture-gen-r 3170)
  (texture-gen-q 3171)
  (map1-vertex-3 3479)
  (map1-vertex-4 3480)
  (map1-color-4 3472)
  (map1-index 3473)
  (map1-normal 3474)
  (map1-texture-coord-1 3475)
  (map1-texture-coord-2 3476)
  (map1-texture-coord-3 3477)
  (map1-texture-coord-4 3478)
  (map2-vertex-3 3511)
  (map2-vertex-4 3512)
  (map2-color-4 3504)
  (map2-index 3505)
  (map2-normal 3506)
  (map2-texture-coord-1 3507)
  (map2-texture-coord-2 3508)
  (map2-texture-coord-3 3509)
  (map2-texture-coord-4 3510)
  (point-smooth 2832)
  (line-smooth 2848)
  (polygon-smooth 2881)
  (scissor-test 3089)
  (color-material 2903)
  (normalize 2977)
  (auto-normal 3456)
  (polygon-offset-point 10753)
  (polygon-offset-line 10754)
  (polygon-offset-fill 32823)
  (vertex-array 32884)
  (normal-array 32885)
  (color-array 32886)
  (index-array 32887)
  (texture-coord-array 32888)
  (edge-flag-array 32889)
  (convolution-1d-ext 32784)
  (convolution-2d-ext 32785)
  (separable-2d-ext 32786)
  (histogram-ext 32804)
  (minmax-ext 32814)
  (rescale-normal-ext 32826)
  (shared-texture-palette-ext 33275)
  (texture-3d-ext 32879)
  (multisample-sgis 32925)
  (sample-alpha-to-mask-sgis 32926)
  (sample-alpha-to-one-sgis 32927)
  (sample-mask-sgis 32928)
  (texture-4d-sgis 33076)
  (async-histogram-sgix 33580)
  (async-tex-image-sgix 33628)
  (async-draw-pixels-sgix 33629)
  (async-read-pixels-sgix 33630)
  (calligraphic-fragment-sgix 33155)
  (fog-offset-sgix 33176)
  (fragment-lighting-sgix 33792)
  (fragment-color-material-sgix 33793)
  (fragment-light0-sgix 33804)
  (fragment-light1-sgix 33805)
  (fragment-light2-sgix 33806)
  (fragment-light3-sgix 33807)
  (fragment-light4-sgix 33808)
  (fragment-light5-sgix 33809)
  (fragment-light6-sgix 33810)
  (fragment-light7-sgix 33811)
  (framezoom-sgix 33163)
  (interlace-sgix 32916)
  (ir-instrument1-sgix 33151)
  (pixel-tex-gen-sgix 33081)
  (pixel-texture-sgis 33619)
  (reference-plane-sgix 33149)
  (sprite-sgix 33096)
  (color-table-sgi 32976)
  (post-convolution-color-table-sgi 32977)
  (post-color-matrix-color-table-sgi 32978)
  (texture-color-table-sgi 32956)
  (invalid-framebuffer-operation-oes 1286)
  (rgba4-oes 32854)
  (rgb5-a1-oes 32855)
  (depth-component16-oes 33189)
  (max-renderbuffer-size-oes 34024)
  (framebuffer-binding-oes 36006)
  (renderbuffer-binding-oes 36007)
  (framebuffer-attachment-object-type-oes 36048)
  (framebuffer-attachment-object-name-oes 36049)
  (framebuffer-attachment-texture-level-oes 36050)
  (framebuffer-attachment-texture-cube-map-face-oes
    36051)
  (framebuffer-attachment-texture-3d-zoffset-oes
    36052)
  (framebuffer-complete-oes 36053)
  (framebuffer-incomplete-attachment-oes 36054)
  (framebuffer-incomplete-missing-attachment-oes
    36055)
  (framebuffer-incomplete-dimensions-oes 36057)
  (framebuffer-incomplete-formats-oes 36058)
  (framebuffer-incomplete-draw-buffer-oes 36059)
  (framebuffer-incomplete-read-buffer-oes 36060)
  (framebuffer-unsupported-oes 36061)
  (color-attachment0-oes 36064)
  (depth-attachment-oes 36096)
  (stencil-attachment-oes 36128)
  (framebuffer-oes 36160)
  (renderbuffer-oes 36161)
  (renderbuffer-width-oes 36162)
  (renderbuffer-height-oes 36163)
  (renderbuffer-internal-format-oes 36164)
  (stencil-index1-oes 36166)
  (stencil-index4-oes 36167)
  (stencil-index8-oes 36168)
  (renderbuffer-red-size-oes 36176)
  (renderbuffer-green-size-oes 36177)
  (renderbuffer-blue-size-oes 36178)
  (renderbuffer-alpha-size-oes 36179)
  (renderbuffer-depth-size-oes 36180)
  (renderbuffer-stencil-size-oes 36181)
  (rgb565-oes 36194))

(define-enumeration
  enable-cap
  (fog 2912)
  (lighting 2896)
  (texture-1d 3552)
  (texture-2d 3553)
  (line-stipple 2852)
  (polygon-stipple 2882)
  (cull-face 2884)
  (alpha-test 3008)
  (blend 3042)
  (index-logic-op 3057)
  (color-logic-op 3058)
  (dither 3024)
  (stencil-test 2960)
  (depth-test 2929)
  (clip-plane0 12288)
  (clip-plane1 12289)
  (clip-plane2 12290)
  (clip-plane3 12291)
  (clip-plane4 12292)
  (clip-plane5 12293)
  (light0 16384)
  (light1 16385)
  (light2 16386)
  (light3 16387)
  (light4 16388)
  (light5 16389)
  (light6 16390)
  (light7 16391)
  (texture-gen-s 3168)
  (texture-gen-t 3169)
  (texture-gen-r 3170)
  (texture-gen-q 3171)
  (map1-vertex-3 3479)
  (map1-vertex-4 3480)
  (map1-color-4 3472)
  (map1-index 3473)
  (map1-normal 3474)
  (map1-texture-coord-1 3475)
  (map1-texture-coord-2 3476)
  (map1-texture-coord-3 3477)
  (map1-texture-coord-4 3478)
  (map2-vertex-3 3511)
  (map2-vertex-4 3512)
  (map2-color-4 3504)
  (map2-index 3505)
  (map2-normal 3506)
  (map2-texture-coord-1 3507)
  (map2-texture-coord-2 3508)
  (map2-texture-coord-3 3509)
  (map2-texture-coord-4 3510)
  (point-smooth 2832)
  (line-smooth 2848)
  (polygon-smooth 2881)
  (scissor-test 3089)
  (color-material 2903)
  (normalize 2977)
  (auto-normal 3456)
  (polygon-offset-point 10753)
  (polygon-offset-line 10754)
  (polygon-offset-fill 32823)
  (vertex-array 32884)
  (normal-array 32885)
  (color-array 32886)
  (index-array 32887)
  (texture-coord-array 32888)
  (edge-flag-array 32889)
  (convolution-1d-ext 32784)
  (convolution-2d-ext 32785)
  (separable-2d-ext 32786)
  (histogram-ext 32804)
  (minmax-ext 32814)
  (rescale-normal-ext 32826)
  (shared-texture-palette-ext 33275)
  (texture-3d-ext 32879)
  (multisample-sgis 32925)
  (sample-alpha-to-mask-sgis 32926)
  (sample-alpha-to-one-sgis 32927)
  (sample-mask-sgis 32928)
  (texture-4d-sgis 33076)
  (async-histogram-sgix 33580)
  (async-tex-image-sgix 33628)
  (async-draw-pixels-sgix 33629)
  (async-read-pixels-sgix 33630)
  (calligraphic-fragment-sgix 33155)
  (fog-offset-sgix 33176)
  (fragment-lighting-sgix 33792)
  (fragment-color-material-sgix 33793)
  (fragment-light0-sgix 33804)
  (fragment-light1-sgix 33805)
  (fragment-light2-sgix 33806)
  (fragment-light3-sgix 33807)
  (fragment-light4-sgix 33808)
  (fragment-light5-sgix 33809)
  (fragment-light6-sgix 33810)
  (fragment-light7-sgix 33811)
  (framezoom-sgix 33163)
  (interlace-sgix 32916)
  (ir-instrument1-sgix 33151)
  (pixel-tex-gen-sgix 33081)
  (pixel-texture-sgis 33619)
  (reference-plane-sgix 33149)
  (sprite-sgix 33096)
  (color-table-sgi 32976)
  (post-convolution-color-table-sgi 32977)
  (post-color-matrix-color-table-sgi 32978)
  (texture-color-table-sgi 32956))

(define-enumeration
  error-code
  (no-error 0)
  (invalid-enum 1280)
  (invalid-value 1281)
  (invalid-operation 1282)
  (stack-overflow 1283)
  (stack-underflow 1284)
  (out-of-memory 1285)
  (table-too-large-ext 32817)
  (texture-too-large-ext 32869))

(define-enumeration
  arb-framebuffer-object
  (invalid-framebuffer-operation 1286)
  (framebuffer-attachment-color-encoding 33296)
  (framebuffer-attachment-component-type 33297)
  (framebuffer-attachment-red-size 33298)
  (framebuffer-attachment-green-size 33299)
  (framebuffer-attachment-blue-size 33300)
  (framebuffer-attachment-alpha-size 33301)
  (framebuffer-attachment-depth-size 33302)
  (framebuffer-attachment-stencil-size 33303)
  (framebuffer-default 33304)
  (framebuffer-undefined 33305)
  (depth-stencil-attachment 33306)
  (index 33314)
  (max-renderbuffer-size 34024)
  (depth-stencil 34041)
  (unsigned-int-24-8 34042)
  (depth24-stencil8 35056)
  (texture-stencil-size 35057)
  (texture-red-type 35856)
  (texture-green-type 35857)
  (texture-blue-type 35858)
  (texture-alpha-type 35859)
  (texture-luminance-type 35860)
  (texture-intensity-type 35861)
  (texture-depth-type 35862)
  (unsigned-normalized 35863)
  (framebuffer-binding 36006)
  (draw-framebuffer-binding 36006)
  (renderbuffer-binding 36007)
  (read-framebuffer 36008)
  (draw-framebuffer 36009)
  (read-framebuffer-binding 36010)
  (renderbuffer-samples 36011)
  (framebuffer-attachment-object-type 36048)
  (framebuffer-attachment-object-type-ext 36048)
  (framebuffer-attachment-object-name 36049)
  (framebuffer-attachment-object-name-ext 36049)
  (framebuffer-attachment-texture-level 36050)
  (framebuffer-attachment-texture-level-ext 36050)
  (framebuffer-attachment-texture-cube-map-face
    36051)
  (framebuffer-attachment-texture-cube-map-face-ext
    36051)
  (framebuffer-attachment-texture-layer 36052)
  (framebuffer-attachment-texture-3d-zoffset-ext
    36052)
  (framebuffer-complete 36053)
  (framebuffer-complete-ext 36053)
  (framebuffer-incomplete-attachment 36054)
  (framebuffer-incomplete-attachment-ext 36054)
  (framebuffer-incomplete-missing-attachment 36055)
  (framebuffer-incomplete-missing-attachment-ext
    36055)
  (framebuffer-incomplete-dimensions-ext 36057)
  (framebuffer-incomplete-formats-ext 36058)
  (framebuffer-incomplete-draw-buffer 36059)
  (framebuffer-incomplete-draw-buffer-ext 36059)
  (framebuffer-incomplete-read-buffer 36060)
  (framebuffer-incomplete-read-buffer-ext 36060)
  (framebuffer-unsupported 36061)
  (framebuffer-unsupported-ext 36061)
  (max-color-attachments 36063)
  (max-color-attachments-ext 36063)
  (color-attachment0 36064)
  (color-attachment0-ext 36064)
  (color-attachment1 36065)
  (color-attachment1-ext 36065)
  (color-attachment2 36066)
  (color-attachment2-ext 36066)
  (color-attachment3 36067)
  (color-attachment3-ext 36067)
  (color-attachment4 36068)
  (color-attachment4-ext 36068)
  (color-attachment5 36069)
  (color-attachment5-ext 36069)
  (color-attachment6 36070)
  (color-attachment6-ext 36070)
  (color-attachment7 36071)
  (color-attachment7-ext 36071)
  (color-attachment8 36072)
  (color-attachment8-ext 36072)
  (color-attachment9 36073)
  (color-attachment9-ext 36073)
  (color-attachment10 36074)
  (color-attachment10-ext 36074)
  (color-attachment11 36075)
  (color-attachment11-ext 36075)
  (color-attachment12 36076)
  (color-attachment12-ext 36076)
  (color-attachment13 36077)
  (color-attachment13-ext 36077)
  (color-attachment14 36078)
  (color-attachment14-ext 36078)
  (color-attachment15 36079)
  (color-attachment15-ext 36079)
  (depth-attachment 36096)
  (depth-attachment-ext 36096)
  (stencil-attachment 36128)
  (stencil-attachment-ext 36128)
  (framebuffer 36160)
  (framebuffer-ext 36160)
  (renderbuffer 36161)
  (renderbuffer-ext 36161)
  (renderbuffer-width 36162)
  (renderbuffer-width-ext 36162)
  (renderbuffer-height 36163)
  (renderbuffer-height-ext 36163)
  (renderbuffer-internal-format 36164)
  (renderbuffer-internal-format-ext 36164)
  (stencil-index1 36166)
  (stencil-index1-ext 36166)
  (stencil-index4 36167)
  (stencil-index4-ext 36167)
  (stencil-index8 36168)
  (stencil-index8-ext 36168)
  (stencil-index16 36169)
  (stencil-index16-ext 36169)
  (renderbuffer-red-size 36176)
  (renderbuffer-red-size-ext 36176)
  (renderbuffer-green-size 36177)
  (renderbuffer-green-size-ext 36177)
  (renderbuffer-blue-size 36178)
  (renderbuffer-blue-size-ext 36178)
  (renderbuffer-alpha-size 36179)
  (renderbuffer-alpha-size-ext 36179)
  (renderbuffer-depth-size 36180)
  (renderbuffer-depth-size-ext 36180)
  (renderbuffer-stencil-size 36181)
  (renderbuffer-stencil-size-ext 36181)
  (framebuffer-incomplete-multisample 36182)
  (max-samples 36183))

(define-enumeration
  ext-framebuffer-object
  (invalid-framebuffer-operation-ext 1286)
  (max-renderbuffer-size-ext 34024)
  (framebuffer-binding-ext 36006)
  (renderbuffer-binding-ext 36007)
  (framebuffer-attachment-object-type 36048)
  (framebuffer-attachment-object-type-ext 36048)
  (framebuffer-attachment-object-name 36049)
  (framebuffer-attachment-object-name-ext 36049)
  (framebuffer-attachment-texture-level 36050)
  (framebuffer-attachment-texture-level-ext 36050)
  (framebuffer-attachment-texture-cube-map-face
    36051)
  (framebuffer-attachment-texture-cube-map-face-ext
    36051)
  (framebuffer-attachment-texture-layer 36052)
  (framebuffer-attachment-texture-3d-zoffset-ext
    36052)
  (framebuffer-complete 36053)
  (framebuffer-complete-ext 36053)
  (framebuffer-incomplete-attachment 36054)
  (framebuffer-incomplete-attachment-ext 36054)
  (framebuffer-incomplete-missing-attachment 36055)
  (framebuffer-incomplete-missing-attachment-ext
    36055)
  (framebuffer-incomplete-dimensions-ext 36057)
  (framebuffer-incomplete-formats-ext 36058)
  (framebuffer-incomplete-draw-buffer 36059)
  (framebuffer-incomplete-draw-buffer-ext 36059)
  (framebuffer-incomplete-read-buffer 36060)
  (framebuffer-incomplete-read-buffer-ext 36060)
  (framebuffer-unsupported 36061)
  (framebuffer-unsupported-ext 36061)
  (max-color-attachments 36063)
  (max-color-attachments-ext 36063)
  (color-attachment0 36064)
  (color-attachment0-ext 36064)
  (color-attachment1 36065)
  (color-attachment1-ext 36065)
  (color-attachment2 36066)
  (color-attachment2-ext 36066)
  (color-attachment3 36067)
  (color-attachment3-ext 36067)
  (color-attachment4 36068)
  (color-attachment4-ext 36068)
  (color-attachment5 36069)
  (color-attachment5-ext 36069)
  (color-attachment6 36070)
  (color-attachment6-ext 36070)
  (color-attachment7 36071)
  (color-attachment7-ext 36071)
  (color-attachment8 36072)
  (color-attachment8-ext 36072)
  (color-attachment9 36073)
  (color-attachment9-ext 36073)
  (color-attachment10 36074)
  (color-attachment10-ext 36074)
  (color-attachment11 36075)
  (color-attachment11-ext 36075)
  (color-attachment12 36076)
  (color-attachment12-ext 36076)
  (color-attachment13 36077)
  (color-attachment13-ext 36077)
  (color-attachment14 36078)
  (color-attachment14-ext 36078)
  (color-attachment15 36079)
  (color-attachment15-ext 36079)
  (depth-attachment 36096)
  (depth-attachment-ext 36096)
  (stencil-attachment 36128)
  (stencil-attachment-ext 36128)
  (framebuffer 36160)
  (framebuffer-ext 36160)
  (renderbuffer 36161)
  (renderbuffer-ext 36161)
  (renderbuffer-width 36162)
  (renderbuffer-width-ext 36162)
  (renderbuffer-height 36163)
  (renderbuffer-height-ext 36163)
  (renderbuffer-internal-format 36164)
  (renderbuffer-internal-format-ext 36164)
  (stencil-index1 36166)
  (stencil-index1-ext 36166)
  (stencil-index4 36167)
  (stencil-index4-ext 36167)
  (stencil-index8 36168)
  (stencil-index8-ext 36168)
  (stencil-index16 36169)
  (stencil-index16-ext 36169)
  (renderbuffer-red-size 36176)
  (renderbuffer-red-size-ext 36176)
  (renderbuffer-green-size 36177)
  (renderbuffer-green-size-ext 36177)
  (renderbuffer-blue-size 36178)
  (renderbuffer-blue-size-ext 36178)
  (renderbuffer-alpha-size 36179)
  (renderbuffer-alpha-size-ext 36179)
  (renderbuffer-depth-size 36180)
  (renderbuffer-depth-size-ext 36180)
  (renderbuffer-stencil-size 36181)
  (renderbuffer-stencil-size-ext 36181))

(define-enumeration
  feedback-type
  (#{2d}# 1536)
  (#{3d}# 1537)
  (#{3d-color}# 1538)
  (#{3d-color-texture}# 1539)
  (#{4d-color-texture}# 1540))

(define-enumeration
  feed-back-token
  (pass-through-token 1792)
  (point-token 1793)
  (line-token 1794)
  (polygon-token 1795)
  (bitmap-token 1796)
  (draw-pixel-token 1797)
  (copy-pixel-token 1798)
  (line-reset-token 1799))

(define-bitfield
  ffd-mask-sgix
  (texture-deformation-bit-sgix 1)
  (geometry-deformation-bit-sgix 2))

(define-enumeration
  ffd-target-sgix
  (geometry-deformation-sgix 33172)
  (texture-deformation-sgix 33173))

(define-enumeration
  fog-mode
  (linear 9729)
  (exp 2048)
  (exp2 2049)
  (fog-func-sgis 33066))

(define-enumeration
  fog-parameter
  (fog-color 2918)
  (fog-density 2914)
  (fog-end 2916)
  (fog-index 2913)
  (fog-mode 2917)
  (fog-start 2915)
  (fog-offset-value-sgix 33177))

(define-enumeration
  fragment-light-model-parameter-sgix
  (fragment-light-model-local-viewer-sgix 33800)
  (fragment-light-model-two-side-sgix 33801)
  (fragment-light-model-ambient-sgix 33802)
  (fragment-light-model-normal-interpolation-sgix
    33803))

(define-enumeration
  front-face-direction
  (cw 2304)
  (ccw 2305))

(define-enumeration
  get-color-table-parameter-p-name-sgi
  (color-table-scale-sgi 32982)
  (color-table-bias-sgi 32983)
  (color-table-format-sgi 32984)
  (color-table-width-sgi 32985)
  (color-table-red-size-sgi 32986)
  (color-table-green-size-sgi 32987)
  (color-table-blue-size-sgi 32988)
  (color-table-alpha-size-sgi 32989)
  (color-table-luminance-size-sgi 32990)
  (color-table-intensity-size-sgi 32991))

(define-enumeration
  get-convolution-parameter
  (convolution-border-mode-ext 32787)
  (convolution-filter-scale-ext 32788)
  (convolution-filter-bias-ext 32789)
  (convolution-format-ext 32791)
  (convolution-width-ext 32792)
  (convolution-height-ext 32793)
  (max-convolution-width-ext 32794)
  (max-convolution-height-ext 32795))

(define-enumeration
  get-histogram-parameter-p-name-ext
  (histogram-width-ext 32806)
  (histogram-format-ext 32807)
  (histogram-red-size-ext 32808)
  (histogram-green-size-ext 32809)
  (histogram-blue-size-ext 32810)
  (histogram-alpha-size-ext 32811)
  (histogram-luminance-size-ext 32812)
  (histogram-sink-ext 32813))

(define-enumeration
  get-map-query
  (coeff 2560)
  (order 2561)
  (domain 2562))

(define-enumeration
  get-minmax-parameter-p-name-ext
  (minmax-format-ext 32815)
  (minmax-sink-ext 32816))

(define-enumeration
  get-pixel-map
  (pixel-map-i-to-i 3184)
  (pixel-map-s-to-s 3185)
  (pixel-map-i-to-r 3186)
  (pixel-map-i-to-g 3187)
  (pixel-map-i-to-b 3188)
  (pixel-map-i-to-a 3189)
  (pixel-map-r-to-r 3190)
  (pixel-map-g-to-g 3191)
  (pixel-map-b-to-b 3192)
  (pixel-map-a-to-a 3193))

(define-enumeration
  get-pointerv-p-name
  (vertex-array-pointer 32910)
  (normal-array-pointer 32911)
  (color-array-pointer 32912)
  (index-array-pointer 32913)
  (texture-coord-array-pointer 32914)
  (edge-flag-array-pointer 32915)
  (feedback-buffer-pointer 3568)
  (selection-buffer-pointer 3571)
  (instrument-buffer-pointer-sgix 33152))

(define-enumeration
  get-p-name
  (current-color 2816)
  (current-index 2817)
  (current-normal 2818)
  (current-texture-coords 2819)
  (current-raster-color 2820)
  (current-raster-index 2821)
  (current-raster-texture-coords 2822)
  (current-raster-position 2823)
  (current-raster-position-valid 2824)
  (current-raster-distance 2825)
  (point-smooth 2832)
  (point-size 2833)
  (point-size-range 2834)
  (point-size-granularity 2835)
  (line-smooth 2848)
  (line-width 2849)
  (line-width-range 2850)
  (line-width-granularity 2851)
  (line-stipple 2852)
  (line-stipple-pattern 2853)
  (line-stipple-repeat 2854)
  (smooth-point-size-range 2834)
  (smooth-point-size-granularity 2835)
  (smooth-line-width-range 2850)
  (smooth-line-width-granularity 2851)
  (aliased-point-size-range 33901)
  (aliased-line-width-range 33902)
  (list-mode 2864)
  (max-list-nesting 2865)
  (list-base 2866)
  (list-index 2867)
  (polygon-mode 2880)
  (polygon-smooth 2881)
  (polygon-stipple 2882)
  (edge-flag 2883)
  (cull-face 2884)
  (cull-face-mode 2885)
  (front-face 2886)
  (lighting 2896)
  (light-model-local-viewer 2897)
  (light-model-two-side 2898)
  (light-model-ambient 2899)
  (shade-model 2900)
  (color-material-face 2901)
  (color-material-parameter 2902)
  (color-material 2903)
  (fog 2912)
  (fog-index 2913)
  (fog-density 2914)
  (fog-start 2915)
  (fog-end 2916)
  (fog-mode 2917)
  (fog-color 2918)
  (depth-range 2928)
  (depth-test 2929)
  (depth-writemask 2930)
  (depth-clear-value 2931)
  (depth-func 2932)
  (accum-clear-value 2944)
  (stencil-test 2960)
  (stencil-clear-value 2961)
  (stencil-func 2962)
  (stencil-value-mask 2963)
  (stencil-fail 2964)
  (stencil-pass-depth-fail 2965)
  (stencil-pass-depth-pass 2966)
  (stencil-ref 2967)
  (stencil-writemask 2968)
  (matrix-mode 2976)
  (normalize 2977)
  (viewport 2978)
  (modelview-stack-depth 2979)
  (projection-stack-depth 2980)
  (texture-stack-depth 2981)
  (modelview-matrix 2982)
  (projection-matrix 2983)
  (texture-matrix 2984)
  (attrib-stack-depth 2992)
  (client-attrib-stack-depth 2993)
  (alpha-test 3008)
  (alpha-test-func 3009)
  (alpha-test-ref 3010)
  (dither 3024)
  (blend-dst 3040)
  (blend-src 3041)
  (blend 3042)
  (logic-op-mode 3056)
  (index-logic-op 3057)
  (logic-op 3057)
  (color-logic-op 3058)
  (aux-buffers 3072)
  (draw-buffer 3073)
  (read-buffer 3074)
  (scissor-box 3088)
  (scissor-test 3089)
  (index-clear-value 3104)
  (index-writemask 3105)
  (color-clear-value 3106)
  (color-writemask 3107)
  (index-mode 3120)
  (rgba-mode 3121)
  (doublebuffer 3122)
  (stereo 3123)
  (render-mode 3136)
  (perspective-correction-hint 3152)
  (point-smooth-hint 3153)
  (line-smooth-hint 3154)
  (polygon-smooth-hint 3155)
  (fog-hint 3156)
  (texture-gen-s 3168)
  (texture-gen-t 3169)
  (texture-gen-r 3170)
  (texture-gen-q 3171)
  (pixel-map-i-to-i-size 3248)
  (pixel-map-s-to-s-size 3249)
  (pixel-map-i-to-r-size 3250)
  (pixel-map-i-to-g-size 3251)
  (pixel-map-i-to-b-size 3252)
  (pixel-map-i-to-a-size 3253)
  (pixel-map-r-to-r-size 3254)
  (pixel-map-g-to-g-size 3255)
  (pixel-map-b-to-b-size 3256)
  (pixel-map-a-to-a-size 3257)
  (unpack-swap-bytes 3312)
  (unpack-lsb-first 3313)
  (unpack-row-length 3314)
  (unpack-skip-rows 3315)
  (unpack-skip-pixels 3316)
  (unpack-alignment 3317)
  (pack-swap-bytes 3328)
  (pack-lsb-first 3329)
  (pack-row-length 3330)
  (pack-skip-rows 3331)
  (pack-skip-pixels 3332)
  (pack-alignment 3333)
  (map-color 3344)
  (map-stencil 3345)
  (index-shift 3346)
  (index-offset 3347)
  (red-scale 3348)
  (red-bias 3349)
  (zoom-x 3350)
  (zoom-y 3351)
  (green-scale 3352)
  (green-bias 3353)
  (blue-scale 3354)
  (blue-bias 3355)
  (alpha-scale 3356)
  (alpha-bias 3357)
  (depth-scale 3358)
  (depth-bias 3359)
  (max-eval-order 3376)
  (max-lights 3377)
  (max-clip-distances 3378)
  (max-clip-planes 3378)
  (max-texture-size 3379)
  (max-pixel-map-table 3380)
  (max-attrib-stack-depth 3381)
  (max-modelview-stack-depth 3382)
  (max-name-stack-depth 3383)
  (max-projection-stack-depth 3384)
  (max-texture-stack-depth 3385)
  (max-viewport-dims 3386)
  (max-client-attrib-stack-depth 3387)
  (subpixel-bits 3408)
  (index-bits 3409)
  (red-bits 3410)
  (green-bits 3411)
  (blue-bits 3412)
  (alpha-bits 3413)
  (depth-bits 3414)
  (stencil-bits 3415)
  (accum-red-bits 3416)
  (accum-green-bits 3417)
  (accum-blue-bits 3418)
  (accum-alpha-bits 3419)
  (name-stack-depth 3440)
  (auto-normal 3456)
  (map1-color-4 3472)
  (map1-index 3473)
  (map1-normal 3474)
  (map1-texture-coord-1 3475)
  (map1-texture-coord-2 3476)
  (map1-texture-coord-3 3477)
  (map1-texture-coord-4 3478)
  (map1-vertex-3 3479)
  (map1-vertex-4 3480)
  (map2-color-4 3504)
  (map2-index 3505)
  (map2-normal 3506)
  (map2-texture-coord-1 3507)
  (map2-texture-coord-2 3508)
  (map2-texture-coord-3 3509)
  (map2-texture-coord-4 3510)
  (map2-vertex-3 3511)
  (map2-vertex-4 3512)
  (map1-grid-domain 3536)
  (map1-grid-segments 3537)
  (map2-grid-domain 3538)
  (map2-grid-segments 3539)
  (texture-1d 3552)
  (texture-2d 3553)
  (feedback-buffer-size 3569)
  (feedback-buffer-type 3570)
  (selection-buffer-size 3572)
  (polygon-offset-units 10752)
  (polygon-offset-point 10753)
  (polygon-offset-line 10754)
  (polygon-offset-fill 32823)
  (polygon-offset-factor 32824)
  (texture-binding-1d 32872)
  (texture-binding-2d 32873)
  (texture-binding-3d 32874)
  (vertex-array 32884)
  (normal-array 32885)
  (color-array 32886)
  (index-array 32887)
  (texture-coord-array 32888)
  (edge-flag-array 32889)
  (vertex-array-size 32890)
  (vertex-array-type 32891)
  (vertex-array-stride 32892)
  (normal-array-type 32894)
  (normal-array-stride 32895)
  (color-array-size 32897)
  (color-array-type 32898)
  (color-array-stride 32899)
  (index-array-type 32901)
  (index-array-stride 32902)
  (texture-coord-array-size 32904)
  (texture-coord-array-type 32905)
  (texture-coord-array-stride 32906)
  (edge-flag-array-stride 32908)
  (clip-plane0 12288)
  (clip-plane1 12289)
  (clip-plane2 12290)
  (clip-plane3 12291)
  (clip-plane4 12292)
  (clip-plane5 12293)
  (light0 16384)
  (light1 16385)
  (light2 16386)
  (light3 16387)
  (light4 16388)
  (light5 16389)
  (light6 16390)
  (light7 16391)
  (light-model-color-control 33272)
  (blend-color-ext 32773)
  (blend-equation-ext 32777)
  (pack-cmyk-hint-ext 32782)
  (unpack-cmyk-hint-ext 32783)
  (convolution-1d-ext 32784)
  (convolution-2d-ext 32785)
  (separable-2d-ext 32786)
  (post-convolution-red-scale-ext 32796)
  (post-convolution-green-scale-ext 32797)
  (post-convolution-blue-scale-ext 32798)
  (post-convolution-alpha-scale-ext 32799)
  (post-convolution-red-bias-ext 32800)
  (post-convolution-green-bias-ext 32801)
  (post-convolution-blue-bias-ext 32802)
  (post-convolution-alpha-bias-ext 32803)
  (histogram-ext 32804)
  (minmax-ext 32814)
  (polygon-offset-bias-ext 32825)
  (rescale-normal-ext 32826)
  (shared-texture-palette-ext 33275)
  (texture-3d-binding-ext 32874)
  (pack-skip-images-ext 32875)
  (pack-image-height-ext 32876)
  (unpack-skip-images-ext 32877)
  (unpack-image-height-ext 32878)
  (texture-3d-ext 32879)
  (max-3d-texture-size-ext 32883)
  (vertex-array-count-ext 32893)
  (normal-array-count-ext 32896)
  (color-array-count-ext 32900)
  (index-array-count-ext 32903)
  (texture-coord-array-count-ext 32907)
  (edge-flag-array-count-ext 32909)
  (detail-texture-2d-binding-sgis 32918)
  (fog-func-points-sgis 33067)
  (max-fog-func-points-sgis 33068)
  (generate-mipmap-hint-sgis 33170)
  (multisample-sgis 32925)
  (sample-alpha-to-mask-sgis 32926)
  (sample-alpha-to-one-sgis 32927)
  (sample-mask-sgis 32928)
  (sample-buffers-sgis 32936)
  (samples-sgis 32937)
  (sample-mask-value-sgis 32938)
  (sample-mask-invert-sgis 32939)
  (sample-pattern-sgis 32940)
  (pixel-texture-sgis 33619)
  (point-size-min-sgis 33062)
  (point-size-max-sgis 33063)
  (point-fade-threshold-size-sgis 33064)
  (distance-attenuation-sgis 33065)
  (pack-skip-volumes-sgis 33072)
  (pack-image-depth-sgis 33073)
  (unpack-skip-volumes-sgis 33074)
  (unpack-image-depth-sgis 33075)
  (texture-4d-sgis 33076)
  (max-4d-texture-size-sgis 33080)
  (texture-4d-binding-sgis 33103)
  (async-marker-sgix 33577)
  (async-histogram-sgix 33580)
  (max-async-histogram-sgix 33581)
  (async-tex-image-sgix 33628)
  (async-draw-pixels-sgix 33629)
  (async-read-pixels-sgix 33630)
  (max-async-tex-image-sgix 33631)
  (max-async-draw-pixels-sgix 33632)
  (max-async-read-pixels-sgix 33633)
  (calligraphic-fragment-sgix 33155)
  (max-clipmap-virtual-depth-sgix 33144)
  (max-clipmap-depth-sgix 33143)
  (convolution-hint-sgix 33558)
  (fog-offset-sgix 33176)
  (fog-offset-value-sgix 33177)
  (fragment-lighting-sgix 33792)
  (fragment-color-material-sgix 33793)
  (fragment-color-material-face-sgix 33794)
  (fragment-color-material-parameter-sgix 33795)
  (max-fragment-lights-sgix 33796)
  (max-active-lights-sgix 33797)
  (light-env-mode-sgix 33799)
  (fragment-light-model-local-viewer-sgix 33800)
  (fragment-light-model-two-side-sgix 33801)
  (fragment-light-model-ambient-sgix 33802)
  (fragment-light-model-normal-interpolation-sgix
    33803)
  (fragment-light0-sgix 33804)
  (framezoom-sgix 33163)
  (framezoom-factor-sgix 33164)
  (max-framezoom-factor-sgix 33165)
  (instrument-measurements-sgix 33153)
  (interlace-sgix 32916)
  (ir-instrument1-sgix 33151)
  (pixel-tex-gen-sgix 33081)
  (pixel-tex-gen-mode-sgix 33579)
  (pixel-tile-best-alignment-sgix 33086)
  (pixel-tile-cache-increment-sgix 33087)
  (pixel-tile-width-sgix 33088)
  (pixel-tile-height-sgix 33089)
  (pixel-tile-grid-width-sgix 33090)
  (pixel-tile-grid-height-sgix 33091)
  (pixel-tile-grid-depth-sgix 33092)
  (pixel-tile-cache-size-sgix 33093)
  (deformations-mask-sgix 33174)
  (reference-plane-equation-sgix 33150)
  (reference-plane-sgix 33149)
  (sprite-sgix 33096)
  (sprite-mode-sgix 33097)
  (sprite-axis-sgix 33098)
  (sprite-translation-sgix 33099)
  (pack-subsample-rate-sgix 34208)
  (unpack-subsample-rate-sgix 34209)
  (pack-resample-sgix 33836)
  (unpack-resample-sgix 33837)
  (post-texture-filter-bias-range-sgix 33147)
  (post-texture-filter-scale-range-sgix 33148)
  (vertex-preclip-sgix 33774)
  (vertex-preclip-hint-sgix 33775)
  (color-matrix-sgi 32945)
  (color-matrix-stack-depth-sgi 32946)
  (max-color-matrix-stack-depth-sgi 32947)
  (post-color-matrix-red-scale-sgi 32948)
  (post-color-matrix-green-scale-sgi 32949)
  (post-color-matrix-blue-scale-sgi 32950)
  (post-color-matrix-alpha-scale-sgi 32951)
  (post-color-matrix-red-bias-sgi 32952)
  (post-color-matrix-green-bias-sgi 32953)
  (post-color-matrix-blue-bias-sgi 32954)
  (post-color-matrix-alpha-bias-sgi 32955)
  (color-table-sgi 32976)
  (post-convolution-color-table-sgi 32977)
  (post-color-matrix-color-table-sgi 32978)
  (texture-color-table-sgi 32956))

(define-enumeration
  qcom-alpha-test
  (alpha-test-qcom 3008)
  (alpha-test-func-qcom 3009)
  (alpha-test-ref-qcom 3010))

(define-enumeration
  ext-unpack-subimage
  (unpack-row-length 3314)
  (unpack-skip-rows 3315)
  (unpack-skip-pixels 3316))

(define-enumeration
  ext-multiview-draw-buffers
  (draw-buffer-ext 3073)
  (read-buffer-ext 3074)
  (draw-buffer-ext 3073)
  (read-buffer-ext 3074)
  (color-attachment-ext 37104)
  (multiview-ext 37105)
  (max-multiview-buffers-ext 37106))

(define-enumeration
  nv-read-buffer
  (read-buffer-nv 3074))

(define-enumeration
  get-texture-parameter
  (texture-mag-filter 10240)
  (texture-min-filter 10241)
  (texture-wrap-s 10242)
  (texture-wrap-t 10243)
  (texture-width 4096)
  (texture-height 4097)
  (texture-internal-format 4099)
  (texture-components 4099)
  (texture-border-color 4100)
  (texture-border 4101)
  (texture-red-size 32860)
  (texture-green-size 32861)
  (texture-blue-size 32862)
  (texture-alpha-size 32863)
  (texture-luminance-size 32864)
  (texture-intensity-size 32865)
  (texture-priority 32870)
  (texture-resident 32871)
  (texture-depth-ext 32881)
  (texture-wrap-r-ext 32882)
  (detail-texture-level-sgis 32922)
  (detail-texture-mode-sgis 32923)
  (detail-texture-func-points-sgis 32924)
  (generate-mipmap-sgis 33169)
  (sharpen-texture-func-points-sgis 32944)
  (texture-filter4-size-sgis 33095)
  (texture-min-lod-sgis 33082)
  (texture-max-lod-sgis 33083)
  (texture-base-level-sgis 33084)
  (texture-max-level-sgis 33085)
  (dual-texture-select-sgis 33060)
  (quad-texture-select-sgis 33061)
  (texture-4dsize-sgis 33078)
  (texture-wrap-q-sgis 33079)
  (texture-clipmap-center-sgix 33137)
  (texture-clipmap-frame-sgix 33138)
  (texture-clipmap-offset-sgix 33139)
  (texture-clipmap-virtual-depth-sgix 33140)
  (texture-clipmap-lod-offset-sgix 33141)
  (texture-clipmap-depth-sgix 33142)
  (texture-compare-sgix 33178)
  (texture-compare-operator-sgix 33179)
  (texture-lequal-r-sgix 33180)
  (texture-gequal-r-sgix 33181)
  (shadow-ambient-sgix 32959)
  (texture-max-clamp-s-sgix 33641)
  (texture-max-clamp-t-sgix 33642)
  (texture-max-clamp-r-sgix 33643)
  (texture-lod-bias-s-sgix 33166)
  (texture-lod-bias-t-sgix 33167)
  (texture-lod-bias-r-sgix 33168)
  (post-texture-filter-bias-sgix 33145)
  (post-texture-filter-scale-sgix 33146))

(define-enumeration
  nv-texture-border-clamp
  (texture-border-color-nv 4100)
  (clamp-to-border-nv 33069))

(define-enumeration
  hint-mode
  (dont-care 4352)
  (fastest 4353)
  (nicest 4354))

(define-enumeration
  hint-target
  (perspective-correction-hint 3152)
  (point-smooth-hint 3153)
  (line-smooth-hint 3154)
  (polygon-smooth-hint 3155)
  (fog-hint 3156)
  (pack-cmyk-hint-ext 32782)
  (unpack-cmyk-hint-ext 32783)
  (generate-mipmap-hint-sgis 33170)
  (convolution-hint-sgix 33558)
  (texture-multi-buffer-hint-sgix 33070)
  (vertex-preclip-hint-sgix 33775))

(define-enumeration
  histogram-target-ext
  (histogram-ext 32804)
  (proxy-histogram-ext 32805))

(define-enumeration
  index-pointer-type
  (short 5122)
  (int 5124)
  (float 5126)
  (double 5130))

(define-enumeration
  light-env-mode-sgix
  (replace 7681)
  (modulate 8448)
  (add 260))

(define-enumeration
  light-env-parameter-sgix
  (light-env-mode-sgix 33799))

(define-enumeration
  light-model-color-control
  (single-color 33273)
  (separate-specular-color 33274))

(define-enumeration
  light-model-parameter
  (light-model-ambient 2899)
  (light-model-local-viewer 2897)
  (light-model-two-side 2898)
  (light-model-color-control 33272))

(define-enumeration
  light-parameter
  (ambient 4608)
  (diffuse 4609)
  (specular 4610)
  (position 4611)
  (spot-direction 4612)
  (spot-exponent 4613)
  (spot-cutoff 4614)
  (constant-attenuation 4615)
  (linear-attenuation 4616)
  (quadratic-attenuation 4617))

(define-enumeration
  list-mode
  (compile 4864)
  (compile-and-execute 4865))

(define-enumeration
  data-type
  (byte 5120)
  (unsigned-byte 5121)
  (short 5122)
  (unsigned-short 5123)
  (int 5124)
  (unsigned-int 5125)
  (float 5126)
  (#{2-bytes}# 5127)
  (#{3-bytes}# 5128)
  (#{4-bytes}# 5129)
  (double 5130)
  (double-ext 5130))

(define-bitfield oes-element-index-uint)

(define-enumeration
  oes-texture-float
  (half-float-oes 36193))

(define-enumeration
  ext-vertex-attrib-64-bit
  (double-mat2-ext 36678)
  (double-mat3-ext 36679)
  (double-mat4-ext 36680)
  (double-mat-2x-3-ext 36681)
  (double-mat-2x-4-ext 36682)
  (double-mat-3x-2-ext 36683)
  (double-mat-3x-4-ext 36684)
  (double-mat-4x-2-ext 36685)
  (double-mat-4x-3-ext 36686)
  (double-vec2-ext 36860)
  (double-vec3-ext 36861)
  (double-vec4-ext 36862))

(define-enumeration
  arb-half-float-vertex
  (half-float 5131))

(define-enumeration
  arb-half-float-pixel
  (half-float-arb 5131))

(define-enumeration
  nv-half-float
  (half-float-nv 5131))

(define-enumeration
  apple-float-pixels
  (half-apple 5131)
  (rgba-float32-apple 34836)
  (rgb-float32-apple 34837)
  (alpha-float32-apple 34838)
  (intensity-float32-apple 34839)
  (luminance-float32-apple 34840)
  (luminance-alpha-float32-apple 34841)
  (rgba-float16-apple 34842)
  (rgb-float16-apple 34843)
  (alpha-float16-apple 34844)
  (intensity-float16-apple 34845)
  (luminance-float16-apple 34846)
  (luminance-alpha-float16-apple 34847)
  (color-float-apple 35343))

(define-enumeration
  arb-es2-compatibility
  (fixed 5132)
  (implementation-color-read-type 35738)
  (implementation-color-read-format 35739)
  (rgb565 36194)
  (low-float 36336)
  (medium-float 36337)
  (high-float 36338)
  (low-int 36339)
  (medium-int 36340)
  (high-int 36341)
  (shader-binary-formats 36344)
  (num-shader-binary-formats 36345)
  (shader-compiler 36346)
  (max-vertex-uniform-vectors 36347)
  (max-varying-vectors 36348)
  (max-fragment-uniform-vectors 36349))

(define-enumeration
  oes-fixed-point
  (fixed-oes 5132))

(define-enumeration
  nv-vertex-attrib-integer-64-bit
  (int64-nv 5134)
  (unsigned-int64-nv 5135))

(define-enumeration
  list-name-type
  (byte 5120)
  (unsigned-byte 5121)
  (short 5122)
  (unsigned-short 5123)
  (int 5124)
  (unsigned-int 5125)
  (float 5126)
  (#{2-bytes}# 5127)
  (#{3-bytes}# 5128)
  (#{4-bytes}# 5129))

(define-enumeration
  list-parameter-name
  (list-priority-sgix 33154))

(define-enumeration
  logic-op
  (clear 5376)
  (and 5377)
  (and-reverse 5378)
  (copy 5379)
  (and-inverted 5380)
  (noop 5381)
  (xor 5382)
  (or 5383)
  (nor 5384)
  (equiv 5385)
  (invert 5386)
  (or-reverse 5387)
  (copy-inverted 5388)
  (or-inverted 5389)
  (nand 5390)
  (set 5391))

(define-enumeration
  map-target
  (map1-color-4 3472)
  (map1-index 3473)
  (map1-normal 3474)
  (map1-texture-coord-1 3475)
  (map1-texture-coord-2 3476)
  (map1-texture-coord-3 3477)
  (map1-texture-coord-4 3478)
  (map1-vertex-3 3479)
  (map1-vertex-4 3480)
  (map2-color-4 3504)
  (map2-index 3505)
  (map2-normal 3506)
  (map2-texture-coord-1 3507)
  (map2-texture-coord-2 3508)
  (map2-texture-coord-3 3509)
  (map2-texture-coord-4 3510)
  (map2-vertex-3 3511)
  (map2-vertex-4 3512)
  (geometry-deformation-sgix 33172)
  (texture-deformation-sgix 33173))

(define-enumeration
  material-face
  (front 1028)
  (back 1029)
  (front-and-back 1032))

(define-enumeration
  material-parameter
  (emission 5632)
  (shininess 5633)
  (ambient-and-diffuse 5634)
  (color-indexes 5635)
  (ambient 4608)
  (diffuse 4609)
  (specular 4610))

(define-enumeration
  matrix-mode
  (modelview 5888)
  (projection 5889)
  (texture 5890))

(define-enumeration
  mesh-mode-1
  (point 6912)
  (line 6913))

(define-enumeration
  mesh-mode-2
  (point 6912)
  (line 6913)
  (fill 6914))

(define-enumeration
  minmax-target-ext
  (minmax-ext 32814))

(define-enumeration
  normal-pointer-type
  (byte 5120)
  (short 5122)
  (int 5124)
  (float 5126)
  (double 5130))

(define-enumeration
  pixel-copy-type
  (color 6144)
  (depth 6145)
  (stencil 6146))

(define-enumeration
  ext-discard-framebuffer
  (color-ext 6144)
  (depth-ext 6145)
  (stencil-ext 6146))

(define-enumeration
  pixel-format
  (color-index 6400)
  (stencil-index 6401)
  (depth-component 6402)
  (red 6403)
  (green 6404)
  (blue 6405)
  (alpha 6406)
  (rgb 6407)
  (rgba 6408)
  (luminance 6409)
  (luminance-alpha 6410)
  (abgr-ext 32768)
  (cmyk-ext 32780)
  (cmyka-ext 32781)
  (ycrcb-422-sgix 33211)
  (ycrcb-444-sgix 33212))

(define-enumeration
  oes-depth-texture
  (red-ext 6403))

(define-enumeration
  ext-texture-rg
  (red-ext 6403)
  (rg-ext 33319)
  (r8-ext 33321)
  (rg8-ext 33323))

(define-enumeration
  pixel-map
  (pixel-map-i-to-i 3184)
  (pixel-map-s-to-s 3185)
  (pixel-map-i-to-r 3186)
  (pixel-map-i-to-g 3187)
  (pixel-map-i-to-b 3188)
  (pixel-map-i-to-a 3189)
  (pixel-map-r-to-r 3190)
  (pixel-map-g-to-g 3191)
  (pixel-map-b-to-b 3192)
  (pixel-map-a-to-a 3193))

(define-enumeration
  pixel-store-parameter
  (unpack-swap-bytes 3312)
  (unpack-lsb-first 3313)
  (unpack-row-length 3314)
  (unpack-skip-rows 3315)
  (unpack-skip-pixels 3316)
  (unpack-alignment 3317)
  (pack-swap-bytes 3328)
  (pack-lsb-first 3329)
  (pack-row-length 3330)
  (pack-skip-rows 3331)
  (pack-skip-pixels 3332)
  (pack-alignment 3333)
  (pack-skip-images-ext 32875)
  (pack-image-height-ext 32876)
  (unpack-skip-images-ext 32877)
  (unpack-image-height-ext 32878)
  (pack-skip-volumes-sgis 33072)
  (pack-image-depth-sgis 33073)
  (unpack-skip-volumes-sgis 33074)
  (unpack-image-depth-sgis 33075)
  (pixel-tile-width-sgix 33088)
  (pixel-tile-height-sgix 33089)
  (pixel-tile-grid-width-sgix 33090)
  (pixel-tile-grid-height-sgix 33091)
  (pixel-tile-grid-depth-sgix 33092)
  (pixel-tile-cache-size-sgix 33093)
  (pack-subsample-rate-sgix 34208)
  (unpack-subsample-rate-sgix 34209)
  (pack-resample-sgix 33836)
  (unpack-resample-sgix 33837))

(define-enumeration
  pixel-store-resample-mode
  (resample-replicate-sgix 33838)
  (resample-zero-fill-sgix 33839)
  (resample-decimate-sgix 33840))

(define-enumeration
  pixel-store-subsample-rate
  (pixel-subsample-4444-sgix 34210)
  (pixel-subsample-2424-sgix 34211)
  (pixel-subsample-4242-sgix 34212))

(define-enumeration
  pixel-tex-gen-mode
  (none 0)
  (rgb 6407)
  (rgba 6408)
  (luminance 6409)
  (luminance-alpha 6410)
  (pixel-tex-gen-alpha-replace-sgix 33159)
  (pixel-tex-gen-alpha-no-replace-sgix 33160)
  (pixel-tex-gen-alpha-ms-sgix 33162)
  (pixel-tex-gen-alpha-ls-sgix 33161))

(define-enumeration
  pixel-tex-gen-parameter-name-sgis
  (pixel-fragment-rgb-source-sgis 33620)
  (pixel-fragment-alpha-source-sgis 33621))

(define-enumeration
  pixel-transfer-parameter
  (map-color 3344)
  (map-stencil 3345)
  (index-shift 3346)
  (index-offset 3347)
  (red-scale 3348)
  (red-bias 3349)
  (green-scale 3352)
  (green-bias 3353)
  (blue-scale 3354)
  (blue-bias 3355)
  (alpha-scale 3356)
  (alpha-bias 3357)
  (depth-scale 3358)
  (depth-bias 3359)
  (post-convolution-red-scale-ext 32796)
  (post-convolution-green-scale-ext 32797)
  (post-convolution-blue-scale-ext 32798)
  (post-convolution-alpha-scale-ext 32799)
  (post-convolution-red-bias-ext 32800)
  (post-convolution-green-bias-ext 32801)
  (post-convolution-blue-bias-ext 32802)
  (post-convolution-alpha-bias-ext 32803)
  (post-color-matrix-red-scale-sgi 32948)
  (post-color-matrix-green-scale-sgi 32949)
  (post-color-matrix-blue-scale-sgi 32950)
  (post-color-matrix-alpha-scale-sgi 32951)
  (post-color-matrix-red-bias-sgi 32952)
  (post-color-matrix-green-bias-sgi 32953)
  (post-color-matrix-blue-bias-sgi 32954)
  (post-color-matrix-alpha-bias-sgi 32955))

(define-enumeration
  pixel-type
  (bitmap 6656)
  (byte 5120)
  (unsigned-byte 5121)
  (short 5122)
  (unsigned-short 5123)
  (int 5124)
  (unsigned-int 5125)
  (float 5126)
  (unsigned-byte-3-3-2-ext 32818)
  (unsigned-short-4-4-4-4-ext 32819)
  (unsigned-short-5-5-5-1-ext 32820)
  (unsigned-int-8-8-8-8-ext 32821)
  (unsigned-int-10-10-10-2-ext 32822))

(define-enumeration
  point-parameter-name-sgis
  (point-size-min-sgis 33062)
  (point-size-max-sgis 33063)
  (point-fade-threshold-size-sgis 33064)
  (distance-attenuation-sgis 33065))

(define-enumeration
  polygon-mode
  (point 6912)
  (line 6913)
  (fill 6914))

(define-enumeration
  read-buffer-mode
  (front-left 1024)
  (front-right 1025)
  (back-left 1026)
  (back-right 1027)
  (front 1028)
  (back 1029)
  (left 1030)
  (right 1031)
  (aux0 1033)
  (aux1 1034)
  (aux2 1035)
  (aux3 1036))

(define-enumeration
  rendering-mode
  (render 7168)
  (feedback 7169)
  (select 7170))

(define-enumeration
  sample-pattern-sgis
  (#{1pass-sgis}# 32929)
  (#{2pass-0-sgis}# 32930)
  (#{2pass-1-sgis}# 32931)
  (#{4pass-0-sgis}# 32932)
  (#{4pass-1-sgis}# 32933)
  (#{4pass-2-sgis}# 32934)
  (#{4pass-3-sgis}# 32935))

(define-enumeration
  separable-target-ext
  (separable-2d-ext 32786))

(define-enumeration
  shading-model
  (flat 7424)
  (smooth 7425))

(define-enumeration
  stencil-function
  (never 512)
  (less 513)
  (equal 514)
  (lequal 515)
  (greater 516)
  (notequal 517)
  (gequal 518)
  (always 519))

(define-enumeration
  stencil-op
  (zero 0)
  (keep 7680)
  (replace 7681)
  (incr 7682)
  (decr 7683)
  (invert 5386))

(define-enumeration
  string-name
  (vendor 7936)
  (renderer 7937)
  (version 7938)
  (extensions 7939))

(define-enumeration
  tex-coord-pointer-type
  (short 5122)
  (int 5124)
  (float 5126)
  (double 5130))

(define-enumeration
  texture-coord-name
  (s 8192)
  (t 8193)
  (r 8194)
  (q 8195))

(define-enumeration
  texture-env-mode
  (modulate 8448)
  (decal 8449)
  (blend 3042)
  (replace-ext 32866)
  (add 260)
  (texture-env-bias-sgix 32958))

(define-enumeration
  texture-env-parameter
  (texture-env-mode 8704)
  (texture-env-color 8705))

(define-enumeration
  texture-env-target
  (texture-env 8960))

(define-enumeration
  texture-filter-func-sgis
  (filter4-sgis 33094))

(define-enumeration
  texture-gen-mode
  (eye-linear 9216)
  (object-linear 9217)
  (sphere-map 9218)
  (eye-distance-to-point-sgis 33264)
  (object-distance-to-point-sgis 33265)
  (eye-distance-to-line-sgis 33266)
  (object-distance-to-line-sgis 33267))

(define-enumeration
  texture-gen-parameter
  (texture-gen-mode 9472)
  (object-plane 9473)
  (eye-plane 9474)
  (eye-point-sgis 33268)
  (object-point-sgis 33269)
  (eye-line-sgis 33270)
  (object-line-sgis 33271))

(define-enumeration
  oes-texture-cube-map
  (texture-gen-mode 9472)
  (normal-map-oes 34065)
  (reflection-map-oes 34066)
  (texture-cube-map-oes 34067)
  (texture-binding-cube-map-oes 34068)
  (texture-cube-map-positive-x-oes 34069)
  (texture-cube-map-negative-x-oes 34070)
  (texture-cube-map-positive-y-oes 34071)
  (texture-cube-map-negative-y-oes 34072)
  (texture-cube-map-positive-z-oes 34073)
  (texture-cube-map-negative-z-oes 34074)
  (max-cube-map-texture-size-oes 34076)
  (texture-gen-str-oes 36192))

(define-enumeration
  texture-mag-filter
  (nearest 9728)
  (linear 9729)
  (linear-detail-sgis 32919)
  (linear-detail-alpha-sgis 32920)
  (linear-detail-color-sgis 32921)
  (linear-sharpen-sgis 32941)
  (linear-sharpen-alpha-sgis 32942)
  (linear-sharpen-color-sgis 32943)
  (filter4-sgis 33094)
  (pixel-tex-gen-q-ceiling-sgix 33156)
  (pixel-tex-gen-q-round-sgix 33157)
  (pixel-tex-gen-q-floor-sgix 33158))

(define-enumeration
  texture-min-filter
  (nearest 9728)
  (linear 9729)
  (nearest-mipmap-nearest 9984)
  (linear-mipmap-nearest 9985)
  (nearest-mipmap-linear 9986)
  (linear-mipmap-linear 9987)
  (filter4-sgis 33094)
  (linear-clipmap-linear-sgix 33136)
  (nearest-clipmap-nearest-sgix 33869)
  (nearest-clipmap-linear-sgix 33870)
  (linear-clipmap-nearest-sgix 33871)
  (pixel-tex-gen-q-ceiling-sgix 33156)
  (pixel-tex-gen-q-round-sgix 33157)
  (pixel-tex-gen-q-floor-sgix 33158))

(define-enumeration
  texture-parameter-name
  (texture-mag-filter 10240)
  (texture-min-filter 10241)
  (texture-wrap-s 10242)
  (texture-wrap-t 10243)
  (texture-border-color 4100)
  (texture-priority 32870)
  (texture-wrap-r-ext 32882)
  (detail-texture-level-sgis 32922)
  (detail-texture-mode-sgis 32923)
  (generate-mipmap-sgis 33169)
  (dual-texture-select-sgis 33060)
  (quad-texture-select-sgis 33061)
  (texture-wrap-q-sgis 33079)
  (texture-clipmap-center-sgix 33137)
  (texture-clipmap-frame-sgix 33138)
  (texture-clipmap-offset-sgix 33139)
  (texture-clipmap-virtual-depth-sgix 33140)
  (texture-clipmap-lod-offset-sgix 33141)
  (texture-clipmap-depth-sgix 33142)
  (texture-compare-sgix 33178)
  (texture-compare-operator-sgix 33179)
  (shadow-ambient-sgix 32959)
  (texture-max-clamp-s-sgix 33641)
  (texture-max-clamp-t-sgix 33642)
  (texture-max-clamp-r-sgix 33643)
  (texture-lod-bias-s-sgix 33166)
  (texture-lod-bias-t-sgix 33167)
  (texture-lod-bias-r-sgix 33168)
  (post-texture-filter-bias-sgix 33145)
  (post-texture-filter-scale-sgix 33146))

(define-enumeration
  texture-target
  (texture-1d 3552)
  (texture-2d 3553)
  (proxy-texture-1d 32867)
  (proxy-texture-2d 32868)
  (texture-3d-ext 32879)
  (proxy-texture-3d-ext 32880)
  (detail-texture-2d-sgis 32917)
  (texture-4d-sgis 33076)
  (proxy-texture-4d-sgis 33077)
  (texture-min-lod-sgis 33082)
  (texture-max-lod-sgis 33083)
  (texture-base-level-sgis 33084)
  (texture-max-level-sgis 33085))

(define-enumeration
  texture-wrap-mode
  (clamp 10496)
  (repeat 10497)
  (clamp-to-border-sgis 33069)
  (clamp-to-edge-sgis 33071))

(define-enumeration
  pixel-internal-format
  (r3-g3-b2 10768)
  (alpha4 32827)
  (alpha8 32828)
  (alpha12 32829)
  (alpha16 32830)
  (luminance4 32831)
  (luminance8 32832)
  (luminance12 32833)
  (luminance16 32834)
  (luminance4-alpha4 32835)
  (luminance6-alpha2 32836)
  (luminance8-alpha8 32837)
  (luminance12-alpha4 32838)
  (luminance12-alpha12 32839)
  (luminance16-alpha16 32840)
  (intensity 32841)
  (intensity4 32842)
  (intensity8 32843)
  (intensity12 32844)
  (intensity16 32845)
  (rgb4 32847)
  (rgb5 32848)
  (rgb8 32849)
  (rgb10 32850)
  (rgb12 32851)
  (rgb16 32852)
  (rgba2 32853)
  (rgba4 32854)
  (rgb5-a1 32855)
  (rgba8 32856)
  (rgb10-a2 32857)
  (rgba12 32858)
  (rgba16 32859)
  (rgb2-ext 32846)
  (dual-alpha4-sgis 33040)
  (dual-alpha8-sgis 33041)
  (dual-alpha12-sgis 33042)
  (dual-alpha16-sgis 33043)
  (dual-luminance4-sgis 33044)
  (dual-luminance8-sgis 33045)
  (dual-luminance12-sgis 33046)
  (dual-luminance16-sgis 33047)
  (dual-intensity4-sgis 33048)
  (dual-intensity8-sgis 33049)
  (dual-intensity12-sgis 33050)
  (dual-intensity16-sgis 33051)
  (dual-luminance-alpha4-sgis 33052)
  (dual-luminance-alpha8-sgis 33053)
  (quad-alpha4-sgis 33054)
  (quad-alpha8-sgis 33055)
  (quad-luminance4-sgis 33056)
  (quad-luminance8-sgis 33057)
  (quad-intensity4-sgis 33058)
  (quad-intensity8-sgis 33059)
  (depth-component16-sgix 33189)
  (depth-component24-sgix 33190)
  (depth-component32-sgix 33191))

(define-enumeration
  oes-rgb-8-rgba-8
  (rgb8 32849)
  (rgba8 32856))

(define-enumeration
  interleaved-array-format
  (v2f 10784)
  (v3f 10785)
  (c4ub-v2f 10786)
  (c4ub-v3f 10787)
  (c3f-v3f 10788)
  (n3f-v3f 10789)
  (c4f-n3f-v3f 10790)
  (t2f-v3f 10791)
  (t4f-v4f 10792)
  (t2f-c4ub-v3f 10793)
  (t2f-c3f-v3f 10794)
  (t2f-n3f-v3f 10795)
  (t2f-c4f-n3f-v3f 10796)
  (t4f-c4f-n3f-v4f 10797))

(define-enumeration
  vertex-pointer-type
  (short 5122)
  (int 5124)
  (float 5126)
  (double 5130))

(define-enumeration
  clip-plane-name
  (clip-plane0 12288)
  (clip-plane1 12289)
  (clip-plane2 12290)
  (clip-plane3 12291)
  (clip-plane4 12292)
  (clip-plane5 12293))

(define-enumeration
  light-name
  (light0 16384)
  (light1 16385)
  (light2 16386)
  (light3 16387)
  (light4 16388)
  (light5 16389)
  (light6 16390)
  (light7 16391)
  (fragment-light0-sgix 33804)
  (fragment-light1-sgix 33805)
  (fragment-light2-sgix 33806)
  (fragment-light3-sgix 33807)
  (fragment-light4-sgix 33808)
  (fragment-light5-sgix 33809)
  (fragment-light6-sgix 33810)
  (fragment-light7-sgix 33811))

(define-enumeration ext-abgr (abgr-ext 32768))

(define-enumeration
  version-1-2
  (constant-color 32769)
  (one-minus-constant-color 32770)
  (constant-alpha 32771)
  (one-minus-constant-alpha 32772)
  (blend-color 32773)
  (func-add 32774)
  (func-add-ext 32774)
  (min 32775)
  (min-ext 32775)
  (max 32776)
  (max-ext 32776)
  (blend-equation 32777)
  (blend-equation-ext 32777)
  (func-subtract 32778)
  (func-subtract-ext 32778)
  (func-reverse-subtract 32779)
  (func-reverse-subtract-ext 32779)
  (convolution-1d 32784)
  (convolution-2d 32785)
  (separable-2d 32786)
  (convolution-border-mode 32787)
  (convolution-filter-scale 32788)
  (convolution-filter-bias 32789)
  (reduce 32790)
  (convolution-format 32791)
  (convolution-width 32792)
  (convolution-height 32793)
  (max-convolution-width 32794)
  (max-convolution-height 32795)
  (post-convolution-red-scale 32796)
  (post-convolution-green-scale 32797)
  (post-convolution-blue-scale 32798)
  (post-convolution-alpha-scale 32799)
  (post-convolution-red-bias 32800)
  (post-convolution-green-bias 32801)
  (post-convolution-blue-bias 32802)
  (post-convolution-alpha-bias 32803)
  (histogram 32804)
  (proxy-histogram 32805)
  (histogram-width 32806)
  (histogram-format 32807)
  (histogram-red-size 32808)
  (histogram-green-size 32809)
  (histogram-blue-size 32810)
  (histogram-alpha-size 32811)
  (histogram-sink 32813)
  (minmax 32814)
  (minmax-format 32815)
  (minmax-sink 32816)
  (table-too-large 32817)
  (unsigned-byte-3-3-2 32818)
  (unsigned-short-4-4-4-4 32819)
  (unsigned-short-5-5-5-1 32820)
  (unsigned-int-8-8-8-8 32821)
  (unsigned-int-10-10-10-2 32822)
  (unsigned-byte-2-3-3-rev 33634)
  (unsigned-short-5-6-5 33635)
  (unsigned-short-5-6-5-rev 33636)
  (unsigned-short-4-4-4-4-rev 33637)
  (unsigned-short-1-5-5-5-rev 33638)
  (unsigned-int-8-8-8-8-rev 33639)
  (unsigned-int-2-10-10-10-rev 33640)
  (rescale-normal 32826)
  (pack-skip-images 32875)
  (pack-image-height 32876)
  (unpack-skip-images 32877)
  (unpack-image-height 32878)
  (texture-3d 32879)
  (proxy-texture-3d 32880)
  (texture-depth 32881)
  (texture-wrap-r 32882)
  (max-3d-texture-size 32883)
  (color-matrix 32945)
  (color-matrix-stack-depth 32946)
  (max-color-matrix-stack-depth 32947)
  (post-color-matrix-red-scale 32948)
  (post-color-matrix-green-scale 32949)
  (post-color-matrix-blue-scale 32950)
  (post-color-matrix-alpha-scale 32951)
  (post-color-matrix-red-bias 32952)
  (post-color-matrix-green-bias 32953)
  (post-color-matrix-blue-bias 32954)
  (post-color-matrix-alpha-bias 32955)
  (color-table 32976)
  (post-convolution-color-table 32977)
  (post-color-matrix-color-table 32978)
  (proxy-color-table 32979)
  (proxy-post-convolution-color-table 32980)
  (proxy-post-color-matrix-color-table 32981)
  (color-table-scale 32982)
  (color-table-bias 32983)
  (color-table-format 32984)
  (color-table-width 32985)
  (color-table-red-size 32986)
  (color-table-green-size 32987)
  (color-table-blue-size 32988)
  (color-table-alpha-size 32989)
  (color-table-luminance-size 32990)
  (color-table-intensity-size 32991)
  (bgr 32992)
  (bgra 32993)
  (max-elements-vertices 33000)
  (max-elements-indices 33001)
  (clamp-to-edge 33071)
  (texture-min-lod 33082)
  (texture-max-lod 33083)
  (texture-base-level 33084)
  (texture-max-level 33085)
  (constant-border 33105)
  (replicate-border 33107)
  (convolution-border-color 33108)
  (light-model-color-control 33272)
  (single-color 33273)
  (separate-specular-color 33274)
  (smooth-point-size-range 2834)
  (smooth-point-size-granularity 2835)
  (smooth-line-width-range 2850)
  (smooth-line-width-granularity 2851)
  (aliased-point-size-range 33901)
  (aliased-line-width-range 33902))

(define-enumeration
  ext-blend-color
  (constant-color-ext 32769)
  (one-minus-constant-color-ext 32770)
  (constant-alpha-ext 32771)
  (one-minus-constant-alpha-ext 32772)
  (blend-color-ext 32773))

(define-enumeration
  ext-blend-minmax
  (func-add 32774)
  (func-add-ext 32774)
  (min 32775)
  (min-ext 32775)
  (max 32776)
  (max-ext 32776)
  (blend-equation 32777)
  (blend-equation-ext 32777))

(define-enumeration
  version-2-0
  (blend-equation-rgb 32777)
  (vertex-attrib-array-enabled 34338)
  (vertex-attrib-array-size 34339)
  (vertex-attrib-array-stride 34340)
  (vertex-attrib-array-type 34341)
  (current-vertex-attrib 34342)
  (vertex-program-point-size 34370)
  (vertex-program-two-side 34371)
  (vertex-attrib-array-pointer 34373)
  (stencil-back-func 34816)
  (stencil-back-fail 34817)
  (stencil-back-pass-depth-fail 34818)
  (stencil-back-pass-depth-pass 34819)
  (stencil-back-fail-ati 34817)
  (max-draw-buffers 34852)
  (draw-buffer0 34853)
  (draw-buffer1 34854)
  (draw-buffer2 34855)
  (draw-buffer3 34856)
  (draw-buffer4 34857)
  (draw-buffer5 34858)
  (draw-buffer6 34859)
  (draw-buffer7 34860)
  (draw-buffer8 34861)
  (draw-buffer9 34862)
  (draw-buffer10 34863)
  (draw-buffer11 34864)
  (draw-buffer12 34865)
  (draw-buffer13 34866)
  (draw-buffer14 34867)
  (draw-buffer15 34868)
  (blend-equation-alpha 34877)
  (point-sprite 34913)
  (coord-replace 34914)
  (max-vertex-attribs 34921)
  (vertex-attrib-array-normalized 34922)
  (max-texture-coords 34929)
  (max-texture-image-units 34930)
  (fragment-shader 35632)
  (fragment-shader-arb 35632)
  (vertex-shader 35633)
  (vertex-shader-arb 35633)
  (program-object-arb 35648)
  (shader-object-arb 35656)
  (max-fragment-uniform-components 35657)
  (max-fragment-uniform-components-arb 35657)
  (max-vertex-uniform-components 35658)
  (max-vertex-uniform-components-arb 35658)
  (max-varying-floats 35659)
  (max-varying-floats-arb 35659)
  (max-vertex-texture-image-units 35660)
  (max-vertex-texture-image-units-arb 35660)
  (max-combined-texture-image-units 35661)
  (max-combined-texture-image-units-arb 35661)
  (object-type-arb 35662)
  (shader-type 35663)
  (object-subtype-arb 35663)
  (float-vec2 35664)
  (float-vec2-arb 35664)
  (float-vec3 35665)
  (float-vec3-arb 35665)
  (float-vec4 35666)
  (float-vec4-arb 35666)
  (int-vec2 35667)
  (int-vec2-arb 35667)
  (int-vec3 35668)
  (int-vec3-arb 35668)
  (int-vec4 35669)
  (int-vec4-arb 35669)
  (bool 35670)
  (bool-arb 35670)
  (bool-vec2 35671)
  (bool-vec2-arb 35671)
  (bool-vec3 35672)
  (bool-vec3-arb 35672)
  (bool-vec4 35673)
  (bool-vec4-arb 35673)
  (float-mat2 35674)
  (float-mat2-arb 35674)
  (float-mat3 35675)
  (float-mat3-arb 35675)
  (float-mat4 35676)
  (float-mat4-arb 35676)
  (sampler-1d 35677)
  (sampler-1d-arb 35677)
  (sampler-2d 35678)
  (sampler-2d-arb 35678)
  (sampler-3d 35679)
  (sampler-3d-arb 35679)
  (sampler-cube 35680)
  (sampler-cube-arb 35680)
  (sampler-1d-shadow 35681)
  (sampler-1d-shadow-arb 35681)
  (sampler-2d-shadow 35682)
  (sampler-2d-shadow-arb 35682)
  (sampler-2d-rect-arb 35683)
  (sampler-2d-rect-shadow-arb 35684)
  (float-mat-2x-3 35685)
  (float-mat-2x-4 35686)
  (float-mat-3x-2 35687)
  (float-mat-3x-4 35688)
  (float-mat-4x-2 35689)
  (float-mat-4x-3 35690)
  (delete-status 35712)
  (object-delete-status-arb 35712)
  (compile-status 35713)
  (object-compile-status-arb 35713)
  (link-status 35714)
  (object-link-status-arb 35714)
  (validate-status 35715)
  (object-validate-status-arb 35715)
  (info-log-length 35716)
  (object-info-log-length-arb 35716)
  (attached-shaders 35717)
  (object-attached-objects-arb 35717)
  (active-uniforms 35718)
  (object-active-uniforms-arb 35718)
  (active-uniform-max-length 35719)
  (object-active-uniform-max-length-arb 35719)
  (shader-source-length 35720)
  (object-shader-source-length-arb 35720)
  (active-attributes 35721)
  (object-active-attributes-arb 35721)
  (active-attribute-max-length 35722)
  (object-active-attribute-max-length-arb 35722)
  (fragment-shader-derivative-hint 35723)
  (fragment-shader-derivative-hint-arb 35723)
  (shading-language-version 35724)
  (shading-language-version-arb 35724)
  (current-program 35725)
  (point-sprite-coord-origin 36000)
  (lower-left 36001)
  (upper-left 36002)
  (stencil-back-ref 36003)
  (stencil-back-value-mask 36004)
  (stencil-back-writemask 36005))

(define-enumeration
  ext-blend-equation-separate
  (blend-equation-rgb-ext 32777)
  (blend-equation-alpha-ext 34877))

(define-enumeration
  oes-blend-equation-separate
  (blend-equation-rgb-oes 32777)
  (blend-equation-alpha-oes 34877))

(define-enumeration
  ext-blend-subtract
  (func-subtract 32778)
  (func-subtract-ext 32778)
  (func-reverse-subtract 32779)
  (func-reverse-subtract-ext 32779))

(define-enumeration
  oes-blend-subtract
  (func-add-oes 32774)
  (blend-equation-oes 32777)
  (func-subtract-oes 32778)
  (func-reverse-subtract-oes 32779))

(define-enumeration
  ext-cmyka
  (cmyk-ext 32780)
  (cmyka-ext 32781)
  (pack-cmyk-hint-ext 32782)
  (unpack-cmyk-hint-ext 32783))

(define-enumeration
  ext-convolution
  (convolution-1d-ext 32784)
  (convolution-2d-ext 32785)
  (separable-2d-ext 32786)
  (convolution-border-mode-ext 32787)
  (convolution-filter-scale-ext 32788)
  (convolution-filter-bias-ext 32789)
  (reduce-ext 32790)
  (convolution-format-ext 32791)
  (convolution-width-ext 32792)
  (convolution-height-ext 32793)
  (max-convolution-width-ext 32794)
  (max-convolution-height-ext 32795)
  (post-convolution-red-scale-ext 32796)
  (post-convolution-green-scale-ext 32797)
  (post-convolution-blue-scale-ext 32798)
  (post-convolution-alpha-scale-ext 32799)
  (post-convolution-red-bias-ext 32800)
  (post-convolution-green-bias-ext 32801)
  (post-convolution-blue-bias-ext 32802)
  (post-convolution-alpha-bias-ext 32803))

(define-enumeration
  ext-histogram
  (histogram-ext 32804)
  (proxy-histogram-ext 32805)
  (histogram-width-ext 32806)
  (histogram-format-ext 32807)
  (histogram-red-size-ext 32808)
  (histogram-green-size-ext 32809)
  (histogram-blue-size-ext 32810)
  (histogram-alpha-size-ext 32811)
  (histogram-luminance-size 32812)
  (histogram-luminance-size-ext 32812)
  (histogram-sink-ext 32813)
  (minmax-ext 32814)
  (minmax-format-ext 32815)
  (minmax-sink-ext 32816)
  (table-too-large-ext 32817))

(define-enumeration
  ext-packed-pixels
  (unsigned-byte-3-3-2-ext 32818)
  (unsigned-short-4-4-4-4-ext 32819)
  (unsigned-short-5-5-5-1-ext 32820)
  (unsigned-int-8-8-8-8-ext 32821)
  (unsigned-int-10-10-10-2-ext 32822)
  (unsigned-byte-2-3-3-rev-ext 33634)
  (unsigned-short-5-6-5-ext 33635)
  (unsigned-short-5-6-5-rev-ext 33636)
  (unsigned-short-4-4-4-4-rev-ext 33637)
  (unsigned-short-1-5-5-5-rev-ext 33638)
  (unsigned-int-8-8-8-8-rev-ext 33639)
  (unsigned-int-2-10-10-10-rev-ext 33640))

(define-enumeration
  ext-texture-type-2-10-10-10-rev
  (polygon-offset-ext 32823)
  (polygon-offset-factor-ext 32824)
  (polygon-offset-bias-ext 32825))

(define-enumeration
  ext-polygon-offset
  (polygon-offset-ext 32823)
  (polygon-offset-factor-ext 32824)
  (polygon-offset-bias-ext 32825))

(define-enumeration
  ext-rescale-normal
  (rescale-normal-ext 32826))

(define-enumeration
  ext-texture
  (alpha4-ext 32827)
  (alpha8-ext 32828)
  (alpha12-ext 32829)
  (alpha16-ext 32830)
  (luminance4-ext 32831)
  (luminance8-ext 32832)
  (luminance12-ext 32833)
  (luminance16-ext 32834)
  (luminance4-alpha4-ext 32835)
  (luminance6-alpha2-ext 32836)
  (luminance8-alpha8-ext 32837)
  (luminance12-alpha4-ext 32838)
  (luminance12-alpha12-ext 32839)
  (luminance16-alpha16-ext 32840)
  (intensity-ext 32841)
  (intensity4-ext 32842)
  (intensity8-ext 32843)
  (intensity12-ext 32844)
  (intensity16-ext 32845)
  (rgb2-ext 32846)
  (rgb4-ext 32847)
  (rgb5-ext 32848)
  (rgb8-ext 32849)
  (rgb10-ext 32850)
  (rgb12-ext 32851)
  (rgb16-ext 32852)
  (rgba2-ext 32853)
  (rgba4-ext 32854)
  (rgb5-a1-ext 32855)
  (rgba8-ext 32856)
  (rgb10-a2-ext 32857)
  (rgba12-ext 32858)
  (rgba16-ext 32859)
  (texture-red-size-ext 32860)
  (texture-green-size-ext 32861)
  (texture-blue-size-ext 32862)
  (texture-alpha-size-ext 32863)
  (texture-luminance-size-ext 32864)
  (texture-intensity-size-ext 32865)
  (replace-ext 32866)
  (proxy-texture-1d-ext 32867)
  (proxy-texture-2d-ext 32868)
  (texture-too-large-ext 32869))

(define-enumeration
  ext-texture-object
  (texture-priority-ext 32870)
  (texture-resident-ext 32871)
  (texture-1d-binding-ext 32872)
  (texture-2d-binding-ext 32873)
  (texture-3d-binding-ext 32874))

(define-enumeration
  ext-texture-3d
  (pack-skip-images-ext 32875)
  (pack-image-height-ext 32876)
  (unpack-skip-images-ext 32877)
  (unpack-image-height-ext 32878)
  (texture-3d-ext 32879)
  (proxy-texture-3d-ext 32880)
  (texture-depth-ext 32881)
  (texture-wrap-r-ext 32882)
  (max-3d-texture-size-ext 32883))

(define-enumeration
  oes-texture-3d
  (texture-3d-binding-oes 32874)
  (texture-3d-oes 32879)
  (texture-wrap-r-oes 32882)
  (max-3d-texture-size-oes 32883)
  (sampler-3d-oes 35679)
  (framebuffer-attachment-texture-3d-zoffset-oes
    36052))

(define-enumeration
  ext-vertex-array
  (vertex-array-ext 32884)
  (normal-array-ext 32885)
  (color-array-ext 32886)
  (index-array-ext 32887)
  (texture-coord-array-ext 32888)
  (edge-flag-array-ext 32889)
  (vertex-array-size-ext 32890)
  (vertex-array-type-ext 32891)
  (vertex-array-stride-ext 32892)
  (vertex-array-count-ext 32893)
  (normal-array-type-ext 32894)
  (normal-array-stride-ext 32895)
  (normal-array-count-ext 32896)
  (color-array-size-ext 32897)
  (color-array-type-ext 32898)
  (color-array-stride-ext 32899)
  (color-array-count-ext 32900)
  (index-array-type-ext 32901)
  (index-array-stride-ext 32902)
  (index-array-count-ext 32903)
  (texture-coord-array-size-ext 32904)
  (texture-coord-array-type-ext 32905)
  (texture-coord-array-stride-ext 32906)
  (texture-coord-array-count-ext 32907)
  (edge-flag-array-stride-ext 32908)
  (edge-flag-array-count-ext 32909)
  (vertex-array-pointer-ext 32910)
  (normal-array-pointer-ext 32911)
  (color-array-pointer-ext 32912)
  (index-array-pointer-ext 32913)
  (texture-coord-array-pointer-ext 32914)
  (edge-flag-array-pointer-ext 32915))

(define-enumeration
  sgix-interlace
  (interlace-sgix 32916))

(define-enumeration
  sgis-detail-texture
  (detail-texture-2d-sgis 32917)
  (detail-texture-2d-binding-sgis 32918)
  (linear-detail-sgis 32919)
  (linear-detail-alpha-sgis 32920)
  (linear-detail-color-sgis 32921)
  (detail-texture-level-sgis 32922)
  (detail-texture-mode-sgis 32923)
  (detail-texture-func-points-sgis 32924))

(define-enumeration
  sgis-multisample
  (multisample-sgis 32925)
  (sample-alpha-to-mask-sgis 32926)
  (sample-alpha-to-one-sgis 32927)
  (sample-mask-sgis 32928)
  (#{1pass-sgis}# 32929)
  (#{2pass-0-sgis}# 32930)
  (#{2pass-1-sgis}# 32931)
  (#{4pass-0-sgis}# 32932)
  (#{4pass-1-sgis}# 32933)
  (#{4pass-2-sgis}# 32934)
  (#{4pass-3-sgis}# 32935)
  (sample-buffers-sgis 32936)
  (samples-sgis 32937)
  (sample-mask-value-sgis 32938)
  (sample-mask-invert-sgis 32939)
  (sample-pattern-sgis 32940))

(define-enumeration
  nv-multisample-coverage
  (coverage-samples-nv 32937)
  (color-samples-nv 36384))

(define-enumeration
  sgis-sharpen-texture
  (linear-sharpen-sgis 32941)
  (linear-sharpen-alpha-sgis 32942)
  (linear-sharpen-color-sgis 32943)
  (sharpen-texture-func-points-sgis 32944))

(define-enumeration
  sgi-color-matrix
  (color-matrix-sgi 32945)
  (color-matrix-stack-depth-sgi 32946)
  (max-color-matrix-stack-depth-sgi 32947)
  (post-color-matrix-red-scale-sgi 32948)
  (post-color-matrix-green-scale-sgi 32949)
  (post-color-matrix-blue-scale-sgi 32950)
  (post-color-matrix-alpha-scale-sgi 32951)
  (post-color-matrix-red-bias-sgi 32952)
  (post-color-matrix-green-bias-sgi 32953)
  (post-color-matrix-blue-bias-sgi 32954)
  (post-color-matrix-alpha-bias-sgi 32955))

(define-enumeration
  sgi-texture-color-table
  (texture-color-table-sgi 32956)
  (proxy-texture-color-table-sgi 32957))

(define-enumeration
  sgix-texture-add-env
  (texture-env-bias-sgix 32958))

(define-enumeration
  sgix-shadow-ambient
  (shadow-ambient-sgix 32959))

(define-enumeration
  version-1-4
  (blend-dst-rgb 32968)
  (blend-src-rgb 32969)
  (blend-dst-alpha 32970)
  (blend-src-alpha 32971)
  (point-size-min 33062)
  (point-size-max 33063)
  (point-fade-threshold-size 33064)
  (point-distance-attenuation 33065)
  (generate-mipmap 33169)
  (generate-mipmap-hint 33170)
  (depth-component16 33189)
  (depth-component24 33190)
  (depth-component32 33191)
  (mirrored-repeat 33648)
  (fog-coordinate-source 33872)
  (fog-coordinate 33873)
  (fragment-depth 33874)
  (current-fog-coordinate 33875)
  (fog-coordinate-array-type 33876)
  (fog-coordinate-array-stride 33877)
  (fog-coordinate-array-pointer 33878)
  (fog-coordinate-array 33879)
  (color-sum 33880)
  (current-secondary-color 33881)
  (secondary-color-array-size 33882)
  (secondary-color-array-type 33883)
  (secondary-color-array-stride 33884)
  (secondary-color-array-pointer 33885)
  (secondary-color-array 33886)
  (max-texture-lod-bias 34045)
  (texture-filter-control 34048)
  (texture-lod-bias 34049)
  (incr-wrap 34055)
  (decr-wrap 34056)
  (texture-depth-size 34890)
  (depth-texture-mode 34891)
  (texture-compare-mode 34892)
  (texture-compare-func 34893)
  (compare-r-to-texture 34894))

(define-enumeration
  ext-blend-func-separate
  (blend-dst-rgb-ext 32968)
  (blend-src-rgb-ext 32969)
  (blend-dst-alpha-ext 32970)
  (blend-src-alpha-ext 32971))

(define-enumeration
  oes-blend-func-separate
  (blend-dst-rgb-oes 32968)
  (blend-src-rgb-oes 32969)
  (blend-dst-alpha-oes 32970)
  (blend-src-alpha-oes 32971))

(define-enumeration
  ext-422-pixels
  (#{422-ext}# 32972)
  (#{422-rev-ext}# 32973)
  (#{422-average-ext}# 32974)
  (#{422-rev-average-ext}# 32975))

(define-enumeration
  sgi-color-table
  (color-table-sgi 32976)
  (post-convolution-color-table-sgi 32977)
  (post-color-matrix-color-table-sgi 32978)
  (proxy-color-table-sgi 32979)
  (proxy-post-convolution-color-table-sgi 32980)
  (proxy-post-color-matrix-color-table-sgi 32981)
  (color-table-scale-sgi 32982)
  (color-table-bias-sgi 32983)
  (color-table-format-sgi 32984)
  (color-table-width-sgi 32985)
  (color-table-red-size-sgi 32986)
  (color-table-green-size-sgi 32987)
  (color-table-blue-size-sgi 32988)
  (color-table-alpha-size-sgi 32989)
  (color-table-luminance-size-sgi 32990)
  (color-table-intensity-size-sgi 32991))

(define-enumeration
  arb-vertex-array-bgra
  (bgr-ext 32992)
  (bgra-ext 32993))

(define-enumeration
  ext-bgra
  (bgr-ext 32992)
  (bgra-ext 32993))

(define-enumeration
  sgis-texture-select
  (dual-alpha4-sgis 33040)
  (dual-alpha8-sgis 33041)
  (dual-alpha12-sgis 33042)
  (dual-alpha16-sgis 33043)
  (dual-luminance4-sgis 33044)
  (dual-luminance8-sgis 33045)
  (dual-luminance12-sgis 33046)
  (dual-luminance16-sgis 33047)
  (dual-intensity4-sgis 33048)
  (dual-intensity8-sgis 33049)
  (dual-intensity12-sgis 33050)
  (dual-intensity16-sgis 33051)
  (dual-luminance-alpha4-sgis 33052)
  (dual-luminance-alpha8-sgis 33053)
  (quad-alpha4-sgis 33054)
  (quad-alpha8-sgis 33055)
  (quad-luminance4-sgis 33056)
  (quad-luminance8-sgis 33057)
  (quad-intensity4-sgis 33058)
  (quad-intensity8-sgis 33059)
  (dual-texture-select-sgis 33060)
  (quad-texture-select-sgis 33061))

(define-enumeration
  arb-point-parameters
  (point-size-min-arb 33062)
  (point-size-max-arb 33063)
  (point-fade-threshold-size-arb 33064)
  (point-distance-attenuation-arb 33065))

(define-enumeration
  ext-point-parameters
  (point-size-min-ext 33062)
  (point-size-max-ext 33063)
  (point-fade-threshold-size-ext 33064)
  (distance-attenuation-ext 33065))

(define-enumeration
  sgis-point-parameters
  (point-size-min-sgis 33062)
  (point-size-max-sgis 33063)
  (point-fade-threshold-size-sgis 33064)
  (distance-attenuation-sgis 33065))

(define-enumeration
  sgis-fog-function
  (fog-func-sgis 33066)
  (fog-func-points-sgis 33067)
  (max-fog-func-points-sgis 33068))

(define-enumeration
  arb-texture-border-clamp
  (clamp-to-border-arb 33069))

(define-enumeration
  sgis-texture-border-clamp
  (clamp-to-border-sgis 33069))

(define-enumeration
  sgix-texture-multi-buffer
  (texture-multi-buffer-hint-sgix 33070))

(define-enumeration
  sgis-texture-edge-clamp
  (clamp-to-edge-sgis 33071))

(define-enumeration
  sgis-texture-4d
  (pack-skip-volumes-sgis 33072)
  (pack-image-depth-sgis 33073)
  (unpack-skip-volumes-sgis 33074)
  (unpack-image-depth-sgis 33075)
  (texture-4d-sgis 33076)
  (proxy-texture-4d-sgis 33077)
  (texture-4dsize-sgis 33078)
  (texture-wrap-q-sgis 33079)
  (max-4d-texture-size-sgis 33080)
  (texture-4d-binding-sgis 33103))

(define-enumeration
  sgix-pixel-texture
  (pixel-tex-gen-sgix 33081)
  (pixel-tex-gen-mode-sgix 33579))

(define-enumeration
  sgis-texture-lod
  (texture-min-lod-sgis 33082)
  (texture-max-lod-sgis 33083)
  (texture-base-level-sgis 33084)
  (texture-max-level-sgis 33085))

(define-enumeration
  sgix-pixel-tiles
  (pixel-tile-best-alignment-sgix 33086)
  (pixel-tile-cache-increment-sgix 33087)
  (pixel-tile-width-sgix 33088)
  (pixel-tile-height-sgix 33089)
  (pixel-tile-grid-width-sgix 33090)
  (pixel-tile-grid-height-sgix 33091)
  (pixel-tile-grid-depth-sgix 33092)
  (pixel-tile-cache-size-sgix 33093))

(define-enumeration
  sgis-texture-filter-4
  (filter4-sgis 33094)
  (texture-filter4-size-sgis 33095))

(define-enumeration
  sgix-sprite
  (sprite-sgix 33096)
  (sprite-mode-sgix 33097)
  (sprite-axis-sgix 33098)
  (sprite-translation-sgix 33099)
  (sprite-axial-sgix 33100)
  (sprite-object-aligned-sgix 33101)
  (sprite-eye-aligned-sgix 33102))

(define-enumeration
  hp-convolution-border-modes
  (ignore-border-hp 33104)
  (constant-border-hp 33105)
  (replicate-border-hp 33107)
  (convolution-border-color-hp 33108))

(define-enumeration
  sgix-clipmap
  (linear-clipmap-linear-sgix 33136)
  (texture-clipmap-center-sgix 33137)
  (texture-clipmap-frame-sgix 33138)
  (texture-clipmap-offset-sgix 33139)
  (texture-clipmap-virtual-depth-sgix 33140)
  (texture-clipmap-lod-offset-sgix 33141)
  (texture-clipmap-depth-sgix 33142)
  (max-clipmap-depth-sgix 33143)
  (max-clipmap-virtual-depth-sgix 33144)
  (nearest-clipmap-nearest-sgix 33869)
  (nearest-clipmap-linear-sgix 33870)
  (linear-clipmap-nearest-sgix 33871))

(define-enumeration
  sgix-texture-scale-bias
  (post-texture-filter-bias-sgix 33145)
  (post-texture-filter-scale-sgix 33146)
  (post-texture-filter-bias-range-sgix 33147)
  (post-texture-filter-scale-range-sgix 33148))

(define-enumeration
  sgix-reference-plane
  (reference-plane-sgix 33149)
  (reference-plane-equation-sgix 33150))

(define-enumeration
  sgix-ir-instrument-1
  (ir-instrument1-sgix 33151))

(define-enumeration
  sgix-instruments
  (instrument-buffer-pointer-sgix 33152)
  (instrument-measurements-sgix 33153))

(define-enumeration
  sgix-list-priority
  (list-priority-sgix 33154))

(define-enumeration
  sgix-calligraphic-fragment
  (calligraphic-fragment-sgix 33155))

(define-enumeration
  sgix-impact-pixel-texture
  (pixel-tex-gen-q-ceiling-sgix 33156)
  (pixel-tex-gen-q-round-sgix 33157)
  (pixel-tex-gen-q-floor-sgix 33158)
  (pixel-tex-gen-alpha-replace-sgix 33159)
  (pixel-tex-gen-alpha-no-replace-sgix 33160)
  (pixel-tex-gen-alpha-ls-sgix 33161)
  (pixel-tex-gen-alpha-ms-sgix 33162))

(define-enumeration
  sgix-framezoom
  (framezoom-sgix 33163)
  (framezoom-factor-sgix 33164)
  (max-framezoom-factor-sgix 33165))

(define-enumeration
  sgix-texture-lod-bias
  (texture-lod-bias-s-sgix 33166)
  (texture-lod-bias-t-sgix 33167)
  (texture-lod-bias-r-sgix 33168))

(define-enumeration
  sgis-generate-mipmap
  (generate-mipmap-sgis 33169)
  (generate-mipmap-hint-sgis 33170))

(define-enumeration
  sgix-polynomial-ffd
  (geometry-deformation-sgix 33172)
  (texture-deformation-sgix 33173)
  (deformations-mask-sgix 33174)
  (max-deformation-order-sgix 33175))

(define-enumeration
  sgix-fog-offset
  (fog-offset-sgix 33176)
  (fog-offset-value-sgix 33177))

(define-enumeration
  sgix-shadow
  (texture-compare-sgix 33178)
  (texture-compare-operator-sgix 33179)
  (texture-lequal-r-sgix 33180)
  (texture-gequal-r-sgix 33181))

(define-enumeration
  arb-depth-texture
  (depth-component16-arb 33189)
  (depth-component24-arb 33190)
  (depth-component32-arb 33191)
  (texture-depth-size-arb 34890)
  (depth-texture-mode-arb 34891))

(define-enumeration
  sgix-depth-texture
  (depth-component16-sgix 33189)
  (depth-component24-sgix 33190)
  (depth-component32-sgix 33191))

(define-enumeration
  oes-depth-24
  (depth-component24-oes 33190))

(define-enumeration
  oes-depth-32
  (depth-component32-oes 33191))

(define-enumeration
  ext-compiled-vertex-array
  (array-element-lock-first-ext 33192)
  (array-element-lock-count-ext 33193))

(define-enumeration
  ext-cull-vertex
  (cull-vertex-ext 33194)
  (cull-vertex-eye-position-ext 33195)
  (cull-vertex-object-position-ext 33196))

(define-enumeration
  ext-index-array-formats
  (iui-v2f-ext 33197)
  (iui-v3f-ext 33198)
  (iui-n3f-v2f-ext 33199)
  (iui-n3f-v3f-ext 33200)
  (t2f-iui-v2f-ext 33201)
  (t2f-iui-v3f-ext 33202)
  (t2f-iui-n3f-v2f-ext 33203)
  (t2f-iui-n3f-v3f-ext 33204))

(define-enumeration
  ext-index-func
  (index-test-ext 33205)
  (index-test-func-ext 33206)
  (index-test-ref-ext 33207))

(define-enumeration
  ext-index-material
  (index-material-ext 33208)
  (index-material-parameter-ext 33209)
  (index-material-face-ext 33210))

(define-enumeration
  sgix-ycrcb
  (ycrcb-422-sgix 33211)
  (ycrcb-444-sgix 33212))

(define-enumeration
  sunx-general-triangle-list
  (restart-sun 1)
  (replace-middle-sun 2)
  (replace-oldest-sun 3)
  (wrap-border-sun 33236)
  (triangle-list-sun 33239)
  (replacement-code-sun 33240)
  (replacement-code-array-sun 34240)
  (replacement-code-array-type-sun 34241)
  (replacement-code-array-stride-sun 34242)
  (replacement-code-array-pointer-sun 34243)
  (r1ui-v3f-sun 34244)
  (r1ui-c4ub-v3f-sun 34245)
  (r1ui-c3f-v3f-sun 34246)
  (r1ui-n3f-v3f-sun 34247)
  (r1ui-c4f-n3f-v3f-sun 34248)
  (r1ui-t2f-v3f-sun 34249)
  (r1ui-t2f-n3f-v3f-sun 34250)
  (r1ui-t2f-c4f-n3f-v3f-sun 34251))

(define-enumeration
  sunx-constant-data
  (unpack-constant-data-sunx 33237)
  (texture-constant-data-sunx 33238))

(define-enumeration
  sun-global-alpha
  (global-alpha-sun 33241)
  (global-alpha-factor-sun 33242))

(define-enumeration
  sgis-texture-color-mask
  (texture-color-writemask-sgis 33263))

(define-enumeration
  sgis-point-line-texgen
  (eye-distance-to-point-sgis 33264)
  (object-distance-to-point-sgis 33265)
  (eye-distance-to-line-sgis 33266)
  (object-distance-to-line-sgis 33267)
  (eye-point-sgis 33268)
  (object-point-sgis 33269)
  (eye-line-sgis 33270)
  (object-line-sgis 33271))

(define-enumeration
  ext-separate-specular-color
  (light-model-color-control-ext 33272)
  (single-color-ext 33273)
  (separate-specular-color-ext 33274))

(define-enumeration
  ext-shared-texture-palette
  (shared-texture-palette-ext 33275))

(define-enumeration
  ati-text-fragment-shader
  (text-fragment-shader-ati 33280))

(define-enumeration
  ext-color-buffer-half-float
  (framebuffer-attachment-component-type-ext 33297)
  (r16f-ext 33325)
  (rg16f-ext 33327)
  (rgba16f-ext 34842)
  (rgb16f-ext 34843)
  (unsigned-normalized-ext 35863))

(define-enumeration
  oes-surfaceless-context
  (framebuffer-undefined-oes 33305))

(define-enumeration
  arb-texture-rg
  (rg 33319)
  (rg-integer 33320)
  (r8 33321)
  (r16 33322)
  (rg8 33323)
  (rg16 33324)
  (r16f 33325)
  (r32f 33326)
  (rg16f 33327)
  (rg32f 33328)
  (r8i 33329)
  (r8ui 33330)
  (r16i 33331)
  (r16ui 33332)
  (r32i 33333)
  (r32ui 33334)
  (rg8i 33335)
  (rg8ui 33336)
  (rg16i 33337)
  (rg16ui 33338)
  (rg32i 33339)
  (rg32ui 33340))

(define-enumeration
  arb-cl-event
  (sync-cl-event-arb 33344)
  (sync-cl-event-complete-arb 33345))

(define-enumeration
  arb-debug-output
  (debug-output-synchronous-arb 33346)
  (debug-next-logged-message-length-arb 33347)
  (debug-callback-function-arb 33348)
  (debug-callback-user-param-arb 33349)
  (debug-source-api-arb 33350)
  (debug-source-window-system-arb 33351)
  (debug-source-shader-compiler-arb 33352)
  (debug-source-third-party-arb 33353)
  (debug-source-application-arb 33354)
  (debug-source-other-arb 33355)
  (debug-type-error-arb 33356)
  (debug-type-deprecated-behavior-arb 33357)
  (debug-type-undefined-behavior-arb 33358)
  (debug-type-portability-arb 33359)
  (debug-type-performance-arb 33360)
  (debug-type-other-arb 33361)
  (max-debug-message-length-arb 37187)
  (max-debug-logged-messages-arb 37188)
  (debug-logged-messages-arb 37189)
  (debug-severity-high-arb 37190)
  (debug-severity-medium-arb 37191)
  (debug-severity-low-arb 37192))

(define-enumeration
  arb-get-program-binary
  (program-binary-retrievable-hint 33367)
  (program-binary-length 34625)
  (num-program-binary-formats 34814)
  (program-binary-formats 34815))

(define-enumeration
  arb-viewport-array
  (max-viewports 33371)
  (viewport-subpixel-bits 33372)
  (viewport-bounds-range 33373)
  (layer-provoking-vertex 33374)
  (viewport-index-provoking-vertex 33375)
  (undefined-vertex 33376)
  (first-vertex-convention 36429)
  (last-vertex-convention 36430)
  (provoking-vertex 36431))

(define-enumeration
  arb-explicit-uniform-location
  (max-uniform-locations 33390))

(define-enumeration
  arb-internalformat-query-2
  (internalformat-supported 33391)
  (internalformat-preferred 33392)
  (internalformat-red-size 33393)
  (internalformat-green-size 33394)
  (internalformat-blue-size 33395)
  (internalformat-alpha-size 33396)
  (internalformat-depth-size 33397)
  (internalformat-stencil-size 33398)
  (internalformat-shared-size 33399)
  (internalformat-red-type 33400)
  (internalformat-green-type 33401)
  (internalformat-blue-type 33402)
  (internalformat-alpha-type 33403)
  (internalformat-depth-type 33404)
  (internalformat-stencil-type 33405)
  (max-width 33406)
  (max-height 33407)
  (max-depth 33408)
  (max-layers 33409)
  (max-combined-dimensions 33410)
  (color-components 33411)
  (depth-components 33412)
  (stencil-components 33413)
  (color-renderable 33414)
  (depth-renderable 33415)
  (stencil-renderable 33416)
  (framebuffer-renderable 33417)
  (framebuffer-renderable-layered 33418)
  (framebuffer-blend 33419)
  (read-pixels 33420)
  (read-pixels-format 33421)
  (read-pixels-type 33422)
  (texture-image-format 33423)
  (texture-image-type 33424)
  (get-texture-image-format 33425)
  (get-texture-image-type 33426)
  (mipmap 33427)
  (manual-generate-mipmap 33428)
  (auto-generate-mipmap 33429)
  (color-encoding 33430)
  (srgb-read 33431)
  (srgb-write 33432)
  (srgb-decode-arb 33433)
  (filter 33434)
  (vertex-texture 33435)
  (tess-control-texture 33436)
  (tess-evaluation-texture 33437)
  (geometry-texture 33438)
  (fragment-texture 33439)
  (compute-texture 33440)
  (texture-shadow 33441)
  (texture-gather 33442)
  (texture-gather-shadow 33443)
  (shader-image-load 33444)
  (shader-image-store 33445)
  (shader-image-atomic 33446)
  (image-texel-size 33447)
  (image-compatibility-class 33448)
  (image-pixel-format 33449)
  (image-pixel-type 33450)
  (simultaneous-texture-and-depth-test 33452)
  (simultaneous-texture-and-stencil-test 33453)
  (simultaneous-texture-and-depth-write 33454)
  (simultaneous-texture-and-stencil-write 33455)
  (texture-compressed-block-width 33457)
  (texture-compressed-block-height 33458)
  (texture-compressed-block-size 33459)
  (clear-buffer 33460)
  (texture-view 33461)
  (view-compatibility-class 33462)
  (full-support 33463)
  (caveat-support 33464)
  (image-class-4-x-32 33465)
  (image-class-2-x-32 33466)
  (image-class-1-x-32 33467)
  (image-class-4-x-16 33468)
  (image-class-2-x-16 33469)
  (image-class-1-x-16 33470)
  (image-class-4-x-8 33471)
  (image-class-2-x-8 33472)
  (image-class-1-x-8 33473)
  (image-class-11-11-10 33474)
  (image-class-10-10-10-2 33475)
  (view-class-128-bits 33476)
  (view-class-96-bits 33477)
  (view-class-64-bits 33478)
  (view-class-48-bits 33479)
  (view-class-32-bits 33480)
  (view-class-24-bits 33481)
  (view-class-16-bits 33482)
  (view-class-8-bits 33483)
  (view-class-s3tc-dxt1-rgb 33484)
  (view-class-s3tc-dxt1-rgba 33485)
  (view-class-s3tc-dxt3-rgba 33486)
  (view-class-s3tc-dxt5-rgba 33487)
  (view-class-rgtc1-red 33488)
  (view-class-rgtc2-rg 33489)
  (view-class-bptc-unorm 33490)
  (view-class-bptc-float 33491))

(define-enumeration
  arb-vertex-attrib-binding
  (vertex-attrib-binding 33492)
  (vertex-attrib-relative-offset 33493)
  (vertex-binding-divisor 33494)
  (vertex-binding-offset 33495)
  (vertex-binding-stride 33496)
  (max-vertex-attrib-relative-offset 33497)
  (max-vertex-attrib-bindings 33498))

(define-enumeration
  arb-texture-view
  (texture-view-min-level 33499)
  (texture-view-num-levels 33500)
  (texture-view-min-layer 33501)
  (texture-view-num-layers 33502)
  (texture-immutable-levels 33503))

(define-enumeration
  sgix-depth-pass-instrument
  (depth-pass-instrument-sgix 33552)
  (depth-pass-instrument-counters-sgix 33553)
  (depth-pass-instrument-max-sgix 33554))

(define-enumeration
  sgix-fragments-instrument
  (fragments-instrument-sgix 33555)
  (fragments-instrument-counters-sgix 33556)
  (fragments-instrument-max-sgix 33557))

(define-enumeration
  sgix-convolution-accuracy
  (convolution-hint-sgix 33558))

(define-enumeration
  sgix-ycrcba
  (ycrcb-sgix 33560)
  (ycrcba-sgix 33561))

(define-enumeration
  sgix-slim
  (unpack-compressed-size-sgix 33562)
  (pack-max-compressed-size-sgix 33563)
  (pack-compressed-size-sgix 33564)
  (slim8u-sgix 33565)
  (slim10u-sgix 33566)
  (slim12s-sgix 33567))

(define-enumeration
  sgix-blend-alpha-minmax
  (alpha-min-sgix 33568)
  (alpha-max-sgix 33569))

(define-enumeration
  sgix-scalebias-hint
  (scalebias-hint-sgix 33570))

(define-enumeration
  sgix-async
  (async-marker-sgix 33577))

(define-enumeration
  sgix-async-histogram
  (async-histogram-sgix 33580)
  (max-async-histogram-sgix 33581))

(define-enumeration
  ext-pixel-transform
  (pixel-transform-2d-ext 33584)
  (pixel-mag-filter-ext 33585)
  (pixel-min-filter-ext 33586)
  (pixel-cubic-weight-ext 33587)
  (cubic-ext 33588)
  (average-ext 33589)
  (pixel-transform-2d-stack-depth-ext 33590)
  (max-pixel-transform-2d-stack-depth-ext 33591)
  (pixel-transform-2d-matrix-ext 33592))

(define-enumeration
  ext-light-texture
  (fragment-material-ext 33609)
  (fragment-normal-ext 33610)
  (fragment-color-ext 33612)
  (attenuation-ext 33613)
  (shadow-attenuation-ext 33614)
  (texture-application-mode-ext 33615)
  (texture-light-ext 33616)
  (texture-material-face-ext 33617)
  (texture-material-parameter-ext 33618)
  (fragment-depth-ext 33874))

(define-enumeration
  sgis-pixel-texture
  (pixel-texture-sgis 33619)
  (pixel-fragment-rgb-source-sgis 33620)
  (pixel-fragment-alpha-source-sgis 33621)
  (pixel-group-color-sgis 33622))

(define-enumeration
  sgix-line-quality-hint
  (line-quality-hint-sgix 33627))

(define-enumeration
  sgix-async-pixel
  (async-tex-image-sgix 33628)
  (async-draw-pixels-sgix 33629)
  (async-read-pixels-sgix 33630)
  (max-async-tex-image-sgix 33631)
  (max-async-draw-pixels-sgix 33632)
  (max-async-read-pixels-sgix 33633))

(define-enumeration
  sgix-texture-coordinate-clamp
  (texture-max-clamp-s-sgix 33641)
  (texture-max-clamp-t-sgix 33642)
  (texture-max-clamp-r-sgix 33643)
  (fog-factor-to-alpha-sgix 33647))

(define-enumeration
  arb-texture-mirrored-repeat
  (mirrored-repeat-arb 33648))

(define-enumeration
  ibm-texture-mirrored-repeat
  (mirrored-repeat-ibm 33648))

(define-enumeration
  oes-texture-mirrored-repeat
  (mirrored-repeat-oes 33648))

(define-enumeration
  s3-s-3-tc
  (rgb-s3tc 33696)
  (rgb4-s3tc 33697)
  (rgba-s3tc 33698)
  (rgba4-s3tc 33699)
  (rgba-dxt5-s3tc 33700)
  (rgba4-dxt5-s3tc 33701))

(define-enumeration
  sgix-vertex-preclip
  (vertex-preclip-sgix 33774)
  (vertex-preclip-hint-sgix 33775))

(define-enumeration
  ext-texture-compression-s-3-tc
  (compressed-rgb-s3tc-dxt1-ext 33776)
  (compressed-rgba-s3tc-dxt1-ext 33777)
  (compressed-rgba-s3tc-dxt3-ext 33778)
  (compressed-rgba-s3tc-dxt5-ext 33779))

(define-enumeration
  angle-texture-compression-dxt-3
  (compressed-rgba-s3tc-dxt3-angle 33778))

(define-enumeration
  angle-texture-compression-dxt-5
  (compressed-rgba-s3tc-dxt5-angle 33779))

(define-enumeration
  intel-parallel-arrays
  (parallel-arrays-intel 33780)
  (vertex-array-parallel-pointers-intel 33781)
  (normal-array-parallel-pointers-intel 33782)
  (color-array-parallel-pointers-intel 33783)
  (texture-coord-array-parallel-pointers-intel
    33784))

(define-enumeration
  sgix-fragment-lighting
  (fragment-lighting-sgix 33792)
  (fragment-color-material-sgix 33793)
  (fragment-color-material-face-sgix 33794)
  (fragment-color-material-parameter-sgix 33795)
  (max-fragment-lights-sgix 33796)
  (max-active-lights-sgix 33797)
  (current-raster-normal-sgix 33798)
  (light-env-mode-sgix 33799)
  (fragment-light-model-local-viewer-sgix 33800)
  (fragment-light-model-two-side-sgix 33801)
  (fragment-light-model-ambient-sgix 33802)
  (fragment-light-model-normal-interpolation-sgix
    33803)
  (fragment-light0-sgix 33804)
  (fragment-light1-sgix 33805)
  (fragment-light2-sgix 33806)
  (fragment-light3-sgix 33807)
  (fragment-light4-sgix 33808)
  (fragment-light5-sgix 33809)
  (fragment-light6-sgix 33810)
  (fragment-light7-sgix 33811))

(define-enumeration
  sgix-resample
  (pack-resample-sgix 33836)
  (unpack-resample-sgix 33837)
  (resample-replicate-sgix 33838)
  (resample-zero-fill-sgix 33839)
  (resample-decimate-sgix 33840))

(define-enumeration
  version-1-5
  (fog-coord-src 33872)
  (fog-coord 33873)
  (current-fog-coord 33875)
  (fog-coord-array-type 33876)
  (fog-coord-array-stride 33877)
  (fog-coord-array-pointer 33878)
  (fog-coord-array 33879)
  (src0-rgb 34176)
  (src1-rgb 34177)
  (src2-rgb 34178)
  (src0-alpha 34184)
  (src1-alpha 34185)
  (src2-alpha 34186)
  (buffer-size 34660)
  (buffer-usage 34661)
  (query-counter-bits 34916)
  (current-query 34917)
  (query-result 34918)
  (query-result-available 34919)
  (array-buffer 34962)
  (element-array-buffer 34963)
  (array-buffer-binding 34964)
  (element-array-buffer-binding 34965)
  (vertex-array-buffer-binding 34966)
  (normal-array-buffer-binding 34967)
  (color-array-buffer-binding 34968)
  (index-array-buffer-binding 34969)
  (texture-coord-array-buffer-binding 34970)
  (edge-flag-array-buffer-binding 34971)
  (secondary-color-array-buffer-binding 34972)
  (fog-coord-array-buffer-binding 34973)
  (fog-coordinate-array-buffer-binding 34973)
  (weight-array-buffer-binding 34974)
  (vertex-attrib-array-buffer-binding 34975)
  (read-only 35000)
  (write-only 35001)
  (read-write 35002)
  (buffer-access 35003)
  (buffer-mapped 35004)
  (buffer-map-pointer 35005)
  (stream-draw 35040)
  (stream-read 35041)
  (stream-copy 35042)
  (static-draw 35044)
  (static-read 35045)
  (static-copy 35046)
  (dynamic-draw 35048)
  (dynamic-read 35049)
  (dynamic-copy 35050)
  (samples-passed 35092))

(define-enumeration
  ext-fog-coord
  (fog-coordinate-source-ext 33872)
  (fog-coordinate-ext 33873)
  (fragment-depth-ext 33874)
  (current-fog-coordinate-ext 33875)
  (fog-coordinate-array-type-ext 33876)
  (fog-coordinate-array-stride-ext 33877)
  (fog-coordinate-array-pointer-ext 33878)
  (fog-coordinate-array-ext 33879))

(define-enumeration
  ext-secondary-color
  (color-sum-ext 33880)
  (current-secondary-color-ext 33881)
  (secondary-color-array-size-ext 33882)
  (secondary-color-array-type-ext 33883)
  (secondary-color-array-stride-ext 33884)
  (secondary-color-array-pointer-ext 33885)
  (secondary-color-array-ext 33886))

(define-enumeration
  arb-vertex-program
  (color-sum-arb 33880)
  (vertex-program-arb 34336)
  (vertex-attrib-array-enabled-arb 34338)
  (vertex-attrib-array-size-arb 34339)
  (vertex-attrib-array-stride-arb 34340)
  (vertex-attrib-array-type-arb 34341)
  (current-vertex-attrib-arb 34342)
  (program-length-arb 34343)
  (program-string-arb 34344)
  (max-program-matrix-stack-depth-arb 34350)
  (max-program-matrices-arb 34351)
  (current-matrix-stack-depth-arb 34368)
  (current-matrix-arb 34369)
  (vertex-program-point-size-arb 34370)
  (vertex-program-two-side-arb 34371)
  (vertex-attrib-array-pointer-arb 34373)
  (program-error-position-arb 34379)
  (program-binding-arb 34423)
  (max-vertex-attribs-arb 34921)
  (vertex-attrib-array-normalized-arb 34922)
  (max-texture-coords-arb 34929)
  (max-texture-image-units-arb 34930)
  (program-error-string-arb 34932)
  (program-format-ascii-arb 34933)
  (program-format-arb 34934)
  (program-instructions-arb 34976)
  (max-program-instructions-arb 34977)
  (program-native-instructions-arb 34978)
  (max-program-native-instructions-arb 34979)
  (program-temporaries-arb 34980)
  (max-program-temporaries-arb 34981)
  (program-native-temporaries-arb 34982)
  (max-program-native-temporaries-arb 34983)
  (program-parameters-arb 34984)
  (max-program-parameters-arb 34985)
  (program-native-parameters-arb 34986)
  (max-program-native-parameters-arb 34987)
  (program-attribs-arb 34988)
  (max-program-attribs-arb 34989)
  (program-native-attribs-arb 34990)
  (max-program-native-attribs-arb 34991)
  (program-address-registers-arb 34992)
  (max-program-address-registers-arb 34993)
  (program-native-address-registers-arb 34994)
  (max-program-native-address-registers-arb 34995)
  (max-program-local-parameters-arb 34996)
  (max-program-env-parameters-arb 34997)
  (program-under-native-limits-arb 34998)
  (transpose-current-matrix-arb 34999)
  (matrix0-arb 35008)
  (matrix1-arb 35009)
  (matrix2-arb 35010)
  (matrix3-arb 35011)
  (matrix4-arb 35012)
  (matrix5-arb 35013)
  (matrix6-arb 35014)
  (matrix7-arb 35015)
  (matrix8-arb 35016)
  (matrix9-arb 35017)
  (matrix10-arb 35018)
  (matrix11-arb 35019)
  (matrix12-arb 35020)
  (matrix13-arb 35021)
  (matrix14-arb 35022)
  (matrix15-arb 35023)
  (matrix16-arb 35024)
  (matrix17-arb 35025)
  (matrix18-arb 35026)
  (matrix19-arb 35027)
  (matrix20-arb 35028)
  (matrix21-arb 35029)
  (matrix22-arb 35030)
  (matrix23-arb 35031)
  (matrix24-arb 35032)
  (matrix25-arb 35033)
  (matrix26-arb 35034)
  (matrix27-arb 35035)
  (matrix28-arb 35036)
  (matrix29-arb 35037)
  (matrix30-arb 35038)
  (matrix31-arb 35039))

(define-enumeration
  version-2-1
  (current-raster-secondary-color 33887)
  (pixel-pack-buffer 35051)
  (pixel-unpack-buffer 35052)
  (pixel-pack-buffer-binding 35053)
  (pixel-unpack-buffer-binding 35055)
  (srgb 35904)
  (srgb8 35905)
  (srgb-alpha 35906)
  (srgb8-alpha8 35907)
  (sluminance-alpha 35908)
  (sluminance8-alpha8 35909)
  (sluminance 35910)
  (sluminance8 35911)
  (compressed-srgb 35912)
  (compressed-srgb-alpha 35913)
  (compressed-sluminance 35914)
  (compressed-sluminance-alpha 35915))

(define-enumeration
  sgix-icc-texture
  (smooth-point-size-range 2834)
  (smooth-point-size-granularity 2835)
  (smooth-line-width-range 2850)
  (smooth-line-width-granularity 2851)
  (aliased-point-size-range 33901)
  (aliased-line-width-range 33902))

(define-enumeration
  rend-screen-coordinates
  (screen-coordinates-rend 33936)
  (inverted-screen-w-rend 33937))

(define-enumeration
  arb-multitexture
  (texture0-arb 33984)
  (texture1-arb 33985)
  (texture2-arb 33986)
  (texture3-arb 33987)
  (texture4-arb 33988)
  (texture5-arb 33989)
  (texture6-arb 33990)
  (texture7-arb 33991)
  (texture8-arb 33992)
  (texture9-arb 33993)
  (texture10-arb 33994)
  (texture11-arb 33995)
  (texture12-arb 33996)
  (texture13-arb 33997)
  (texture14-arb 33998)
  (texture15-arb 33999)
  (texture16-arb 34000)
  (texture17-arb 34001)
  (texture18-arb 34002)
  (texture19-arb 34003)
  (texture20-arb 34004)
  (texture21-arb 34005)
  (texture22-arb 34006)
  (texture23-arb 34007)
  (texture24-arb 34008)
  (texture25-arb 34009)
  (texture26-arb 34010)
  (texture27-arb 34011)
  (texture28-arb 34012)
  (texture29-arb 34013)
  (texture30-arb 34014)
  (texture31-arb 34015)
  (active-texture-arb 34016)
  (client-active-texture-arb 34017)
  (max-texture-units-arb 34018))

(define-enumeration
  oes-texture-env-crossbar
  (texture0 33984)
  (texture1 33985)
  (texture2 33986)
  (texture3 33987)
  (texture4 33988)
  (texture5 33989)
  (texture6 33990)
  (texture7 33991)
  (texture8 33992)
  (texture9 33993)
  (texture10 33994)
  (texture11 33995)
  (texture12 33996)
  (texture13 33997)
  (texture14 33998)
  (texture15 33999)
  (texture16 34000)
  (texture17 34001)
  (texture18 34002)
  (texture19 34003)
  (texture20 34004)
  (texture21 34005)
  (texture22 34006)
  (texture23 34007)
  (texture24 34008)
  (texture25 34009)
  (texture26 34010)
  (texture27 34011)
  (texture28 34012)
  (texture29 34013)
  (texture30 34014)
  (texture31 34015))

(define-enumeration
  arb-transpose-matrix
  (transpose-modelview-matrix-arb 34019)
  (transpose-projection-matrix-arb 34020)
  (transpose-texture-matrix-arb 34021)
  (transpose-color-matrix-arb 34022))

(define-enumeration
  arb-texture-env-combine
  (subtract-arb 34023))

(define-enumeration
  arb-texture-compression
  (compressed-alpha-arb 34025)
  (compressed-luminance-arb 34026)
  (compressed-luminance-alpha-arb 34027)
  (compressed-intensity-arb 34028)
  (compressed-rgb-arb 34029)
  (compressed-rgba-arb 34030)
  (texture-compression-hint-arb 34031)
  (texture-compressed-image-size-arb 34464)
  (texture-compressed-arb 34465)
  (num-compressed-texture-formats-arb 34466)
  (compressed-texture-formats-arb 34467))

(define-enumeration
  nv-fence
  (all-completed-nv 34034)
  (fence-status-nv 34035)
  (fence-condition-nv 34036))

(define-enumeration
  version-3-1
  (texture-rectangle 34037)
  (texture-binding-rectangle 34038)
  (proxy-texture-rectangle 34039)
  (max-rectangle-texture-size 34040)
  (uniform-buffer 35345)
  (uniform-buffer-binding 35368)
  (uniform-buffer-start 35369)
  (uniform-buffer-size 35370)
  (max-vertex-uniform-blocks 35371)
  (max-geometry-uniform-blocks 35372)
  (max-fragment-uniform-blocks 35373)
  (max-combined-uniform-blocks 35374)
  (max-uniform-buffer-bindings 35375)
  (max-uniform-block-size 35376)
  (max-combined-vertex-uniform-components 35377)
  (max-combined-geometry-uniform-components 35378)
  (max-combined-fragment-uniform-components 35379)
  (uniform-buffer-offset-alignment 35380)
  (active-uniform-block-max-name-length 35381)
  (active-uniform-blocks 35382)
  (uniform-type 35383)
  (uniform-size 35384)
  (uniform-name-length 35385)
  (uniform-block-index 35386)
  (uniform-offset 35387)
  (uniform-array-stride 35388)
  (uniform-matrix-stride 35389)
  (uniform-is-row-major 35390)
  (uniform-block-binding 35391)
  (uniform-block-data-size 35392)
  (uniform-block-name-length 35393)
  (uniform-block-active-uniforms 35394)
  (uniform-block-active-uniform-indices 35395)
  (uniform-block-referenced-by-vertex-shader 35396)
  (uniform-block-referenced-by-geometry-shader
    35397)
  (uniform-block-referenced-by-fragment-shader
    35398)
  (invalid-index 4294967295)
  (sampler-2d-rect 35683)
  (sampler-2d-rect-shadow 35684)
  (texture-buffer 35882)
  (max-texture-buffer-size 35883)
  (texture-binding-buffer 35884)
  (texture-buffer-data-store-binding 35885)
  (sampler-buffer 36290)
  (int-sampler-2d-rect 36301)
  (int-sampler-buffer 36304)
  (unsigned-int-sampler-2d-rect 36309)
  (unsigned-int-sampler-buffer 36312)
  (copy-read-buffer 36662)
  (copy-write-buffer 36663)
  (red-snorm 36752)
  (rg-snorm 36753)
  (rgb-snorm 36754)
  (rgba-snorm 36755)
  (r8-snorm 36756)
  (rg8-snorm 36757)
  (rgb8-snorm 36758)
  (rgba8-snorm 36759)
  (r16-snorm 36760)
  (rg16-snorm 36761)
  (rgb16-snorm 36762)
  (rgba16-snorm 36763)
  (signed-normalized 36764)
  (primitive-restart 36765)
  (primitive-restart-index 36766))

(define-enumeration
  arb-texture-rectangle
  (texture-rectangle-arb 34037)
  (texture-binding-rectangle-arb 34038)
  (proxy-texture-rectangle-arb 34039)
  (max-rectangle-texture-size-arb 34040))

(define-enumeration
  nv-texture-rectangle
  (texture-rectangle-nv 34037)
  (texture-binding-rectangle-nv 34038)
  (proxy-texture-rectangle-nv 34039)
  (max-rectangle-texture-size-nv 34040))

(define-enumeration
  ext-packed-depth-stencil
  (depth-stencil-ext 34041)
  (unsigned-int-24-8-ext 34042)
  (depth24-stencil8-ext 35056)
  (texture-stencil-size-ext 35057))

(define-enumeration
  nv-packed-depth-stencil
  (depth-stencil-nv 34041)
  (unsigned-int-24-8-nv 34042))

(define-enumeration
  oes-packed-depth-stencil
  (depth-stencil-oes 34041)
  (unsigned-int-24-8-oes 34042)
  (depth24-stencil8-oes 35056))

(define-enumeration
  ext-texture-lod-bias
  (max-texture-lod-bias-ext 34045)
  (texture-filter-control-ext 34048)
  (texture-lod-bias-ext 34049))

(define-enumeration
  ext-texture-filter-anisotropic
  (texture-max-anisotropy-ext 34046)
  (max-texture-max-anisotropy-ext 34047))

(define-enumeration
  ext-vertex-weighting
  (modelview1-stack-depth-ext 34050)
  (modelview-matrix1-ext 34054)
  (vertex-weighting-ext 34057)
  (modelview1-ext 34058)
  (current-vertex-weight-ext 34059)
  (vertex-weight-array-ext 34060)
  (vertex-weight-array-size-ext 34061)
  (vertex-weight-array-type-ext 34062)
  (vertex-weight-array-stride-ext 34063)
  (vertex-weight-array-pointer-ext 34064))

(define-enumeration
  nv-light-max-exponent
  (max-shininess-nv 34052)
  (max-spot-exponent-nv 34053))

(define-enumeration
  ext-stencil-wrap
  (incr-wrap-ext 34055)
  (decr-wrap-ext 34056))

(define-enumeration
  oes-stencil-wrap
  (incr-wrap-oes 34055)
  (decr-wrap-oes 34056))

(define-enumeration
  ext-texture-cube-map
  (normal-map-ext 34065)
  (reflection-map-ext 34066)
  (texture-cube-map-ext 34067)
  (texture-binding-cube-map-ext 34068)
  (texture-cube-map-positive-x-ext 34069)
  (texture-cube-map-negative-x-ext 34070)
  (texture-cube-map-positive-y-ext 34071)
  (texture-cube-map-negative-y-ext 34072)
  (texture-cube-map-positive-z-ext 34073)
  (texture-cube-map-negative-z-ext 34074)
  (proxy-texture-cube-map-ext 34075)
  (max-cube-map-texture-size-ext 34076))

(define-enumeration
  nv-texgen-reflection
  (normal-map 34065)
  (reflection-map 34066))

(define-enumeration
  arb-texture-cube-map
  (normal-map-arb 34065)
  (reflection-map-arb 34066)
  (texture-cube-map-arb 34067)
  (texture-binding-cube-map-arb 34068)
  (texture-cube-map-positive-x-arb 34069)
  (texture-cube-map-negative-x-arb 34070)
  (texture-cube-map-positive-y-arb 34071)
  (texture-cube-map-negative-y-arb 34072)
  (texture-cube-map-positive-z-arb 34073)
  (texture-cube-map-negative-z-arb 34074)
  (proxy-texture-cube-map-arb 34075)
  (max-cube-map-texture-size-arb 34076))

(define-enumeration
  nv-vertex-array-range
  (vertex-array-range-nv 34077)
  (vertex-array-range-length-nv 34078)
  (vertex-array-range-valid-nv 34079)
  (max-vertex-array-range-element-nv 34080)
  (vertex-array-range-pointer-nv 34081))

(define-enumeration
  apple-vertex-array-range
  (vertex-array-range-apple 34077)
  (vertex-array-range-length-apple 34078)
  (vertex-array-storage-hint-apple 34079)
  (vertex-array-range-pointer-apple 34081)
  (storage-client-apple 34228)
  (storage-cached-apple 34238)
  (storage-shared-apple 34239))

(define-enumeration
  nv-register-combiners
  (register-combiners-nv 34082)
  (variable-a-nv 34083)
  (variable-b-nv 34084)
  (variable-c-nv 34085)
  (variable-d-nv 34086)
  (variable-e-nv 34087)
  (variable-f-nv 34088)
  (variable-g-nv 34089)
  (constant-color0-nv 34090)
  (constant-color1-nv 34091)
  (primary-color-nv 34092)
  (secondary-color-nv 34093)
  (spare0-nv 34094)
  (spare1-nv 34095)
  (discard-nv 34096)
  (e-times-f-nv 34097)
  (spare0-plus-secondary-color-nv 34098)
  (vertex-array-range-without-flush-nv 34099)
  (multisample-filter-hint-nv 34100)
  (unsigned-identity-nv 34102)
  (unsigned-invert-nv 34103)
  (expand-normal-nv 34104)
  (expand-negate-nv 34105)
  (half-bias-normal-nv 34106)
  (half-bias-negate-nv 34107)
  (signed-identity-nv 34108)
  (unsigned-negate-nv 34109)
  (scale-by-two-nv 34110)
  (scale-by-four-nv 34111)
  (scale-by-one-half-nv 34112)
  (bias-by-negative-one-half-nv 34113)
  (combiner-input-nv 34114)
  (combiner-mapping-nv 34115)
  (combiner-component-usage-nv 34116)
  (combiner-ab-dot-product-nv 34117)
  (combiner-cd-dot-product-nv 34118)
  (combiner-mux-sum-nv 34119)
  (combiner-scale-nv 34120)
  (combiner-bias-nv 34121)
  (combiner-ab-output-nv 34122)
  (combiner-cd-output-nv 34123)
  (combiner-sum-output-nv 34124)
  (max-general-combiners-nv 34125)
  (num-general-combiners-nv 34126)
  (color-sum-clamp-nv 34127)
  (combiner0-nv 34128)
  (combiner1-nv 34129)
  (combiner2-nv 34130)
  (combiner3-nv 34131)
  (combiner4-nv 34132)
  (combiner5-nv 34133)
  (combiner6-nv 34134)
  (combiner7-nv 34135))

(define-enumeration
  nv-register-combiners-2
  (per-stage-constants-nv 34101))

(define-enumeration
  nv-primitive-restart
  (primitive-restart-nv 34136)
  (primitive-restart-index-nv 34137))

(define-enumeration
  nv-fog-distance
  (fog-gen-mode-nv 34138)
  (eye-radial-nv 34139)
  (eye-plane-absolute-nv 34140))

(define-enumeration
  nv-texgen-emboss
  (emboss-light-nv 34141)
  (emboss-constant-nv 34142)
  (emboss-map-nv 34143))

(define-enumeration
  ingr-color-clamp
  (red-min-clamp-ingr 34144)
  (green-min-clamp-ingr 34145)
  (blue-min-clamp-ingr 34146)
  (alpha-min-clamp-ingr 34147)
  (red-max-clamp-ingr 34148)
  (green-max-clamp-ingr 34149)
  (blue-max-clamp-ingr 34150)
  (alpha-max-clamp-ingr 34151))

(define-enumeration
  ingr-interlace-read
  (interlace-read-ingr 34152))

(define-enumeration
  ext-texture-env-combine
  (combine-ext 34160)
  (combine-rgb-ext 34161)
  (combine-alpha-ext 34162)
  (rgb-scale-ext 34163)
  (add-signed-ext 34164)
  (interpolate-ext 34165)
  (constant-ext 34166)
  (primary-color-ext 34167)
  (previous-ext 34168)
  (source0-rgb-ext 34176)
  (source1-rgb-ext 34177)
  (source2-rgb-ext 34178)
  (source0-alpha-ext 34184)
  (source1-alpha-ext 34185)
  (source2-alpha-ext 34186)
  (operand0-rgb-ext 34192)
  (operand1-rgb-ext 34193)
  (operand2-rgb-ext 34194)
  (operand0-alpha-ext 34200)
  (operand1-alpha-ext 34201)
  (operand2-alpha-ext 34202))

(define-enumeration
  nv-texture-env-combine-4
  (combine4-nv 34051)
  (source3-rgb-nv 34179)
  (source3-alpha-nv 34187)
  (operand3-rgb-nv 34195)
  (operand3-alpha-nv 34203))

(define-enumeration
  sgix-subsample
  (pack-subsample-rate-sgix 34208)
  (unpack-subsample-rate-sgix 34209)
  (pixel-subsample-4444-sgix 34210)
  (pixel-subsample-2424-sgix 34211)
  (pixel-subsample-4242-sgix 34212))

(define-enumeration
  ext-texture-perturb-normal
  (perturb-ext 34222)
  (texture-normal-ext 34223))

(define-enumeration
  apple-specular-vector
  (light-model-specular-vector-apple 34224))

(define-enumeration
  apple-transform-hint
  (transform-hint-apple 34225))

(define-enumeration
  apple-client-storage
  (unpack-client-storage-apple 34226))

(define-enumeration
  apple-object-purgeable
  (buffer-object-apple 34227)
  (released-apple 35353)
  (volatile-apple 35354)
  (retained-apple 35355)
  (undefined-apple 35356)
  (purgeable-apple 35357))

(define-enumeration
  arb-vertex-array-object
  (vertex-array-binding 34229))

(define-enumeration
  apple-vertex-array-object
  (vertex-array-binding-apple 34229))

(define-enumeration
  apple-texture-range
  (texture-range-length-apple 34231)
  (texture-range-pointer-apple 34232)
  (texture-storage-hint-apple 34236)
  (storage-private-apple 34237)
  (storage-cached-apple 34238)
  (storage-shared-apple 34239))

(define-enumeration
  apple-ycbcr-422
  (ycbcr-422-apple 34233)
  (unsigned-short-8-8-apple 34234)
  (unsigned-short-8-8-rev-apple 34235))

(define-enumeration
  mesa-ycbcr-texture
  (unsigned-short-8-8-mesa 34234)
  (unsigned-short-8-8-rev-mesa 34235)
  (ycbcr-mesa 34647))

(define-enumeration
  sun-slice-accum
  (slice-accum-sun 34252))

(define-enumeration
  sun-mesh-array
  (quad-mesh-sun 34324)
  (triangle-mesh-sun 34325))

(define-enumeration
  nv-vertex-program
  (vertex-program-nv 34336)
  (vertex-state-program-nv 34337)
  (attrib-array-size-nv 34339)
  (attrib-array-stride-nv 34340)
  (attrib-array-type-nv 34341)
  (current-attrib-nv 34342)
  (program-length-nv 34343)
  (program-string-nv 34344)
  (modelview-projection-nv 34345)
  (identity-nv 34346)
  (inverse-nv 34347)
  (transpose-nv 34348)
  (inverse-transpose-nv 34349)
  (max-track-matrix-stack-depth-nv 34350)
  (max-track-matrices-nv 34351)
  (matrix0-nv 34352)
  (matrix1-nv 34353)
  (matrix2-nv 34354)
  (matrix3-nv 34355)
  (matrix4-nv 34356)
  (matrix5-nv 34357)
  (matrix6-nv 34358)
  (matrix7-nv 34359)
  (current-matrix-stack-depth-nv 34368)
  (current-matrix-nv 34369)
  (vertex-program-point-size-nv 34370)
  (vertex-program-two-side-nv 34371)
  (program-parameter-nv 34372)
  (attrib-array-pointer-nv 34373)
  (program-target-nv 34374)
  (program-resident-nv 34375)
  (track-matrix-nv 34376)
  (track-matrix-transform-nv 34377)
  (vertex-program-binding-nv 34378)
  (program-error-position-nv 34379)
  (vertex-attrib-array0-nv 34384)
  (vertex-attrib-array1-nv 34385)
  (vertex-attrib-array2-nv 34386)
  (vertex-attrib-array3-nv 34387)
  (vertex-attrib-array4-nv 34388)
  (vertex-attrib-array5-nv 34389)
  (vertex-attrib-array6-nv 34390)
  (vertex-attrib-array7-nv 34391)
  (vertex-attrib-array8-nv 34392)
  (vertex-attrib-array9-nv 34393)
  (vertex-attrib-array10-nv 34394)
  (vertex-attrib-array11-nv 34395)
  (vertex-attrib-array12-nv 34396)
  (vertex-attrib-array13-nv 34397)
  (vertex-attrib-array14-nv 34398)
  (vertex-attrib-array15-nv 34399)
  (map1-vertex-attrib0-4-nv 34400)
  (map1-vertex-attrib1-4-nv 34401)
  (map1-vertex-attrib2-4-nv 34402)
  (map1-vertex-attrib3-4-nv 34403)
  (map1-vertex-attrib4-4-nv 34404)
  (map1-vertex-attrib5-4-nv 34405)
  (map1-vertex-attrib6-4-nv 34406)
  (map1-vertex-attrib7-4-nv 34407)
  (map1-vertex-attrib8-4-nv 34408)
  (map1-vertex-attrib9-4-nv 34409)
  (map1-vertex-attrib10-4-nv 34410)
  (map1-vertex-attrib11-4-nv 34411)
  (map1-vertex-attrib12-4-nv 34412)
  (map1-vertex-attrib13-4-nv 34413)
  (map1-vertex-attrib14-4-nv 34414)
  (map1-vertex-attrib15-4-nv 34415)
  (map2-vertex-attrib0-4-nv 34416)
  (map2-vertex-attrib1-4-nv 34417)
  (map2-vertex-attrib2-4-nv 34418)
  (map2-vertex-attrib3-4-nv 34419)
  (map2-vertex-attrib4-4-nv 34420)
  (map2-vertex-attrib5-4-nv 34421)
  (map2-vertex-attrib6-4-nv 34422)
  (map2-vertex-attrib7-4-nv 34423)
  (map2-vertex-attrib8-4-nv 34424)
  (map2-vertex-attrib9-4-nv 34425)
  (map2-vertex-attrib10-4-nv 34426)
  (map2-vertex-attrib11-4-nv 34427)
  (map2-vertex-attrib12-4-nv 34428)
  (map2-vertex-attrib13-4-nv 34429)
  (map2-vertex-attrib14-4-nv 34430)
  (map2-vertex-attrib15-4-nv 34431))

(define-enumeration
  arb-depth-clamp
  (depth-clamp 34383))

(define-enumeration
  nv-depth-clamp
  (depth-clamp-nv 34383))

(define-enumeration
  arb-fragment-program
  (vertex-program-arb 34336)
  (vertex-attrib-array-enabled-arb 34338)
  (vertex-attrib-array-size-arb 34339)
  (vertex-attrib-array-stride-arb 34340)
  (vertex-attrib-array-type-arb 34341)
  (current-vertex-attrib-arb 34342)
  (program-length-arb 34343)
  (program-string-arb 34344)
  (max-program-matrix-stack-depth-arb 34350)
  (max-program-matrices-arb 34351)
  (current-matrix-stack-depth-arb 34368)
  (current-matrix-arb 34369)
  (vertex-program-point-size-arb 34370)
  (vertex-program-two-side-arb 34371)
  (vertex-attrib-array-pointer-arb 34373)
  (program-error-position-arb 34379)
  (program-binding-arb 34423)
  (fragment-program-arb 34820)
  (program-alu-instructions-arb 34821)
  (program-tex-instructions-arb 34822)
  (program-tex-indirections-arb 34823)
  (program-native-alu-instructions-arb 34824)
  (program-native-tex-instructions-arb 34825)
  (program-native-tex-indirections-arb 34826)
  (max-program-alu-instructions-arb 34827)
  (max-program-tex-instructions-arb 34828)
  (max-program-tex-indirections-arb 34829)
  (max-program-native-alu-instructions-arb 34830)
  (max-program-native-tex-instructions-arb 34831)
  (max-program-native-tex-indirections-arb 34832)
  (max-texture-coords-arb 34929)
  (max-texture-image-units-arb 34930)
  (program-error-string-arb 34932)
  (program-format-ascii-arb 34933)
  (program-format-arb 34934)
  (program-instructions-arb 34976)
  (max-program-instructions-arb 34977)
  (program-native-instructions-arb 34978)
  (max-program-native-instructions-arb 34979)
  (program-temporaries-arb 34980)
  (max-program-temporaries-arb 34981)
  (program-native-temporaries-arb 34982)
  (max-program-native-temporaries-arb 34983)
  (program-parameters-arb 34984)
  (max-program-parameters-arb 34985)
  (program-native-parameters-arb 34986)
  (max-program-native-parameters-arb 34987)
  (program-attribs-arb 34988)
  (max-program-attribs-arb 34989)
  (program-native-attribs-arb 34990)
  (max-program-native-attribs-arb 34991)
  (program-address-registers-arb 34992)
  (max-program-address-registers-arb 34993)
  (program-native-address-registers-arb 34994)
  (max-program-native-address-registers-arb 34995)
  (max-program-local-parameters-arb 34996)
  (max-program-env-parameters-arb 34997)
  (program-under-native-limits-arb 34998)
  (transpose-current-matrix-arb 34999)
  (matrix0-arb 35008)
  (matrix1-arb 35009)
  (matrix2-arb 35010)
  (matrix3-arb 35011)
  (matrix4-arb 35012)
  (matrix5-arb 35013)
  (matrix6-arb 35014)
  (matrix7-arb 35015)
  (matrix8-arb 35016)
  (matrix9-arb 35017)
  (matrix10-arb 35018)
  (matrix11-arb 35019)
  (matrix12-arb 35020)
  (matrix13-arb 35021)
  (matrix14-arb 35022)
  (matrix15-arb 35023)
  (matrix16-arb 35024)
  (matrix17-arb 35025)
  (matrix18-arb 35026)
  (matrix19-arb 35027)
  (matrix20-arb 35028)
  (matrix21-arb 35029)
  (matrix22-arb 35030)
  (matrix23-arb 35031)
  (matrix24-arb 35032)
  (matrix25-arb 35033)
  (matrix26-arb 35034)
  (matrix27-arb 35035)
  (matrix28-arb 35036)
  (matrix29-arb 35037)
  (matrix30-arb 35038)
  (matrix31-arb 35039))

(define-enumeration
  arb-vertex-blend
  (max-vertex-units-arb 34468)
  (active-vertex-units-arb 34469)
  (weight-sum-unity-arb 34470)
  (vertex-blend-arb 34471)
  (current-weight-arb 34472)
  (weight-array-type-arb 34473)
  (weight-array-stride-arb 34474)
  (weight-array-size-arb 34475)
  (weight-array-pointer-arb 34476)
  (weight-array-arb 34477)
  (modelview0-arb 5888)
  (modelview1-arb 34058)
  (modelview2-arb 34594)
  (modelview3-arb 34595)
  (modelview4-arb 34596)
  (modelview5-arb 34597)
  (modelview6-arb 34598)
  (modelview7-arb 34599)
  (modelview8-arb 34600)
  (modelview9-arb 34601)
  (modelview10-arb 34602)
  (modelview11-arb 34603)
  (modelview12-arb 34604)
  (modelview13-arb 34605)
  (modelview14-arb 34606)
  (modelview15-arb 34607)
  (modelview16-arb 34608)
  (modelview17-arb 34609)
  (modelview18-arb 34610)
  (modelview19-arb 34611)
  (modelview20-arb 34612)
  (modelview21-arb 34613)
  (modelview22-arb 34614)
  (modelview23-arb 34615)
  (modelview24-arb 34616)
  (modelview25-arb 34617)
  (modelview26-arb 34618)
  (modelview27-arb 34619)
  (modelview28-arb 34620)
  (modelview29-arb 34621)
  (modelview30-arb 34622)
  (modelview31-arb 34623))

(define-enumeration
  oes-matrix-palette
  (max-vertex-units-oes 34468)
  (weight-array-oes 34477)
  (weight-array-type-oes 34473)
  (weight-array-stride-oes 34474)
  (weight-array-size-oes 34475)
  (weight-array-pointer-oes 34476)
  (matrix-palette-oes 34880)
  (max-palette-matrices-oes 34882)
  (current-palette-matrix-oes 34883)
  (matrix-index-array-oes 34884)
  (matrix-index-array-size-oes 34886)
  (matrix-index-array-type-oes 34887)
  (matrix-index-array-stride-oes 34888)
  (matrix-index-array-pointer-oes 34889)
  (weight-array-buffer-binding-oes 34974)
  (matrix-index-array-buffer-binding-oes 35742))

(define-enumeration
  arb-texture-env-dot-3
  (dot3-rgb-arb 34478)
  (dot3-rgba-arb 34479))

(define-enumeration
  img-texture-env-enhanced-fixed-function
  (dot3-rgba-img 34479)
  (modulate-color-img 35844)
  (recip-add-signed-alpha-img 35845)
  (texture-alpha-modulate-img 35846)
  (factor-alpha-modulate-img 35847)
  (fragment-alpha-modulate-img 35848)
  (add-blend-img 35849))

(define-enumeration
  #{3dfx-texture-compression-fxt1}#
  (compressed-rgb-fxt1-3dfx 34480)
  (compressed-rgba-fxt1-3dfx 34481))

(define-enumeration
  nv-evaluators
  (eval-2d-nv 34496)
  (eval-triangular-2d-nv 34497)
  (map-tessellation-nv 34498)
  (map-attrib-u-order-nv 34499)
  (map-attrib-v-order-nv 34500)
  (eval-fractional-tessellation-nv 34501)
  (eval-vertex-atrrib0-nv 34502)
  (eval-vertex-atrrib1-nv 34503)
  (eval-vertex-atrrib2-nv 34504)
  (eval-vertex-atrrib3-nv 34505)
  (eval-vertex-atrrib4-nv 34506)
  (eval-vertex-atrrib5-nv 34507)
  (eval-vertex-atrrib6-nv 34508)
  (eval-vertex-atrrib7-nv 34509)
  (eval-vertex-atrrib8-nv 34510)
  (eval-vertex-atrrib9-nv 34511)
  (eval-vertex-atrrib10-nv 34512)
  (eval-vertex-atrrib11-nv 34513)
  (eval-vertex-atrrib12-nv 34514)
  (eval-vertex-atrrib13-nv 34515)
  (eval-vertex-atrrib14-nv 34516)
  (eval-vertex-atrrib15-nv 34517)
  (max-map-tessellation-nv 34518)
  (max-rational-eval-order-nv 34519))

(define-enumeration
  nv-tessellation-program-5
  (max-program-patch-attribs-nv 34520)
  (tess-control-program-nv 35102)
  (tess-evaluation-program-nv 35103)
  (tess-control-program-parameter-buffer-nv 35956)
  (tess-evaluation-program-parameter-buffer-nv
    35957))

(define-enumeration
  nv-texture-shader
  (offset-texture-rectangle-nv 34380)
  (offset-texture-rectangle-scale-nv 34381)
  (dot-product-texture-rectangle-nv 34382)
  (rgba-unsigned-dot-product-mapping-nv 34521)
  (unsigned-int-s8-s8-8-8-nv 34522)
  (unsigned-int-8-8-s8-s8-rev-nv 34523)
  (dsdt-mag-intensity-nv 34524)
  (shader-consistent-nv 34525)
  (texture-shader-nv 34526)
  (shader-operation-nv 34527)
  (cull-modes-nv 34528)
  (offset-texture-matrix-nv 34529)
  (offset-texture-scale-nv 34530)
  (offset-texture-bias-nv 34531)
  (offset-texture-2d-matrix-nv 34529)
  (offset-texture-2d-scale-nv 34530)
  (offset-texture-2d-bias-nv 34531)
  (previous-texture-input-nv 34532)
  (const-eye-nv 34533)
  (pass-through-nv 34534)
  (cull-fragment-nv 34535)
  (offset-texture-2d-nv 34536)
  (dependent-ar-texture-2d-nv 34537)
  (dependent-gb-texture-2d-nv 34538)
  (dot-product-nv 34540)
  (dot-product-depth-replace-nv 34541)
  (dot-product-texture-2d-nv 34542)
  (dot-product-texture-cube-map-nv 34544)
  (dot-product-diffuse-cube-map-nv 34545)
  (dot-product-reflect-cube-map-nv 34546)
  (dot-product-const-eye-reflect-cube-map-nv 34547)
  (hilo-nv 34548)
  (dsdt-nv 34549)
  (dsdt-mag-nv 34550)
  (dsdt-mag-vib-nv 34551)
  (hilo16-nv 34552)
  (signed-hilo-nv 34553)
  (signed-hilo16-nv 34554)
  (signed-rgba-nv 34555)
  (signed-rgba8-nv 34556)
  (signed-rgb-nv 34558)
  (signed-rgb8-nv 34559)
  (signed-luminance-nv 34561)
  (signed-luminance8-nv 34562)
  (signed-luminance-alpha-nv 34563)
  (signed-luminance8-alpha8-nv 34564)
  (signed-alpha-nv 34565)
  (signed-alpha8-nv 34566)
  (signed-intensity-nv 34567)
  (signed-intensity8-nv 34568)
  (dsdt8-nv 34569)
  (dsdt8-mag8-nv 34570)
  (dsdt8-mag8-intensity8-nv 34571)
  (signed-rgb-unsigned-alpha-nv 34572)
  (signed-rgb8-unsigned-alpha8-nv 34573)
  (hi-scale-nv 34574)
  (lo-scale-nv 34575)
  (ds-scale-nv 34576)
  (dt-scale-nv 34577)
  (magnitude-scale-nv 34578)
  (vibrance-scale-nv 34579)
  (hi-bias-nv 34580)
  (lo-bias-nv 34581)
  (ds-bias-nv 34582)
  (dt-bias-nv 34583)
  (magnitude-bias-nv 34584)
  (vibrance-bias-nv 34585)
  (texture-border-values-nv 34586)
  (texture-hi-size-nv 34587)
  (texture-lo-size-nv 34588)
  (texture-ds-size-nv 34589)
  (texture-dt-size-nv 34590)
  (texture-mag-size-nv 34591))

(define-enumeration
  nv-vdpau-interop
  (surface-state-nv 34539)
  (surface-registered-nv 34557)
  (surface-mapped-nv 34560)
  (write-discard-nv 35006))

(define-enumeration
  nv-texture-shader-2
  (dot-product-texture-3d-nv 34543))

(define-enumeration
  ext-texture-env-dot-3
  (dot3-rgb-ext 34624)
  (dot3-rgba-ext 34625))

(define-enumeration
  amd-program-binary-z400
  (z400-binary-amd 34624))

(define-enumeration
  oes-get-program-binary
  (program-binary-length-oes 34625)
  (num-program-binary-formats-oes 34814)
  (program-binary-formats-oes 34815))

(define-enumeration
  ati-texture-mirror-once
  (mirror-clamp-ati 34626)
  (mirror-clamp-to-edge-ati 34627))

(define-enumeration
  ext-texture-mirror-clamp
  (mirror-clamp-ext 34626)
  (mirror-clamp-to-edge-ext 34627)
  (mirror-clamp-to-border-ext 35090))

(define-enumeration
  ati-texture-env-combine-3
  (modulate-add-ati 34628)
  (modulate-signed-add-ati 34629)
  (modulate-subtract-ati 34630))

(define-enumeration
  amd-stencil-operation-extended
  (set-amd 34634)
  (replace-value-amd 34635)
  (stencil-op-value-amd 34636)
  (stencil-back-op-value-amd 34637))

(define-enumeration
  mesa-packed-depth-stencil
  (depth-stencil-mesa 34640)
  (unsigned-int-24-8-mesa 34641)
  (unsigned-int-8-24-rev-mesa 34642)
  (unsigned-short-15-1-mesa 34643)
  (unsigned-short-1-15-rev-mesa 34644))

(define-enumeration
  mesa-trace
  (trace-all-bits-mesa 65535)
  (trace-operations-bit-mesa 1)
  (trace-primitives-bit-mesa 2)
  (trace-arrays-bit-mesa 4)
  (trace-textures-bit-mesa 8)
  (trace-pixels-bit-mesa 16)
  (trace-errors-bit-mesa 32)
  (trace-mask-mesa 34645)
  (trace-name-mesa 34646))

(define-enumeration
  mesa-pack-invert
  (pack-invert-mesa 34648))

(define-enumeration
  mesax-texture-stack
  (texture-1d-stack-mesax 34649)
  (texture-2d-stack-mesax 34650)
  (proxy-texture-1d-stack-mesax 34651)
  (proxy-texture-2d-stack-mesax 34652)
  (texture-1d-stack-binding-mesax 34653)
  (texture-2d-stack-binding-mesax 34654))

(define-enumeration
  mesa-shader-debug
  (debug-object-mesa 34649)
  (debug-print-mesa 34650)
  (debug-assert-mesa 34651))

(define-enumeration
  ati-vertex-array-object
  (static-ati 34656)
  (dynamic-ati 34657)
  (preserve-ati 34658)
  (discard-ati 34659)
  (object-buffer-size-ati 34660)
  (object-buffer-usage-ati 34661)
  (array-object-buffer-ati 34662)
  (array-object-offset-ati 34663))

(define-enumeration
  arb-vertex-buffer-object
  (buffer-size-arb 34660)
  (buffer-usage-arb 34661)
  (array-buffer-arb 34962)
  (element-array-buffer-arb 34963)
  (array-buffer-binding-arb 34964)
  (element-array-buffer-binding-arb 34965)
  (vertex-array-buffer-binding-arb 34966)
  (normal-array-buffer-binding-arb 34967)
  (color-array-buffer-binding-arb 34968)
  (index-array-buffer-binding-arb 34969)
  (texture-coord-array-buffer-binding-arb 34970)
  (edge-flag-array-buffer-binding-arb 34971)
  (secondary-color-array-buffer-binding-arb 34972)
  (fog-coordinate-array-buffer-binding-arb 34973)
  (weight-array-buffer-binding-arb 34974)
  (vertex-attrib-array-buffer-binding-arb 34975)
  (read-only-arb 35000)
  (write-only-arb 35001)
  (read-write-arb 35002)
  (buffer-access-arb 35003)
  (buffer-mapped-arb 35004)
  (buffer-map-pointer-arb 35005)
  (stream-draw-arb 35040)
  (stream-read-arb 35041)
  (stream-copy-arb 35042)
  (static-draw-arb 35044)
  (static-read-arb 35045)
  (static-copy-arb 35046)
  (dynamic-draw-arb 35048)
  (dynamic-read-arb 35049)
  (dynamic-copy-arb 35050))

(define-enumeration
  ati-element-array
  (element-array-ati 34664)
  (element-array-type-ati 34665)
  (element-array-pointer-ati 34666))

(define-enumeration
  ati-vertex-streams
  (max-vertex-streams-ati 34667)
  (vertex-stream0-ati 34668)
  (vertex-stream1-ati 34669)
  (vertex-stream2-ati 34670)
  (vertex-stream3-ati 34671)
  (vertex-stream4-ati 34672)
  (vertex-stream5-ati 34673)
  (vertex-stream6-ati 34674)
  (vertex-stream7-ati 34675)
  (vertex-source-ati 34676))

(define-enumeration
  ati-envmap-bumpmap
  (bump-rot-matrix-ati 34677)
  (bump-rot-matrix-size-ati 34678)
  (bump-num-tex-units-ati 34679)
  (bump-tex-units-ati 34680)
  (dudv-ati 34681)
  (du8dv8-ati 34682)
  (bump-envmap-ati 34683)
  (bump-target-ati 34684))

(define-enumeration
  ext-vertex-shader
  (vertex-shader-ext 34688)
  (vertex-shader-binding-ext 34689)
  (op-index-ext 34690)
  (op-negate-ext 34691)
  (op-dot3-ext 34692)
  (op-dot4-ext 34693)
  (op-mul-ext 34694)
  (op-add-ext 34695)
  (op-madd-ext 34696)
  (op-frac-ext 34697)
  (op-max-ext 34698)
  (op-min-ext 34699)
  (op-set-ge-ext 34700)
  (op-set-lt-ext 34701)
  (op-clamp-ext 34702)
  (op-floor-ext 34703)
  (op-round-ext 34704)
  (op-exp-base-2-ext 34705)
  (op-log-base-2-ext 34706)
  (op-power-ext 34707)
  (op-recip-ext 34708)
  (op-recip-sqrt-ext 34709)
  (op-sub-ext 34710)
  (op-cross-product-ext 34711)
  (op-multiply-matrix-ext 34712)
  (op-mov-ext 34713)
  (output-vertex-ext 34714)
  (output-color0-ext 34715)
  (output-color1-ext 34716)
  (output-texture-coord0-ext 34717)
  (output-texture-coord1-ext 34718)
  (output-texture-coord2-ext 34719)
  (output-texture-coord3-ext 34720)
  (output-texture-coord4-ext 34721)
  (output-texture-coord5-ext 34722)
  (output-texture-coord6-ext 34723)
  (output-texture-coord7-ext 34724)
  (output-texture-coord8-ext 34725)
  (output-texture-coord9-ext 34726)
  (output-texture-coord10-ext 34727)
  (output-texture-coord11-ext 34728)
  (output-texture-coord12-ext 34729)
  (output-texture-coord13-ext 34730)
  (output-texture-coord14-ext 34731)
  (output-texture-coord15-ext 34732)
  (output-texture-coord16-ext 34733)
  (output-texture-coord17-ext 34734)
  (output-texture-coord18-ext 34735)
  (output-texture-coord19-ext 34736)
  (output-texture-coord20-ext 34737)
  (output-texture-coord21-ext 34738)
  (output-texture-coord22-ext 34739)
  (output-texture-coord23-ext 34740)
  (output-texture-coord24-ext 34741)
  (output-texture-coord25-ext 34742)
  (output-texture-coord26-ext 34743)
  (output-texture-coord27-ext 34744)
  (output-texture-coord28-ext 34745)
  (output-texture-coord29-ext 34746)
  (output-texture-coord30-ext 34747)
  (output-texture-coord31-ext 34748)
  (output-fog-ext 34749)
  (scalar-ext 34750)
  (vector-ext 34751)
  (matrix-ext 34752)
  (variant-ext 34753)
  (invariant-ext 34754)
  (local-constant-ext 34755)
  (local-ext 34756)
  (max-vertex-shader-instructions-ext 34757)
  (max-vertex-shader-variants-ext 34758)
  (max-vertex-shader-invariants-ext 34759)
  (max-vertex-shader-local-constants-ext 34760)
  (max-vertex-shader-locals-ext 34761)
  (max-optimized-vertex-shader-instructions-ext
    34762)
  (max-optimized-vertex-shader-variants-ext 34763)
  (max-optimized-vertex-shader-local-constants-ext
    34764)
  (max-optimized-vertex-shader-invariants-ext
    34765)
  (max-optimized-vertex-shader-locals-ext 34766)
  (vertex-shader-instructions-ext 34767)
  (vertex-shader-variants-ext 34768)
  (vertex-shader-invariants-ext 34769)
  (vertex-shader-local-constants-ext 34770)
  (vertex-shader-locals-ext 34771)
  (vertex-shader-optimized-ext 34772)
  (x-ext 34773)
  (y-ext 34774)
  (z-ext 34775)
  (w-ext 34776)
  (negative-x-ext 34777)
  (negative-y-ext 34778)
  (negative-z-ext 34779)
  (negative-w-ext 34780)
  (zero-ext 34781)
  (one-ext 34782)
  (negative-one-ext 34783)
  (normalized-range-ext 34784)
  (full-range-ext 34785)
  (current-vertex-ext 34786)
  (mvp-matrix-ext 34787)
  (variant-value-ext 34788)
  (variant-datatype-ext 34789)
  (variant-array-stride-ext 34790)
  (variant-array-type-ext 34791)
  (variant-array-ext 34792)
  (variant-array-pointer-ext 34793)
  (invariant-value-ext 34794)
  (invariant-datatype-ext 34795)
  (local-constant-value-ext 34796)
  (local-constant-datatype-ext 34797))

(define-enumeration
  amd-compressed-atc-texture
  (atc-rgba-interpolated-alpha-amd 34798)
  (atc-rgb-amd 35986)
  (atc-rgba-explicit-alpha-amd 35987))

(define-enumeration
  ati-pn-triangles
  (pn-triangles-ati 34800)
  (max-pn-triangles-tesselation-level-ati 34801)
  (pn-triangles-point-mode-ati 34802)
  (pn-triangles-normal-mode-ati 34803)
  (pn-triangles-tesselation-level-ati 34804)
  (pn-triangles-point-mode-linear-ati 34805)
  (pn-triangles-point-mode-cubic-ati 34806)
  (pn-triangles-normal-mode-linear-ati 34807)
  (pn-triangles-normal-mode-quadratic-ati 34808))

(define-enumeration
  amd-compressed-3dc-texture
  (#{3dc-x-amd}# 34809)
  (#{3dc-xy-amd}# 34810))

(define-enumeration
  ati-meminfo
  (vbo-free-memory-ati 34811)
  (texture-free-memory-ati 34812)
  (renderbuffer-free-memory-ati 34813))

(define-enumeration
  ati-separate-stencil
  (stencil-back-func-ati 34816)
  (stencil-back-pass-depth-fail-ati 34818)
  (stencil-back-pass-depth-pass-ati 34819))

(define-enumeration
  arb-texture-float
  (rgba32f-arb 34836)
  (rgb32f-arb 34837)
  (alpha32f-arb 34838)
  (intensity32f-arb 34839)
  (luminance32f-arb 34840)
  (luminance-alpha32f-arb 34841)
  (rgba16f-arb 34842)
  (rgb16f-arb 34843)
  (alpha16f-arb 34844)
  (intensity16f-arb 34845)
  (luminance16f-arb 34846)
  (luminance-alpha16f-arb 34847)
  (texture-red-type-arb 35856)
  (texture-green-type-arb 35857)
  (texture-blue-type-arb 35858)
  (texture-alpha-type-arb 35859)
  (texture-luminance-type-arb 35860)
  (texture-intensity-type-arb 35861)
  (texture-depth-type-arb 35862)
  (unsigned-normalized-arb 35863))

(define-enumeration
  ati-texture-float
  (rgba-float32-ati 34836)
  (rgb-float32-ati 34837)
  (alpha-float32-ati 34838)
  (intensity-float32-ati 34839)
  (luminance-float32-ati 34840)
  (luminance-alpha-float32-ati 34841)
  (rgba-float16-ati 34842)
  (rgb-float16-ati 34843)
  (alpha-float16-ati 34844)
  (intensity-float16-ati 34845)
  (luminance-float16-ati 34846)
  (luminance-alpha-float16-ati 34847))

(define-enumeration
  arb-color-buffer-float
  (rgba-float-mode-arb 34848)
  (clamp-vertex-color-arb 35098)
  (clamp-fragment-color-arb 35099)
  (clamp-read-color-arb 35100)
  (fixed-only-arb 35101))

(define-enumeration
  ati-pixel-format-float
  (type-rgba-float-ati 34848)
  (color-clear-unclamped-value-ati 34869))

(define-enumeration
  qcom-writeonly-rendering
  (writeonly-rendering-qcom 34851))

(define-enumeration
  arb-draw-buffers
  (max-draw-buffers-arb 34852)
  (draw-buffer0-arb 34853)
  (draw-buffer1-arb 34854)
  (draw-buffer2-arb 34855)
  (draw-buffer3-arb 34856)
  (draw-buffer4-arb 34857)
  (draw-buffer5-arb 34858)
  (draw-buffer6-arb 34859)
  (draw-buffer7-arb 34860)
  (draw-buffer8-arb 34861)
  (draw-buffer9-arb 34862)
  (draw-buffer10-arb 34863)
  (draw-buffer11-arb 34864)
  (draw-buffer12-arb 34865)
  (draw-buffer13-arb 34866)
  (draw-buffer14-arb 34867)
  (draw-buffer15-arb 34868))

(define-enumeration
  ati-draw-buffers
  (max-draw-buffers-ati 34852)
  (draw-buffer0-ati 34853)
  (draw-buffer1-ati 34854)
  (draw-buffer2-ati 34855)
  (draw-buffer3-ati 34856)
  (draw-buffer4-ati 34857)
  (draw-buffer5-ati 34858)
  (draw-buffer6-ati 34859)
  (draw-buffer7-ati 34860)
  (draw-buffer8-ati 34861)
  (draw-buffer9-ati 34862)
  (draw-buffer10-ati 34863)
  (draw-buffer11-ati 34864)
  (draw-buffer12-ati 34865)
  (draw-buffer13-ati 34866)
  (draw-buffer14-ati 34867)
  (draw-buffer15-ati 34868))

(define-enumeration
  nv-draw-buffers
  (max-draw-buffers-nv 34852)
  (draw-buffer0-nv 34853)
  (draw-buffer1-nv 34854)
  (draw-buffer2-nv 34855)
  (draw-buffer3-nv 34856)
  (draw-buffer4-nv 34857)
  (draw-buffer5-nv 34858)
  (draw-buffer6-nv 34859)
  (draw-buffer7-nv 34860)
  (draw-buffer8-nv 34861)
  (draw-buffer9-nv 34862)
  (draw-buffer10-nv 34863)
  (draw-buffer11-nv 34864)
  (draw-buffer12-nv 34865)
  (draw-buffer13-nv 34866)
  (draw-buffer14-nv 34867)
  (draw-buffer15-nv 34868)
  (color-attachment0-nv 36064)
  (color-attachment1-nv 36065)
  (color-attachment2-nv 36066)
  (color-attachment3-nv 36067)
  (color-attachment4-nv 36068)
  (color-attachment5-nv 36069)
  (color-attachment6-nv 36070)
  (color-attachment7-nv 36071)
  (color-attachment8-nv 36072)
  (color-attachment9-nv 36073)
  (color-attachment10-nv 36074)
  (color-attachment11-nv 36075)
  (color-attachment12-nv 36076)
  (color-attachment13-nv 36077)
  (color-attachment14-nv 36078)
  (color-attachment15-nv 36079))

(define-enumeration
  amd-sample-positions
  (subsample-distance-amd 34879))

(define-enumeration
  arb-matrix-palette
  (matrix-palette-arb 34880)
  (max-matrix-palette-stack-depth-arb 34881)
  (max-palette-matrices-arb 34882)
  (current-palette-matrix-arb 34883)
  (matrix-index-array-arb 34884)
  (current-matrix-index-arb 34885)
  (matrix-index-array-size-arb 34886)
  (matrix-index-array-type-arb 34887)
  (matrix-index-array-stride-arb 34888)
  (matrix-index-array-pointer-arb 34889))

(define-enumeration
  arb-shadow
  (texture-compare-mode-arb 34892)
  (texture-compare-func-arb 34893)
  (compare-r-to-texture-arb 34894))

(define-enumeration
  ext-shadow-samplers
  (texture-compare-mode-ext 34892)
  (texture-compare-func-ext 34893)
  (compare-ref-to-texture-ext 34894)
  (sampler-2d-shadow-ext 35682))

(define-enumeration
  ext-texture-array
  (compare-ref-depth-to-texture-ext 34894)
  (max-array-texture-layers-ext 35071)
  (texture-1d-array-ext 35864)
  (proxy-texture-1d-array-ext 35865)
  (texture-2d-array-ext 35866)
  (proxy-texture-2d-array-ext 35867)
  (texture-binding-1d-array-ext 35868)
  (texture-binding-2d-array-ext 35869))

(define-enumeration
  arb-seamless-cube-map
  (texture-cube-map-seamless 34895))

(define-enumeration
  nv-texture-shader-3
  (offset-projective-texture-2d-nv 34896)
  (offset-projective-texture-2d-scale-nv 34897)
  (offset-projective-texture-rectangle-nv 34898)
  (offset-projective-texture-rectangle-scale-nv
    34899)
  (offset-hilo-texture-2d-nv 34900)
  (offset-hilo-texture-rectangle-nv 34901)
  (offset-hilo-projective-texture-2d-nv 34902)
  (offset-hilo-projective-texture-rectangle-nv
    34903)
  (dependent-hilo-texture-2d-nv 34904)
  (dependent-rgb-texture-3d-nv 34905)
  (dependent-rgb-texture-cube-map-nv 34906)
  (dot-product-pass-through-nv 34907)
  (dot-product-texture-1d-nv 34908)
  (dot-product-affine-depth-replace-nv 34909)
  (hilo8-nv 34910)
  (signed-hilo8-nv 34911)
  (force-blue-to-one-nv 34912))

(define-enumeration
  arb-point-sprite
  (point-sprite-arb 34913)
  (coord-replace-arb 34914))

(define-enumeration
  nv-point-sprite
  (point-sprite-nv 34913)
  (coord-replace-nv 34914)
  (point-sprite-r-mode-nv 34915))

(define-enumeration
  oes-point-sprite
  (point-sprite-arb 34913)
  (coord-replace-arb 34914))

(define-enumeration
  arb-occlusion-query
  (query-counter-bits-arb 34916)
  (current-query-arb 34917)
  (query-result-arb 34918)
  (query-result-available-arb 34919)
  (samples-passed-arb 35092))

(define-enumeration
  nv-occlusion-query
  (pixel-counter-bits-nv 34916)
  (current-occlusion-query-id-nv 34917)
  (pixel-count-nv 34918)
  (pixel-count-available-nv 34919))

(define-enumeration
  ext-occlusion-query-boolean
  (current-query-ext 34917)
  (query-result-ext 34918)
  (query-result-available-ext 34919)
  (any-samples-passed-ext 35887)
  (any-samples-passed-conservative-ext 36202))

(define-enumeration
  nv-fragment-program
  (max-fragment-program-local-parameters-nv 34920)
  (fragment-program-nv 34928)
  (max-texture-coords-nv 34929)
  (max-texture-image-units-nv 34930)
  (fragment-program-binding-nv 34931)
  (program-error-string-nv 34932))

(define-enumeration
  nv-copy-depth-to-color
  (depth-stencil-to-rgba-nv 34926)
  (depth-stencil-to-bgra-nv 34927))

(define-enumeration
  nv-pixel-data-range
  (write-pixel-data-range-nv 34936)
  (read-pixel-data-range-nv 34937)
  (write-pixel-data-range-length-nv 34938)
  (read-pixel-data-range-length-nv 34939)
  (write-pixel-data-range-pointer-nv 34940)
  (read-pixel-data-range-pointer-nv 34941))

(define-enumeration
  arb-gpu-shader-5
  (geometry-shader-invocations 34943)
  (max-geometry-shader-invocations 36442)
  (min-fragment-interpolation-offset 36443)
  (max-fragment-interpolation-offset 36444)
  (fragment-interpolation-offset-bits 36445))

(define-enumeration
  nv-float-buffer
  (float-r-nv 34944)
  (float-rg-nv 34945)
  (float-rgb-nv 34946)
  (float-rgba-nv 34947)
  (float-r16-nv 34948)
  (float-r32-nv 34949)
  (float-rg16-nv 34950)
  (float-rg32-nv 34951)
  (float-rgb16-nv 34952)
  (float-rgb32-nv 34953)
  (float-rgba16-nv 34954)
  (float-rgba32-nv 34955)
  (texture-float-components-nv 34956)
  (float-clear-color-value-nv 34957)
  (float-rgba-mode-nv 34958))

(define-enumeration
  nv-texture-expand-normal
  (texture-unsigned-remap-mode-nv 34959))

(define-enumeration
  ext-depth-bounds-test
  (depth-bounds-test-ext 34960)
  (depth-bounds-ext 34961))

(define-enumeration
  oes-mapbuffer
  (write-only-oes 35001)
  (buffer-access-oes 35003)
  (buffer-mapped-oes 35004)
  (buffer-map-pointer-oes 35005))

(define-enumeration
  nv-shader-buffer-store
  (read-write 35002)
  (write-only 35001)
  (shader-global-access-barrier-bit-nv 16))

(define-enumeration
  arb-timer-query
  (time-elapsed 35007)
  (timestamp 36392))

(define-enumeration
  ext-timer-query
  (time-elapsed-ext 35007))

(define-enumeration
  arb-pixel-buffer-object
  (pixel-pack-buffer-arb 35051)
  (pixel-unpack-buffer-arb 35052)
  (pixel-pack-buffer-binding-arb 35053)
  (pixel-unpack-buffer-binding-arb 35055))

(define-enumeration
  ext-pixel-buffer-object
  (pixel-pack-buffer-ext 35051)
  (pixel-unpack-buffer-ext 35052)
  (pixel-pack-buffer-binding-ext 35053)
  (pixel-unpack-buffer-binding-ext 35055))

(define-enumeration
  nv-s-rgb-formats
  (etc1-srgb8-nv 35054)
  (srgb8-nv 35905)
  (sluminance-alpha-nv 35908)
  (sluminance8-alpha8-nv 35909)
  (sluminance-nv 35910)
  (sluminance8-nv 35911)
  (compressed-srgb-s3tc-dxt1-nv 35916)
  (compressed-srgb-alpha-s3tc-dxt1-nv 35917)
  (compressed-srgb-alpha-s3tc-dxt3-nv 35918)
  (compressed-srgb-alpha-s3tc-dxt5-nv 35919))

(define-enumeration
  ext-stencil-clear-tag
  (stencil-tag-bits-ext 35058)
  (stencil-clear-tag-value-ext 35059))

(define-enumeration
  nv-vertex-program-2-option
  (max-program-exec-instructions-nv 35060)
  (max-program-call-depth-nv 35061))

(define-enumeration
  nv-fragment-program-2
  (max-program-exec-instructions-nv 35060)
  (max-program-call-depth-nv 35061)
  (max-program-if-depth-nv 35062)
  (max-program-loop-depth-nv 35063)
  (max-program-loop-count-nv 35064))

(define-enumeration
  arb-blend-func-extended
  (src1-color 35065)
  (one-minus-src1-color 35066)
  (one-minus-src1-alpha 35067)
  (max-dual-source-draw-buffers 35068))

(define-enumeration
  nv-vertex-program-4
  (vertex-attrib-array-integer-nv 35069))

(define-enumeration
  version-3-3
  (vertex-attrib-array-divisor 35070))

(define-enumeration
  arb-instanced-arrays
  (vertex-attrib-array-divisor-arb 35070))

(define-enumeration
  angle-instanced-arrays
  (vertex-attrib-array-divisor-angle 35070))

(define-enumeration
  nv-instanced-arrays
  (vertex-attrib-array-divisor-nv 35070))

(define-enumeration
  nv-gpu-program-4
  (min-program-texel-offset-nv 35076)
  (max-program-texel-offset-nv 35077)
  (program-attrib-components-nv 35078)
  (program-result-components-nv 35079)
  (max-program-attrib-components-nv 35080)
  (max-program-result-components-nv 35081)
  (max-program-generic-attribs-nv 36261)
  (max-program-generic-results-nv 36262))

(define-enumeration
  ext-stencil-two-side
  (stencil-test-two-side-ext 35088)
  (active-stencil-face-ext 35089))

(define-enumeration
  arb-sampler-objects
  (sampler-binding 35097))

(define-enumeration
  ati-fragment-shader
  (fragment-shader-ati 35104)
  (reg-0-ati 35105)
  (reg-1-ati 35106)
  (reg-2-ati 35107)
  (reg-3-ati 35108)
  (reg-4-ati 35109)
  (reg-5-ati 35110)
  (reg-6-ati 35111)
  (reg-7-ati 35112)
  (reg-8-ati 35113)
  (reg-9-ati 35114)
  (reg-10-ati 35115)
  (reg-11-ati 35116)
  (reg-12-ati 35117)
  (reg-13-ati 35118)
  (reg-14-ati 35119)
  (reg-15-ati 35120)
  (reg-16-ati 35121)
  (reg-17-ati 35122)
  (reg-18-ati 35123)
  (reg-19-ati 35124)
  (reg-20-ati 35125)
  (reg-21-ati 35126)
  (reg-22-ati 35127)
  (reg-23-ati 35128)
  (reg-24-ati 35129)
  (reg-25-ati 35130)
  (reg-26-ati 35131)
  (reg-27-ati 35132)
  (reg-28-ati 35133)
  (reg-29-ati 35134)
  (reg-30-ati 35135)
  (reg-31-ati 35136)
  (con-0-ati 35137)
  (con-1-ati 35138)
  (con-2-ati 35139)
  (con-3-ati 35140)
  (con-4-ati 35141)
  (con-5-ati 35142)
  (con-6-ati 35143)
  (con-7-ati 35144)
  (con-8-ati 35145)
  (con-9-ati 35146)
  (con-10-ati 35147)
  (con-11-ati 35148)
  (con-12-ati 35149)
  (con-13-ati 35150)
  (con-14-ati 35151)
  (con-15-ati 35152)
  (con-16-ati 35153)
  (con-17-ati 35154)
  (con-18-ati 35155)
  (con-19-ati 35156)
  (con-20-ati 35157)
  (con-21-ati 35158)
  (con-22-ati 35159)
  (con-23-ati 35160)
  (con-24-ati 35161)
  (con-25-ati 35162)
  (con-26-ati 35163)
  (con-27-ati 35164)
  (con-28-ati 35165)
  (con-29-ati 35166)
  (con-30-ati 35167)
  (con-31-ati 35168)
  (mov-ati 35169)
  (add-ati 35171)
  (mul-ati 35172)
  (sub-ati 35173)
  (dot3-ati 35174)
  (dot4-ati 35175)
  (mad-ati 35176)
  (lerp-ati 35177)
  (cnd-ati 35178)
  (cnd0-ati 35179)
  (dot2-add-ati 35180)
  (secondary-interpolator-ati 35181)
  (num-fragment-registers-ati 35182)
  (num-fragment-constants-ati 35183)
  (num-passes-ati 35184)
  (num-instructions-per-pass-ati 35185)
  (num-instructions-total-ati 35186)
  (num-input-interpolator-components-ati 35187)
  (num-loopback-components-ati 35188)
  (color-alpha-pairing-ati 35189)
  (swizzle-str-ati 35190)
  (swizzle-stq-ati 35191)
  (swizzle-str-dr-ati 35192)
  (swizzle-stq-dq-ati 35193)
  (swizzle-strq-ati 35194)
  (swizzle-strq-dq-ati 35195)
  (red-bit-ati 1)
  (green-bit-ati 2)
  (blue-bit-ati 4)
  (#{2x-bit-ati}# 1)
  (#{4x-bit-ati}# 2)
  (#{8x-bit-ati}# 4)
  (half-bit-ati 8)
  (quarter-bit-ati 16)
  (eighth-bit-ati 32)
  (saturate-bit-ati 64)
  (#{2x-bit-ati}# 1)
  (comp-bit-ati 2)
  (negate-bit-ati 4)
  (bias-bit-ati 8))

(define-enumeration
  oml-interlace
  (interlace-oml 35200)
  (interlace-read-oml 35201))

(define-enumeration
  oml-subsample
  (format-subsample-24-24-oml 35202)
  (format-subsample-244-244-oml 35203))

(define-enumeration
  oml-resample
  (pack-resample-oml 35204)
  (unpack-resample-oml 35205)
  (resample-replicate-oml 35206)
  (resample-zero-fill-oml 35207)
  (resample-average-oml 35208)
  (resample-decimate-oml 35209))

(define-enumeration
  oes-point-size-array
  (point-size-array-type-oes 35210)
  (point-size-array-stride-oes 35211)
  (point-size-array-pointer-oes 35212)
  (point-size-array-oes 35740)
  (point-size-array-buffer-binding-oes 35743))

(define-enumeration
  oes-matrix-get
  (modelview-matrix-float-as-int-bits-oes 35213)
  (projection-matrix-float-as-int-bits-oes 35214)
  (texture-matrix-float-as-int-bits-oes 35215))

(define-enumeration
  apple-vertex-program-evaluators
  (vertex-attrib-map1-apple 35328)
  (vertex-attrib-map2-apple 35329)
  (vertex-attrib-map1-size-apple 35330)
  (vertex-attrib-map1-coeff-apple 35331)
  (vertex-attrib-map1-order-apple 35332)
  (vertex-attrib-map1-domain-apple 35333)
  (vertex-attrib-map2-size-apple 35334)
  (vertex-attrib-map2-coeff-apple 35335)
  (vertex-attrib-map2-order-apple 35336)
  (vertex-attrib-map2-domain-apple 35337))

(define-enumeration
  apple-fence
  (draw-pixels-apple 35338)
  (fence-apple 35339))

(define-enumeration
  apple-element-array
  (element-array-apple 35340)
  (element-array-type-apple 35341)
  (element-array-pointer-apple 35342))

(define-enumeration
  arb-uniform-buffer-object
  (uniform-buffer 35345)
  (uniform-buffer-binding 35368)
  (uniform-buffer-start 35369)
  (uniform-buffer-size 35370)
  (max-vertex-uniform-blocks 35371)
  (max-geometry-uniform-blocks 35372)
  (max-fragment-uniform-blocks 35373)
  (max-combined-uniform-blocks 35374)
  (max-uniform-buffer-bindings 35375)
  (max-uniform-block-size 35376)
  (max-combined-vertex-uniform-components 35377)
  (max-combined-geometry-uniform-components 35378)
  (max-combined-fragment-uniform-components 35379)
  (uniform-buffer-offset-alignment 35380)
  (active-uniform-block-max-name-length 35381)
  (active-uniform-blocks 35382)
  (uniform-type 35383)
  (uniform-size 35384)
  (uniform-name-length 35385)
  (uniform-block-index 35386)
  (uniform-offset 35387)
  (uniform-array-stride 35388)
  (uniform-matrix-stride 35389)
  (uniform-is-row-major 35390)
  (uniform-block-binding 35391)
  (uniform-block-data-size 35392)
  (uniform-block-name-length 35393)
  (uniform-block-active-uniforms 35394)
  (uniform-block-active-uniform-indices 35395)
  (uniform-block-referenced-by-vertex-shader 35396)
  (uniform-block-referenced-by-geometry-shader
    35397)
  (uniform-block-referenced-by-fragment-shader
    35398)
  (invalid-index 4294967295))

(define-enumeration
  apple-flush-buffer-range
  (buffer-serialized-modify-apple 35346)
  (buffer-flushing-unmap-apple 35347))

(define-enumeration
  apple-aux-depth-stencil
  (aux-depth-stencil-apple 35348))

(define-enumeration
  apple-row-bytes
  (pack-row-bytes-apple 35349)
  (unpack-row-bytes-apple 35350))

(define-enumeration
  apple-rgb-422
  (rgb-422-apple 35359)
  (unsigned-short-8-8-apple 34234)
  (unsigned-short-8-8-rev-apple 34235))

(define-enumeration
  ext-texture-s-rgb-decode
  (texture-srgb-decode-ext 35400)
  (decode-ext 35401)
  (skip-decode-ext 35402))

(define-enumeration
  ext-debug-label
  (program-pipeline-object-ext 35407)
  (program-object-ext 35648)
  (shader-object-ext 35656)
  (buffer-object-ext 37201)
  (query-object-ext 37203)
  (vertex-array-object-ext 37204))

(define-enumeration
  ext-shader-framebuffer-fetch
  (fragment-shader-discards-samples-ext 35410))

(define-enumeration
  apple-sync
  (sync-object-apple 35411)
  (max-server-wait-timeout-apple 37137)
  (object-type-apple 37138)
  (sync-condition-apple 37139)
  (sync-status-apple 37140)
  (sync-flags-apple 37141)
  (sync-fence-apple 37142)
  (sync-gpu-commands-complete-apple 37143)
  (unsignaled-apple 37144)
  (signaled-apple 37145)
  (already-signaled-apple 37146)
  (timeout-expired-apple 37147)
  (condition-satisfied-apple 37148)
  (wait-failed-apple 37149)
  (sync-flush-commands-bit-apple 1)
  (timeout-ignored-apple 18446744073709551615))

(define-enumeration
  arb-shader-objects
  (fragment-shader 35632)
  (fragment-shader-arb 35632)
  (vertex-shader 35633)
  (vertex-shader-arb 35633)
  (program-object-arb 35648)
  (shader-object-arb 35656)
  (max-fragment-uniform-components 35657)
  (max-fragment-uniform-components-arb 35657)
  (max-vertex-uniform-components 35658)
  (max-vertex-uniform-components-arb 35658)
  (max-varying-floats 35659)
  (max-varying-floats-arb 35659)
  (max-vertex-texture-image-units 35660)
  (max-vertex-texture-image-units-arb 35660)
  (max-combined-texture-image-units 35661)
  (max-combined-texture-image-units-arb 35661)
  (object-type-arb 35662)
  (shader-type 35663)
  (object-subtype-arb 35663)
  (float-vec2 35664)
  (float-vec2-arb 35664)
  (float-vec3 35665)
  (float-vec3-arb 35665)
  (float-vec4 35666)
  (float-vec4-arb 35666)
  (int-vec2 35667)
  (int-vec2-arb 35667)
  (int-vec3 35668)
  (int-vec3-arb 35668)
  (int-vec4 35669)
  (int-vec4-arb 35669)
  (bool 35670)
  (bool-arb 35670)
  (bool-vec2 35671)
  (bool-vec2-arb 35671)
  (bool-vec3 35672)
  (bool-vec3-arb 35672)
  (bool-vec4 35673)
  (bool-vec4-arb 35673)
  (float-mat2 35674)
  (float-mat2-arb 35674)
  (float-mat3 35675)
  (float-mat3-arb 35675)
  (float-mat4 35676)
  (float-mat4-arb 35676)
  (sampler-1d 35677)
  (sampler-1d-arb 35677)
  (sampler-2d 35678)
  (sampler-2d-arb 35678)
  (sampler-3d 35679)
  (sampler-3d-arb 35679)
  (sampler-cube 35680)
  (sampler-cube-arb 35680)
  (sampler-1d-shadow 35681)
  (sampler-1d-shadow-arb 35681)
  (sampler-2d-shadow 35682)
  (sampler-2d-shadow-arb 35682)
  (sampler-2d-rect-arb 35683)
  (sampler-2d-rect-shadow-arb 35684)
  (float-mat-2x-3 35685)
  (float-mat-2x-4 35686)
  (float-mat-3x-2 35687)
  (float-mat-3x-4 35688)
  (float-mat-4x-2 35689)
  (float-mat-4x-3 35690)
  (delete-status 35712)
  (object-delete-status-arb 35712)
  (compile-status 35713)
  (object-compile-status-arb 35713)
  (link-status 35714)
  (object-link-status-arb 35714)
  (validate-status 35715)
  (object-validate-status-arb 35715)
  (info-log-length 35716)
  (object-info-log-length-arb 35716)
  (attached-shaders 35717)
  (object-attached-objects-arb 35717)
  (active-uniforms 35718)
  (object-active-uniforms-arb 35718)
  (active-uniform-max-length 35719)
  (object-active-uniform-max-length-arb 35719)
  (shader-source-length 35720)
  (object-shader-source-length-arb 35720)
  (active-attributes 35721)
  (object-active-attributes-arb 35721)
  (active-attribute-max-length 35722)
  (object-active-attribute-max-length-arb 35722)
  (fragment-shader-derivative-hint 35723)
  (fragment-shader-derivative-hint-arb 35723)
  (shading-language-version 35724)
  (shading-language-version-arb 35724))

(define-enumeration
  arb-vertex-shader
  (fragment-shader 35632)
  (fragment-shader-arb 35632)
  (vertex-shader 35633)
  (vertex-shader-arb 35633)
  (program-object-arb 35648)
  (shader-object-arb 35656)
  (max-fragment-uniform-components 35657)
  (max-fragment-uniform-components-arb 35657)
  (max-vertex-uniform-components 35658)
  (max-vertex-uniform-components-arb 35658)
  (max-varying-floats 35659)
  (max-varying-floats-arb 35659)
  (max-vertex-texture-image-units 35660)
  (max-vertex-texture-image-units-arb 35660)
  (max-combined-texture-image-units 35661)
  (max-combined-texture-image-units-arb 35661)
  (object-type-arb 35662)
  (shader-type 35663)
  (object-subtype-arb 35663)
  (float-vec2 35664)
  (float-vec2-arb 35664)
  (float-vec3 35665)
  (float-vec3-arb 35665)
  (float-vec4 35666)
  (float-vec4-arb 35666)
  (int-vec2 35667)
  (int-vec2-arb 35667)
  (int-vec3 35668)
  (int-vec3-arb 35668)
  (int-vec4 35669)
  (int-vec4-arb 35669)
  (bool 35670)
  (bool-arb 35670)
  (bool-vec2 35671)
  (bool-vec2-arb 35671)
  (bool-vec3 35672)
  (bool-vec3-arb 35672)
  (bool-vec4 35673)
  (bool-vec4-arb 35673)
  (float-mat2 35674)
  (float-mat2-arb 35674)
  (float-mat3 35675)
  (float-mat3-arb 35675)
  (float-mat4 35676)
  (float-mat4-arb 35676)
  (sampler-1d 35677)
  (sampler-1d-arb 35677)
  (sampler-2d 35678)
  (sampler-2d-arb 35678)
  (sampler-3d 35679)
  (sampler-3d-arb 35679)
  (sampler-cube 35680)
  (sampler-cube-arb 35680)
  (sampler-1d-shadow 35681)
  (sampler-1d-shadow-arb 35681)
  (sampler-2d-shadow 35682)
  (sampler-2d-shadow-arb 35682)
  (sampler-2d-rect-arb 35683)
  (sampler-2d-rect-shadow-arb 35684)
  (float-mat-2x-3 35685)
  (float-mat-2x-4 35686)
  (float-mat-3x-2 35687)
  (float-mat-3x-4 35688)
  (float-mat-4x-2 35689)
  (float-mat-4x-3 35690)
  (delete-status 35712)
  (object-delete-status-arb 35712)
  (compile-status 35713)
  (object-compile-status-arb 35713)
  (link-status 35714)
  (object-link-status-arb 35714)
  (validate-status 35715)
  (object-validate-status-arb 35715)
  (info-log-length 35716)
  (object-info-log-length-arb 35716)
  (attached-shaders 35717)
  (object-attached-objects-arb 35717)
  (active-uniforms 35718)
  (object-active-uniforms-arb 35718)
  (active-uniform-max-length 35719)
  (object-active-uniform-max-length-arb 35719)
  (shader-source-length 35720)
  (object-shader-source-length-arb 35720)
  (active-attributes 35721)
  (object-active-attributes-arb 35721)
  (active-attribute-max-length 35722)
  (object-active-attribute-max-length-arb 35722)
  (fragment-shader-derivative-hint 35723)
  (fragment-shader-derivative-hint-arb 35723)
  (shading-language-version 35724)
  (shading-language-version-arb 35724))

(define-enumeration
  arb-fragment-shader
  (fragment-shader 35632)
  (fragment-shader-arb 35632)
  (vertex-shader 35633)
  (vertex-shader-arb 35633)
  (program-object-arb 35648)
  (shader-object-arb 35656)
  (max-fragment-uniform-components 35657)
  (max-fragment-uniform-components-arb 35657)
  (max-vertex-uniform-components 35658)
  (max-vertex-uniform-components-arb 35658)
  (max-varying-floats 35659)
  (max-varying-floats-arb 35659)
  (max-vertex-texture-image-units 35660)
  (max-vertex-texture-image-units-arb 35660)
  (max-combined-texture-image-units 35661)
  (max-combined-texture-image-units-arb 35661)
  (object-type-arb 35662)
  (shader-type 35663)
  (object-subtype-arb 35663)
  (float-vec2 35664)
  (float-vec2-arb 35664)
  (float-vec3 35665)
  (float-vec3-arb 35665)
  (float-vec4 35666)
  (float-vec4-arb 35666)
  (int-vec2 35667)
  (int-vec2-arb 35667)
  (int-vec3 35668)
  (int-vec3-arb 35668)
  (int-vec4 35669)
  (int-vec4-arb 35669)
  (bool 35670)
  (bool-arb 35670)
  (bool-vec2 35671)
  (bool-vec2-arb 35671)
  (bool-vec3 35672)
  (bool-vec3-arb 35672)
  (bool-vec4 35673)
  (bool-vec4-arb 35673)
  (float-mat2 35674)
  (float-mat2-arb 35674)
  (float-mat3 35675)
  (float-mat3-arb 35675)
  (float-mat4 35676)
  (float-mat4-arb 35676)
  (sampler-1d 35677)
  (sampler-1d-arb 35677)
  (sampler-2d 35678)
  (sampler-2d-arb 35678)
  (sampler-3d 35679)
  (sampler-3d-arb 35679)
  (sampler-cube 35680)
  (sampler-cube-arb 35680)
  (sampler-1d-shadow 35681)
  (sampler-1d-shadow-arb 35681)
  (sampler-2d-shadow 35682)
  (sampler-2d-shadow-arb 35682)
  (sampler-2d-rect-arb 35683)
  (sampler-2d-rect-shadow-arb 35684)
  (float-mat-2x-3 35685)
  (float-mat-2x-4 35686)
  (float-mat-3x-2 35687)
  (float-mat-3x-4 35688)
  (float-mat-4x-2 35689)
  (float-mat-4x-3 35690)
  (delete-status 35712)
  (object-delete-status-arb 35712)
  (compile-status 35713)
  (object-compile-status-arb 35713)
  (link-status 35714)
  (object-link-status-arb 35714)
  (validate-status 35715)
  (object-validate-status-arb 35715)
  (info-log-length 35716)
  (object-info-log-length-arb 35716)
  (attached-shaders 35717)
  (object-attached-objects-arb 35717)
  (active-uniforms 35718)
  (object-active-uniforms-arb 35718)
  (active-uniform-max-length 35719)
  (object-active-uniform-max-length-arb 35719)
  (shader-source-length 35720)
  (object-shader-source-length-arb 35720)
  (active-attributes 35721)
  (object-active-attributes-arb 35721)
  (active-attribute-max-length 35722)
  (object-active-attribute-max-length-arb 35722)
  (fragment-shader-derivative-hint 35723)
  (fragment-shader-derivative-hint-arb 35723)
  (shading-language-version 35724)
  (shading-language-version-arb 35724))

(define-enumeration
  nv-vertex-program-3
  (fragment-shader 35632)
  (fragment-shader-arb 35632)
  (vertex-shader 35633)
  (vertex-shader-arb 35633)
  (program-object-arb 35648)
  (shader-object-arb 35656)
  (max-fragment-uniform-components 35657)
  (max-fragment-uniform-components-arb 35657)
  (max-vertex-uniform-components 35658)
  (max-vertex-uniform-components-arb 35658)
  (max-varying-floats 35659)
  (max-varying-floats-arb 35659)
  (max-vertex-texture-image-units 35660)
  (max-vertex-texture-image-units-arb 35660)
  (max-combined-texture-image-units 35661)
  (max-combined-texture-image-units-arb 35661)
  (object-type-arb 35662)
  (shader-type 35663)
  (object-subtype-arb 35663)
  (float-vec2 35664)
  (float-vec2-arb 35664)
  (float-vec3 35665)
  (float-vec3-arb 35665)
  (float-vec4 35666)
  (float-vec4-arb 35666)
  (int-vec2 35667)
  (int-vec2-arb 35667)
  (int-vec3 35668)
  (int-vec3-arb 35668)
  (int-vec4 35669)
  (int-vec4-arb 35669)
  (bool 35670)
  (bool-arb 35670)
  (bool-vec2 35671)
  (bool-vec2-arb 35671)
  (bool-vec3 35672)
  (bool-vec3-arb 35672)
  (bool-vec4 35673)
  (bool-vec4-arb 35673)
  (float-mat2 35674)
  (float-mat2-arb 35674)
  (float-mat3 35675)
  (float-mat3-arb 35675)
  (float-mat4 35676)
  (float-mat4-arb 35676)
  (sampler-1d 35677)
  (sampler-1d-arb 35677)
  (sampler-2d 35678)
  (sampler-2d-arb 35678)
  (sampler-3d 35679)
  (sampler-3d-arb 35679)
  (sampler-cube 35680)
  (sampler-cube-arb 35680)
  (sampler-1d-shadow 35681)
  (sampler-1d-shadow-arb 35681)
  (sampler-2d-shadow 35682)
  (sampler-2d-shadow-arb 35682)
  (sampler-2d-rect-arb 35683)
  (sampler-2d-rect-shadow-arb 35684)
  (float-mat-2x-3 35685)
  (float-mat-2x-4 35686)
  (float-mat-3x-2 35687)
  (float-mat-3x-4 35688)
  (float-mat-4x-2 35689)
  (float-mat-4x-3 35690)
  (delete-status 35712)
  (object-delete-status-arb 35712)
  (compile-status 35713)
  (object-compile-status-arb 35713)
  (link-status 35714)
  (object-link-status-arb 35714)
  (validate-status 35715)
  (object-validate-status-arb 35715)
  (info-log-length 35716)
  (object-info-log-length-arb 35716)
  (attached-shaders 35717)
  (object-attached-objects-arb 35717)
  (active-uniforms 35718)
  (object-active-uniforms-arb 35718)
  (active-uniform-max-length 35719)
  (object-active-uniform-max-length-arb 35719)
  (shader-source-length 35720)
  (object-shader-source-length-arb 35720)
  (active-attributes 35721)
  (object-active-attributes-arb 35721)
  (active-attribute-max-length 35722)
  (object-active-attribute-max-length-arb 35722)
  (fragment-shader-derivative-hint 35723)
  (fragment-shader-derivative-hint-arb 35723)
  (shading-language-version 35724)
  (shading-language-version-arb 35724))

(define-enumeration
  oes-standard-derivatives
  (fragment-shader-derivative-hint-oes 35723))

(define-enumeration
  ext-geometry-shader-4
  (max-varying-components-ext 35659)
  (geometry-shader-ext 36313)
  (max-geometry-varying-components-ext 36317)
  (max-vertex-varying-components-ext 36318)
  (max-geometry-uniform-components-ext 36319)
  (max-geometry-output-vertices-ext 36320)
  (max-geometry-total-output-components-ext 36321))

(define-enumeration
  oes-compressed-paletted-texture
  (palette4-rgb8-oes 35728)
  (palette4-rgba8-oes 35729)
  (palette4-r5-g6-b5-oes 35730)
  (palette4-rgba4-oes 35731)
  (palette4-rgb5-a1-oes 35732)
  (palette8-rgb8-oes 35733)
  (palette8-rgba8-oes 35734)
  (palette8-r5-g6-b5-oes 35735)
  (palette8-rgba4-oes 35736)
  (palette8-rgb5-a1-oes 35737))

(define-enumeration
  oes-read-format
  (implementation-color-read-type-oes 35738)
  (implementation-color-read-format-oes 35739))

(define-enumeration
  oes-draw-texture
  (texture-crop-rect-oes 35741))

(define-enumeration
  mesa-program-debug
  (fragment-program-position-mesa 35760)
  (fragment-program-callback-mesa 35761)
  (fragment-program-callback-func-mesa 35762)
  (fragment-program-callback-data-mesa 35763)
  (vertex-program-callback-mesa 35764)
  (vertex-program-position-mesa 35764)
  (vertex-program-callback-func-mesa 35766)
  (vertex-program-callback-data-mesa 35767))

(define-enumeration
  amd-performance-monitor
  (counter-type-amd 35776)
  (counter-range-amd 35777)
  (unsigned-int64-amd 35778)
  (percentage-amd 35779)
  (perfmon-result-available-amd 35780)
  (perfmon-result-size-amd 35781)
  (perfmon-result-amd 35782))

(define-enumeration
  qcom-extended-get
  (texture-width-qcom 35794)
  (texture-height-qcom 35795)
  (texture-depth-qcom 35796)
  (texture-internal-format-qcom 35797)
  (texture-format-qcom 35798)
  (texture-type-qcom 35799)
  (texture-image-valid-qcom 35800)
  (texture-num-levels-qcom 35801)
  (texture-target-qcom 35802)
  (texture-object-valid-qcom 35803)
  (state-restore 35804))

(define-enumeration
  img-texture-compression-pvrtc
  (compressed-rgb-pvrtc-4bppv1-img 35840)
  (compressed-rgb-pvrtc-2bppv1-img 35841)
  (compressed-rgba-pvrtc-4bppv1-img 35842)
  (compressed-rgba-pvrtc-2bppv1-img 35843))

(define-enumeration
  img-shader-binary
  (sgx-binary-img 35850))

(define-enumeration
  arb-texture-buffer-object
  (texture-buffer-arb 35882)
  (max-texture-buffer-size-arb 35883)
  (texture-binding-buffer-arb 35884)
  (texture-buffer-data-store-binding-arb 35885)
  (texture-buffer-format-arb 35886))

(define-enumeration
  ext-texture-buffer-object
  (texture-buffer-ext 35882)
  (max-texture-buffer-size-ext 35883)
  (texture-binding-buffer-ext 35884)
  (texture-buffer-data-store-binding-ext 35885)
  (texture-buffer-format-ext 35886))

(define-enumeration
  arb-occlusion-query-2
  (any-samples-passed 35887))

(define-enumeration
  arb-sample-shading
  (sample-shading-arb 35894)
  (min-sample-shading-value-arb 35895))

(define-enumeration
  ext-packed-float
  (r11f-g11f-b10f-ext 35898)
  (unsigned-int-10f-11f-11f-rev-ext 35899)
  (rgba-signed-components-ext 35900))

(define-enumeration
  ext-texture-shared-exponent
  (rgb9-e5-ext 35901)
  (unsigned-int-5-9-9-9-rev-ext 35902)
  (texture-shared-size-ext 35903))

(define-enumeration
  ext-texture-s-rgb
  (srgb-ext 35904)
  (srgb8-ext 35905)
  (srgb-alpha-ext 35906)
  (srgb8-alpha8-ext 35907)
  (sluminance-alpha-ext 35908)
  (sluminance8-alpha8-ext 35909)
  (sluminance-ext 35910)
  (sluminance8-ext 35911)
  (compressed-srgb-ext 35912)
  (compressed-srgb-alpha-ext 35913)
  (compressed-sluminance-ext 35914)
  (compressed-sluminance-alpha-ext 35915)
  (compressed-srgb-s3tc-dxt1-ext 35916)
  (compressed-srgb-alpha-s3tc-dxt1-ext 35917)
  (compressed-srgb-alpha-s3tc-dxt3-ext 35918)
  (compressed-srgb-alpha-s3tc-dxt5-ext 35919))

(define-enumeration
  ext-texture-compression-latc
  (compressed-luminance-latc1-ext 35952)
  (compressed-signed-luminance-latc1-ext 35953)
  (compressed-luminance-alpha-latc2-ext 35954)
  (compressed-signed-luminance-alpha-latc2-ext
    35955))

(define-enumeration
  ext-transform-feedback
  (transform-feedback-varying-max-length 35958)
  (transform-feedback-varying-max-length-ext 35958)
  (back-primary-color-nv 35959)
  (back-secondary-color-nv 35960)
  (texture-coord-nv 35961)
  (clip-distance-nv 35962)
  (vertex-id-nv 35963)
  (primitive-id-nv 35964)
  (generic-attrib-nv 35965)
  (transform-feedback-attribs-nv 35966)
  (transform-feedback-buffer-mode 35967)
  (transform-feedback-buffer-mode-ext 35967)
  (transform-feedback-buffer-mode-nv 35967)
  (max-transform-feedback-separate-components
    35968)
  (max-transform-feedback-separate-components-ext
    35968)
  (max-transform-feedback-separate-components-nv
    35968)
  (active-varyings-nv 35969)
  (active-varying-max-length-nv 35970)
  (transform-feedback-varyings 35971)
  (transform-feedback-varyings-ext 35971)
  (transform-feedback-varyings-nv 35971)
  (transform-feedback-buffer-start 35972)
  (transform-feedback-buffer-start-ext 35972)
  (transform-feedback-buffer-start-nv 35972)
  (transform-feedback-buffer-size 35973)
  (transform-feedback-buffer-size-ext 35973)
  (transform-feedback-buffer-size-nv 35973)
  (transform-feedback-record-nv 35974)
  (primitives-generated 35975)
  (primitives-generated-ext 35975)
  (primitives-generated-nv 35975)
  (transform-feedback-primitives-written 35976)
  (transform-feedback-primitives-written-ext 35976)
  (transform-feedback-primitives-written-nv 35976)
  (rasterizer-discard 35977)
  (rasterizer-discard-ext 35977)
  (rasterizer-discard-nv 35977)
  (max-transform-feedback-interleaved-components
    35978)
  (max-transform-feedback-interleaved-components-ext
    35978)
  (max-transform-feedback-interleaved-components-nv
    35978)
  (max-transform-feedback-separate-attribs 35979)
  (max-transform-feedback-separate-attribs-ext
    35979)
  (max-transform-feedback-separate-attribs-nv
    35979)
  (interleaved-attribs 35980)
  (interleaved-attribs-ext 35980)
  (interleaved-attribs-nv 35980)
  (separate-attribs 35981)
  (separate-attribs-ext 35981)
  (separate-attribs-nv 35981)
  (transform-feedback-buffer 35982)
  (transform-feedback-buffer-ext 35982)
  (transform-feedback-buffer-nv 35982)
  (transform-feedback-buffer-binding 35983)
  (transform-feedback-buffer-binding-ext 35983)
  (transform-feedback-buffer-binding-nv 35983))

(define-enumeration
  nv-transform-feedback
  (transform-feedback-varying-max-length 35958)
  (transform-feedback-varying-max-length-ext 35958)
  (back-primary-color-nv 35959)
  (back-secondary-color-nv 35960)
  (texture-coord-nv 35961)
  (clip-distance-nv 35962)
  (vertex-id-nv 35963)
  (primitive-id-nv 35964)
  (generic-attrib-nv 35965)
  (transform-feedback-attribs-nv 35966)
  (transform-feedback-buffer-mode 35967)
  (transform-feedback-buffer-mode-ext 35967)
  (transform-feedback-buffer-mode-nv 35967)
  (max-transform-feedback-separate-components
    35968)
  (max-transform-feedback-separate-components-ext
    35968)
  (max-transform-feedback-separate-components-nv
    35968)
  (active-varyings-nv 35969)
  (active-varying-max-length-nv 35970)
  (transform-feedback-varyings 35971)
  (transform-feedback-varyings-ext 35971)
  (transform-feedback-varyings-nv 35971)
  (transform-feedback-buffer-start 35972)
  (transform-feedback-buffer-start-ext 35972)
  (transform-feedback-buffer-start-nv 35972)
  (transform-feedback-buffer-size 35973)
  (transform-feedback-buffer-size-ext 35973)
  (transform-feedback-buffer-size-nv 35973)
  (transform-feedback-record-nv 35974)
  (primitives-generated 35975)
  (primitives-generated-ext 35975)
  (primitives-generated-nv 35975)
  (transform-feedback-primitives-written 35976)
  (transform-feedback-primitives-written-ext 35976)
  (transform-feedback-primitives-written-nv 35976)
  (rasterizer-discard 35977)
  (rasterizer-discard-ext 35977)
  (rasterizer-discard-nv 35977)
  (max-transform-feedback-interleaved-components
    35978)
  (max-transform-feedback-interleaved-components-ext
    35978)
  (max-transform-feedback-interleaved-components-nv
    35978)
  (max-transform-feedback-separate-attribs 35979)
  (max-transform-feedback-separate-attribs-ext
    35979)
  (max-transform-feedback-separate-attribs-nv
    35979)
  (interleaved-attribs 35980)
  (interleaved-attribs-ext 35980)
  (interleaved-attribs-nv 35980)
  (separate-attribs 35981)
  (separate-attribs-ext 35981)
  (separate-attribs-nv 35981)
  (transform-feedback-buffer 35982)
  (transform-feedback-buffer-ext 35982)
  (transform-feedback-buffer-nv 35982)
  (transform-feedback-buffer-binding 35983)
  (transform-feedback-buffer-binding-ext 35983)
  (transform-feedback-buffer-binding-nv 35983)
  (layer-nv 36266)
  (next-buffer-nv -2)
  (skip-components4-nv -3)
  (skip-components3-nv -4)
  (skip-components2-nv -5)
  (skip-components1-nv -6))

(define-enumeration
  ext-framebuffer-blit
  (draw-framebuffer-binding-ext 36006)
  (read-framebuffer-ext 36008)
  (draw-framebuffer-ext 36009)
  (draw-framebuffer-binding-ext 36006)
  (read-framebuffer-binding-ext 36010))

(define-enumeration
  angle-framebuffer-blit
  (framebuffer-binding-angle 36006)
  (renderbuffer-binding-angle 36007)
  (read-framebuffer-angle 36008)
  (draw-framebuffer-angle 36009))

(define-enumeration
  nv-framebuffer-blit
  (read-framebuffer-nv 36008)
  (draw-framebuffer-nv 36009)
  (draw-framebuffer-binding-nv 36006)
  (read-framebuffer-binding-nv 36010))

(define-enumeration
  angle-framebuffer-multisample
  (renderbuffer-samples-angle 36011)
  (framebuffer-incomplete-multisample-angle 36182)
  (max-samples-angle 36183))

(define-enumeration
  ext-framebuffer-multisample
  (renderbuffer-samples-ext 36011)
  (framebuffer-incomplete-multisample-ext 36182)
  (max-samples-ext 36183))

(define-enumeration
  nv-framebuffer-multisample
  (renderbuffer-samples-nv 36011)
  (framebuffer-incomplete-multisample-nv 36182)
  (max-samples-nv 36183))

(define-enumeration
  nv-framebuffer-multisample-coverage
  (renderbuffer-coverage-samples-nv 36011)
  (renderbuffer-color-samples-nv 36368)
  (max-multisample-coverage-modes-nv 36369)
  (multisample-coverage-modes-nv 36370))

(define-enumeration
  arb-depth-buffer-float
  (depth-component32f 36012)
  (depth32f-stencil8 36013)
  (float-32-unsigned-int-24-8-rev 36269))

(define-enumeration
  nv-fbo-color-attachments
  (max-color-attachments-nv 36063))

(define-enumeration
  oes-stencil-1
  (stencil-index1-oes 36166))

(define-enumeration
  oes-stencil-4
  (stencil-index4-oes 36167))

(define-enumeration
  oes-stencil-8
  (stencil-index8-oes 36168))

(define-enumeration
  oes-vertex-half-float
  (half-float-oes 36193))

(define-enumeration version-4-1 (rgb565 36194))

(define-enumeration
  oes-compressed-etc1-rgb8-texture
  (etc1-rgb8-oes 36196))

(define-enumeration
  oes-egl-image-external
  (texture-external-oes 36197)
  (sampler-external-oes 36198)
  (texture-binding-external-oes 36199)
  (required-texture-image-units-oes 36200))

(define-enumeration
  arb-es3-compatibility
  (primitive-restart-fixed-index 36201)
  (any-samples-passed-conservative 36202)
  (max-element-index 36203)
  (compressed-r11-eac 37488)
  (compressed-signed-r11-eac 37489)
  (compressed-rg11-eac 37490)
  (compressed-signed-rg11-eac 37491)
  (compressed-rgb8-etc2 37492)
  (compressed-srgb8-etc2 37493)
  (compressed-rgb8-punchthrough-alpha1-etc2 37494)
  (compressed-srgb8-punchthrough-alpha1-etc2 37495)
  (compressed-rgba8-etc2-eac 37496)
  (compressed-srgb8-alpha8-etc2-eac 37497))

(define-enumeration
  ext-multisampled-render-to-texture
  (framebuffer-attachment-texture-samples-ext
    36204))

(define-enumeration
  ext-texture-integer
  (rgba32ui 36208)
  (rgba32ui-ext 36208)
  (rgb32ui 36209)
  (rgb32ui-ext 36209)
  (alpha32ui-ext 36210)
  (intensity32ui-ext 36211)
  (luminance32ui-ext 36212)
  (luminance-alpha32ui-ext 36213)
  (rgba16ui 36214)
  (rgba16ui-ext 36214)
  (rgb16ui 36215)
  (rgb16ui-ext 36215)
  (alpha16ui-ext 36216)
  (intensity16ui-ext 36217)
  (luminance16ui-ext 36218)
  (luminance-alpha16ui-ext 36219)
  (rgba8ui 36220)
  (rgba8ui-ext 36220)
  (rgb8ui 36221)
  (rgb8ui-ext 36221)
  (alpha8ui-ext 36222)
  (intensity8ui-ext 36223)
  (luminance8ui-ext 36224)
  (luminance-alpha8ui-ext 36225)
  (rgba32i 36226)
  (rgba32i-ext 36226)
  (rgb32i 36227)
  (rgb32i-ext 36227)
  (alpha32i-ext 36228)
  (intensity32i-ext 36229)
  (luminance32i-ext 36230)
  (luminance-alpha32i-ext 36231)
  (rgba16i 36232)
  (rgba16i-ext 36232)
  (rgb16i 36233)
  (rgb16i-ext 36233)
  (alpha16i-ext 36234)
  (intensity16i-ext 36235)
  (luminance16i-ext 36236)
  (luminance-alpha16i-ext 36237)
  (rgba8i 36238)
  (rgba8i-ext 36238)
  (rgb8i 36239)
  (rgb8i-ext 36239)
  (alpha8i-ext 36240)
  (intensity8i-ext 36241)
  (luminance8i-ext 36242)
  (luminance-alpha8i-ext 36243)
  (red-integer 36244)
  (red-integer-ext 36244)
  (green-integer 36245)
  (green-integer-ext 36245)
  (blue-integer 36246)
  (blue-integer-ext 36246)
  (alpha-integer 36247)
  (alpha-integer-ext 36247)
  (rgb-integer 36248)
  (rgb-integer-ext 36248)
  (rgba-integer 36249)
  (rgba-integer-ext 36249)
  (bgr-integer 36250)
  (bgr-integer-ext 36250)
  (bgra-integer 36251)
  (bgra-integer-ext 36251)
  (luminance-integer-ext 36252)
  (luminance-alpha-integer-ext 36253)
  (rgba-integer-mode-ext 36254))

(define-enumeration
  arb-vertex-type-2-10-10-10-rev
  (int-2-10-10-10-rev 36255))

(define-enumeration
  nv-parameter-buffer-object
  (max-program-parameter-buffer-bindings-nv 36256)
  (max-program-parameter-buffer-size-nv 36257)
  (vertex-program-parameter-buffer-nv 36258)
  (geometry-program-parameter-buffer-nv 36259)
  (fragment-program-parameter-buffer-nv 36260))

(define-enumeration
  nv-depth-buffer-float
  (depth-component32f-nv 36267)
  (depth32f-stencil8-nv 36268)
  (float-32-unsigned-int-24-8-rev-nv 36269)
  (depth-buffer-float-mode-nv 36271))

(define-enumeration
  arb-shading-language-include
  (shader-include-arb 36270)
  (named-string-length-arb 36329)
  (named-string-type-arb 36330))

(define-enumeration
  arb-framebuffer-s-rgb
  (framebuffer-srgb 36281))

(define-enumeration
  ext-framebuffer-s-rgb
  (framebuffer-srgb-ext 36281)
  (framebuffer-srgb-capable-ext 36282))

(define-enumeration
  arb-texture-compression-rgtc
  (compressed-red-rgtc1 36283)
  (compressed-signed-red-rgtc1 36284)
  (compressed-rg-rgtc2 36285)
  (compressed-signed-rg-rgtc2 36286))

(define-enumeration
  ext-texture-compression-rgtc
  (compressed-red-rgtc1-ext 36283)
  (compressed-signed-red-rgtc1-ext 36284)
  (compressed-red-green-rgtc2-ext 36285)
  (compressed-signed-red-green-rgtc2-ext 36286))

(define-enumeration
  ext-gpu-shader-4
  (sampler-1d-array-ext 36288)
  (sampler-2d-array-ext 36289)
  (sampler-buffer-ext 36290)
  (sampler-1d-array-shadow-ext 36291)
  (sampler-2d-array-shadow-ext 36292)
  (sampler-cube-shadow-ext 36293)
  (unsigned-int-vec2-ext 36294)
  (unsigned-int-vec3-ext 36295)
  (unsigned-int-vec4-ext 36296)
  (int-sampler-1d-ext 36297)
  (int-sampler-2d-ext 36298)
  (int-sampler-3d-ext 36299)
  (int-sampler-cube-ext 36300)
  (int-sampler-2d-rect-ext 36301)
  (int-sampler-1d-array-ext 36302)
  (int-sampler-2d-array-ext 36303)
  (int-sampler-buffer-ext 36304)
  (unsigned-int-sampler-1d-ext 36305)
  (unsigned-int-sampler-2d-ext 36306)
  (unsigned-int-sampler-3d-ext 36307)
  (unsigned-int-sampler-cube-ext 36308)
  (unsigned-int-sampler-2d-rect-ext 36309)
  (unsigned-int-sampler-1d-array-ext 36310)
  (unsigned-int-sampler-2d-array-ext 36311)
  (unsigned-int-sampler-buffer-ext 36312))

(define-enumeration
  nv-shadow-samplers-array
  (sampler-2d-array-shadow-nv 36292))

(define-enumeration
  nv-shadow-samplers-cube
  (sampler-cube-shadow-nv 36293))

(define-enumeration
  ext-bindable-uniform
  (max-vertex-bindable-uniforms-ext 36322)
  (max-fragment-bindable-uniforms-ext 36323)
  (max-geometry-bindable-uniforms-ext 36324)
  (max-bindable-uniform-size-ext 36333)
  (uniform-buffer-ext 36334)
  (uniform-buffer-binding-ext 36335))

(define-enumeration
  arb-shader-subroutine
  (active-subroutines 36325)
  (active-subroutine-uniforms 36326)
  (max-subroutines 36327)
  (max-subroutine-uniform-locations 36328)
  (active-subroutine-uniform-locations 36423)
  (active-subroutine-max-length 36424)
  (active-subroutine-uniform-max-length 36425)
  (num-compatible-subroutines 36426)
  (compatible-subroutines 36427))

(define-enumeration
  oes-vertex-type-10-10-10-2
  (unsigned-int-10-10-10-2-oes 36342)
  (int-10-10-10-2-oes 36343))

(define-enumeration
  nv-conditional-render
  (query-wait-nv 36371)
  (query-no-wait-nv 36372)
  (query-by-region-wait-nv 36373)
  (query-by-region-no-wait-nv 36374))

(define-enumeration
  arb-transform-feedback-2
  (transform-feedback 36386)
  (transform-feedback-paused 36387)
  (transform-feedback-buffer-paused 36387)
  (transform-feedback-active 36388)
  (transform-feedback-buffer-active 36388)
  (transform-feedback-binding 36389))

(define-enumeration
  nv-transform-feedback-2
  (transform-feedback-nv 36386)
  (transform-feedback-buffer-paused-nv 36387)
  (transform-feedback-buffer-active-nv 36388)
  (transform-feedback-binding-nv 36389))

(define-enumeration
  nv-present-video
  (frame-nv 36390)
  (fields-nv 36391)
  (current-time-nv 36392)
  (num-fill-streams-nv 36393)
  (present-time-nv 36394)
  (present-duration-nv 36395))

(define-enumeration
  nv-depth-nonlinear
  (depth-component16-nonlinear-nv 36396))

(define-enumeration
  ext-direct-state-access
  (program-matrix-ext 36397)
  (transpose-program-matrix-ext 36398)
  (program-matrix-stack-depth-ext 36399))

(define-enumeration
  arb-texture-swizzle
  (texture-swizzle-r 36418)
  (texture-swizzle-g 36419)
  (texture-swizzle-b 36420)
  (texture-swizzle-a 36421)
  (texture-swizzle-rgba 36422))

(define-enumeration
  ext-texture-swizzle
  (texture-swizzle-r-ext 36418)
  (texture-swizzle-g-ext 36419)
  (texture-swizzle-b-ext 36420)
  (texture-swizzle-a-ext 36421)
  (texture-swizzle-rgba-ext 36422))

(define-enumeration
  arb-provoking-vertex
  (quads-follow-provoking-vertex-convention 36428)
  (first-vertex-convention 36429)
  (last-vertex-convention 36430)
  (provoking-vertex 36431))

(define-enumeration
  ext-provoking-vertex
  (quads-follow-provoking-vertex-convention-ext
    36428)
  (first-vertex-convention-ext 36429)
  (last-vertex-convention-ext 36430)
  (provoking-vertex-ext 36431))

(define-enumeration
  arb-texture-multisample
  (sample-position 36432)
  (sample-mask 36433)
  (sample-mask-value 36434)
  (max-sample-mask-words 36441)
  (texture-2d-multisample 37120)
  (proxy-texture-2d-multisample 37121)
  (texture-2d-multisample-array 37122)
  (proxy-texture-2d-multisample-array 37123)
  (texture-binding-2d-multisample 37124)
  (texture-binding-2d-multisample-array 37125)
  (texture-samples 37126)
  (texture-fixed-sample-locations 37127)
  (sampler-2d-multisample 37128)
  (int-sampler-2d-multisample 37129)
  (unsigned-int-sampler-2d-multisample 37130)
  (sampler-2d-multisample-array 37131)
  (int-sampler-2d-multisample-array 37132)
  (unsigned-int-sampler-2d-multisample-array 37133)
  (max-color-texture-samples 37134)
  (max-depth-texture-samples 37135)
  (max-integer-samples 37136))

(define-enumeration
  nv-explicit-multisample
  (sample-position-nv 36432)
  (sample-mask-nv 36433)
  (sample-mask-value-nv 36434)
  (texture-binding-renderbuffer-nv 36435)
  (texture-renderbuffer-data-store-binding-nv
    36436)
  (texture-renderbuffer-nv 36437)
  (sampler-renderbuffer-nv 36438)
  (int-sampler-renderbuffer-nv 36439)
  (unsigned-int-sampler-renderbuffer-nv 36440)
  (max-sample-mask-words-nv 36441))

(define-enumeration
  nv-gpu-program-5
  (max-geometry-program-invocations-nv 36442)
  (min-fragment-interpolation-offset-nv 36443)
  (max-fragment-interpolation-offset-nv 36444)
  (fragment-program-interpolation-offset-bits-nv
    36445)
  (min-program-texture-gather-offset-nv 36446)
  (max-program-texture-gather-offset-nv 36447)
  (max-program-subroutine-parameters-nv 36676)
  (max-program-subroutine-num-nv 36677))

(define-enumeration
  arb-texture-gather
  (min-program-texture-gather-offset 36446)
  (max-program-texture-gather-offset 36447)
  (max-program-texture-gather-components-arb 36767)
  (max-program-texture-gather-components 36767))

(define-enumeration
  arb-transform-feedback-3
  (max-transform-feedback-buffers 36464)
  (max-vertex-streams 36465))

(define-enumeration
  arb-texture-compression-bptc
  (compressed-rgba-bptc-unorm-arb 36492)
  (compressed-srgb-alpha-bptc-unorm-arb 36493)
  (compressed-rgb-bptc-signed-float-arb 36494)
  (compressed-rgb-bptc-unsigned-float-arb 36495))

(define-enumeration
  nv-coverage-sample
  (coverage-component-nv 36560)
  (coverage-component4-nv 36561)
  (coverage-attachment-nv 36562)
  (coverage-buffers-nv 36563)
  (coverage-samples-nv 36564)
  (coverage-all-fragments-nv 36565)
  (coverage-edge-fragments-nv 36566)
  (coverage-automatic-nv 36567)
  (coverage-buffer-bit-nv 32768))

(define-enumeration
  nv-shader-buffer-load
  (buffer-gpu-address-nv 36637)
  (gpu-address-nv 36660)
  (max-shader-buffer-address-nv 36661))

(define-enumeration
  nv-vertex-buffer-unified-memory
  (vertex-attrib-array-unified-nv 36638)
  (element-array-unified-nv 36639)
  (vertex-attrib-array-address-nv 36640)
  (vertex-array-address-nv 36641)
  (normal-array-address-nv 36642)
  (color-array-address-nv 36643)
  (index-array-address-nv 36644)
  (texture-coord-array-address-nv 36645)
  (edge-flag-array-address-nv 36646)
  (secondary-color-array-address-nv 36647)
  (fog-coord-array-address-nv 36648)
  (element-array-address-nv 36649)
  (vertex-attrib-array-length-nv 36650)
  (vertex-array-length-nv 36651)
  (normal-array-length-nv 36652)
  (color-array-length-nv 36653)
  (index-array-length-nv 36654)
  (texture-coord-array-length-nv 36655)
  (edge-flag-array-length-nv 36656)
  (secondary-color-array-length-nv 36657)
  (fog-coord-array-length-nv 36658)
  (element-array-length-nv 36659)
  (draw-indirect-unified-nv 36672)
  (draw-indirect-address-nv 36673)
  (draw-indirect-length-nv 36674))

(define-enumeration
  arb-copy-buffer
  (copy-read-buffer-binding 36662)
  (copy-read-buffer 36662)
  (copy-write-buffer-binding 36663)
  (copy-write-buffer 36663))

(define-enumeration
  arb-draw-indirect
  (draw-indirect-buffer 36671)
  (draw-indirect-buffer-binding 36675))

(define-enumeration
  arb-gpu-shader-fp-64
  (double-mat2 36678)
  (double-mat3 36679)
  (double-mat4 36680)
  (double-mat-2x-3 36681)
  (double-mat-2x-4 36682)
  (double-mat-3x-2 36683)
  (double-mat-3x-4 36684)
  (double-mat-4x-2 36685)
  (double-mat-4x-3 36686)
  (double-vec2 36860)
  (double-vec3 36861)
  (double-vec4 36862))

(define-enumeration
  arm-mali-shader-binary
  (mali-shader-binary-arm 36704))

(define-enumeration
  qcom-driver-control
  (perfmon-global-mode-qcom 36768))

(define-enumeration
  qcom-binning-control
  (binning-control-hint-qcom 36784)
  (cpu-optimized-qcom 36785)
  (gpu-optimized-qcom 36786)
  (render-direct-to-framebuffer-qcom 36787))

(define-enumeration
  viv-shader-binary
  (shader-binary-viv 36804))

(define-enumeration
  amd-vertex-shader-tesselator
  (sampler-buffer-amd 36865)
  (int-sampler-buffer-amd 36866)
  (unsigned-int-sampler-buffer-amd 36867)
  (tessellation-mode-amd 36868)
  (tessellation-factor-amd 36869)
  (discrete-amd 36870)
  (continuous-amd 36871))

(define-enumeration
  arb-texture-cube-map-array
  (texture-cube-map-array 36873)
  (texture-binding-cube-map-array 36874)
  (proxy-texture-cube-map-array 36875)
  (sampler-cube-map-array 36876)
  (sampler-cube-map-array-shadow 36877)
  (int-sampler-cube-map-array 36878)
  (unsigned-int-sampler-cube-map-array 36879))

(define-enumeration
  ext-texture-snorm
  (alpha-snorm 36880)
  (luminance-snorm 36881)
  (luminance-alpha-snorm 36882)
  (intensity-snorm 36883)
  (alpha8-snorm 36884)
  (luminance8-snorm 36885)
  (luminance8-alpha8-snorm 36886)
  (intensity8-snorm 36887)
  (alpha16-snorm 36888)
  (luminance16-snorm 36889)
  (luminance16-alpha16-snorm 36890)
  (intensity16-snorm 36891))

(define-enumeration
  amd-blend-minmax-factor
  (factor-min-amd 36892)
  (factor-max-amd 36893))

(define-enumeration
  amd-depth-clamp-separate
  (depth-clamp-near-amd 36894)
  (depth-clamp-far-amd 36895))

(define-enumeration
  nv-video-capture
  (video-buffer-nv 36896)
  (video-buffer-binding-nv 36897)
  (field-upper-nv 36898)
  (field-lower-nv 36899)
  (num-video-capture-streams-nv 36900)
  (next-video-capture-buffer-status-nv 36901)
  (video-capture-to-422-supported-nv 36902)
  (last-video-capture-status-nv 36903)
  (video-buffer-pitch-nv 36904)
  (video-color-conversion-matrix-nv 36905)
  (video-color-conversion-max-nv 36906)
  (video-color-conversion-min-nv 36907)
  (video-color-conversion-offset-nv 36908)
  (video-buffer-internal-format-nv 36909)
  (partial-success-nv 36910)
  (success-nv 36911)
  (failure-nv 36912)
  (ycbycr8-422-nv 36913)
  (ycbaycr8a-4224-nv 36914)
  (z6y10z6cb10z6y10z6cr10-422-nv 36915)
  (z6y10z6cb10z6a10z6y10z6cr10z6a10-4224-nv 36916)
  (z4y12z4cb12z4y12z4cr12-422-nv 36917)
  (z4y12z4cb12z4a12z4y12z4cr12z4a12-4224-nv 36918)
  (z4y12z4cb12z4cr12-444-nv 36919)
  (video-capture-frame-width-nv 36920)
  (video-capture-frame-height-nv 36921)
  (video-capture-field-upper-height-nv 36922)
  (video-capture-field-lower-height-nv 36923)
  (video-capture-surface-origin-nv 36924))

(define-enumeration
  nv-texture-multisample
  (texture-coverage-samples-nv 36933)
  (texture-color-samples-nv 36934))

(define-enumeration
  arb-texture-rgb-10-a-2-ui
  (rgb10-a2ui 36975))

(define-enumeration
  nv-path-rendering
  (path-format-svg-nv 36976)
  (path-format-ps-nv 36977)
  (standard-font-name-nv 36978)
  (system-font-name-nv 36979)
  (file-name-nv 36980)
  (path-stroke-width-nv 36981)
  (path-end-caps-nv 36982)
  (path-initial-end-cap-nv 36983)
  (path-terminal-end-cap-nv 36984)
  (path-join-style-nv 36985)
  (path-miter-limit-nv 36986)
  (path-dash-caps-nv 36987)
  (path-initial-dash-cap-nv 36988)
  (path-terminal-dash-cap-nv 36989)
  (path-dash-offset-nv 36990)
  (path-client-length-nv 36991)
  (path-fill-mode-nv 36992)
  (path-fill-mask-nv 36993)
  (path-fill-cover-mode-nv 36994)
  (path-stroke-cover-mode-nv 36995)
  (path-stroke-mask-nv 36996)
  (count-up-nv 37000)
  (count-down-nv 37001)
  (path-object-bounding-box-nv 37002)
  (convex-hull-nv 37003)
  (bounding-box-nv 37005)
  (translate-x-nv 37006)
  (translate-y-nv 37007)
  (translate-2d-nv 37008)
  (translate-3d-nv 37009)
  (affine-2d-nv 37010)
  (affine-3d-nv 37012)
  (transpose-affine-2d-nv 37014)
  (transpose-affine-3d-nv 37016)
  (utf8-nv 37018)
  (utf16-nv 37019)
  (bounding-box-of-bounding-boxes-nv 37020)
  (path-command-count-nv 37021)
  (path-coord-count-nv 37022)
  (path-dash-array-count-nv 37023)
  (path-computed-length-nv 37024)
  (path-fill-bounding-box-nv 37025)
  (path-stroke-bounding-box-nv 37026)
  (square-nv 37027)
  (round-nv 37028)
  (triangular-nv 37029)
  (bevel-nv 37030)
  (miter-revert-nv 37031)
  (miter-truncate-nv 37032)
  (skip-missing-glyph-nv 37033)
  (use-missing-glyph-nv 37034)
  (path-error-position-nv 37035)
  (path-fog-gen-mode-nv 37036)
  (accum-adjacent-pairs-nv 37037)
  (adjacent-pairs-nv 37038)
  (first-to-rest-nv 37039)
  (path-gen-mode-nv 37040)
  (path-gen-coeff-nv 37041)
  (path-gen-color-format-nv 37042)
  (path-gen-components-nv 37043)
  (path-dash-offset-reset-nv 37044)
  (move-to-resets-nv 37045)
  (move-to-continues-nv 37046)
  (path-stencil-func-nv 37047)
  (path-stencil-ref-nv 37048)
  (path-stencil-value-mask-nv 37049)
  (close-path-nv 0)
  (move-to-nv 2)
  (relative-move-to-nv 3)
  (line-to-nv 4)
  (relative-line-to-nv 5)
  (horizontal-line-to-nv 6)
  (relative-horizontal-line-to-nv 7)
  (vertical-line-to-nv 8)
  (relative-vertical-line-to-nv 9)
  (quadratic-curve-to-nv 10)
  (relative-quadratic-curve-to-nv 11)
  (cubic-curve-to-nv 12)
  (relative-cubic-curve-to-nv 13)
  (smooth-quadratic-curve-to-nv 14)
  (relative-smooth-quadratic-curve-to-nv 15)
  (smooth-cubic-curve-to-nv 16)
  (relative-smooth-cubic-curve-to-nv 17)
  (small-ccw-arc-to-nv 18)
  (relative-small-ccw-arc-to-nv 19)
  (small-cw-arc-to-nv 20)
  (relative-small-cw-arc-to-nv 21)
  (large-ccw-arc-to-nv 22)
  (relative-large-ccw-arc-to-nv 23)
  (large-cw-arc-to-nv 24)
  (relative-large-cw-arc-to-nv 25)
  (restart-path-nv 240)
  (dup-first-cubic-curve-to-nv 242)
  (dup-last-cubic-curve-to-nv 244)
  (rect-nv 246)
  (circular-ccw-arc-to-nv 248)
  (circular-cw-arc-to-nv 250)
  (circular-tangent-arc-to-nv 252)
  (arc-to-nv 254)
  (relative-arc-to-nv 255)
  (bold-bit-nv 1)
  (italic-bit-nv 2)
  (glyph-width-bit-nv 1)
  (glyph-height-bit-nv 2)
  (glyph-horizontal-bearing-x-bit-nv 4)
  (glyph-horizontal-bearing-y-bit-nv 8)
  (glyph-horizontal-bearing-advance-bit-nv 16)
  (glyph-vertical-bearing-x-bit-nv 32)
  (glyph-vertical-bearing-y-bit-nv 64)
  (glyph-vertical-bearing-advance-bit-nv 128)
  (glyph-has-kerning-bit-nv 256)
  (font-x-min-bounds-bit-nv 65536)
  (font-y-min-bounds-bit-nv 131072)
  (font-x-max-bounds-bit-nv 262144)
  (font-y-max-bounds-bit-nv 524288)
  (font-units-per-em-bit-nv 1048576)
  (font-ascender-bit-nv 2097152)
  (font-descender-bit-nv 4194304)
  (font-height-bit-nv 8388608)
  (font-max-advance-width-bit-nv 16777216)
  (font-max-advance-height-bit-nv 33554432)
  (font-underline-position-bit-nv 67108864)
  (font-underline-thickness-bit-nv 134217728)
  (font-has-kerning-bit-nv 268435456)
  (path-stencil-depth-offset-factor-nv 37053)
  (path-stencil-depth-offset-units-nv 37054)
  (path-cover-depth-func-nv 37055))

(define-enumeration
  ext-framebuffer-multisample-blit-scaled
  (scaled-resolve-fastest-ext 37050)
  (scaled-resolve-nicest-ext 37051))

(define-enumeration
  arb-map-buffer-alignment
  (min-map-buffer-alignment 37052))

(define-enumeration
  nv-deep-texture-3d
  (max-deep-3d-texture-width-height-nv 37072)
  (max-deep-3d-texture-depth-nv 37073))

(define-enumeration
  ext-x-11-sync-object
  (sync-x11-fence-ext 37089))

(define-enumeration
  arb-stencil-texturing
  (depth-stencil-texture-mode 37098))

(define-enumeration
  nv-compute-program-5
  (compute-program-nv 37115)
  (compute-program-parameter-buffer-nv 37116))

(define-enumeration
  arb-sync
  (max-server-wait-timeout 37137)
  (object-type 37138)
  (sync-condition 37139)
  (sync-status 37140)
  (sync-flags 37141)
  (sync-fence 37142)
  (sync-gpu-commands-complete 37143)
  (unsignaled 37144)
  (signaled 37145)
  (already-signaled 37146)
  (timeout-expired 37147)
  (condition-satisfied 37148)
  (wait-failed 37149)
  (sync-flush-commands-bit 1)
  (timeout-ignored 18446744073709551615))

(define-enumeration
  arb-compressed-texture-pixel-storage
  (unpack-compressed-block-width 37159)
  (unpack-compressed-block-height 37160)
  (unpack-compressed-block-depth 37161)
  (unpack-compressed-block-size 37162)
  (pack-compressed-block-width 37163)
  (pack-compressed-block-height 37164)
  (pack-compressed-block-depth 37165)
  (pack-compressed-block-size 37166))

(define-enumeration
  arb-texture-storage
  (texture-immutable-format 37167))

(define-enumeration
  img-program-binary
  (sgx-program-binary-img 37168))

(define-enumeration
  img-multisampled-render-to-texture
  (renderbuffer-samples-img 37171)
  (framebuffer-incomplete-multisample-img 37172)
  (max-samples-img 37173)
  (texture-samples-img 37174))

(define-enumeration
  img-texture-compression-pvrtc-2
  (compressed-rgba-pvrtc-2bppv2-img 37175)
  (compressed-rgba-pvrtc-4bppv2-img 37176))

(define-enumeration
  amd-debug-output
  (max-debug-message-length-amd 37187)
  (max-debug-logged-messages-amd 37188)
  (debug-logged-messages-amd 37189)
  (debug-severity-high-amd 37190)
  (debug-severity-medium-amd 37191)
  (debug-severity-low-amd 37192)
  (debug-category-api-error-amd 37193)
  (debug-category-window-system-amd 37194)
  (debug-category-deprecation-amd 37195)
  (debug-category-undefined-behavior-amd 37196)
  (debug-category-performance-amd 37197)
  (debug-category-shader-compiler-amd 37198)
  (debug-category-application-amd 37199)
  (debug-category-other-amd 37200))

(define-enumeration
  amd-name-gen-delete
  (data-buffer-amd 37201)
  (performance-monitor-amd 37202)
  (query-object-amd 37203)
  (vertex-array-object-amd 37204)
  (sampler-object-amd 37205))

(define-enumeration
  amd-pinned-memory
  (external-virtual-memory-buffer-amd 37216))

(define-enumeration
  amd-query-buffer-object
  (query-buffer-amd 37266)
  (query-buffer-binding-amd 37267)
  (query-result-no-wait-amd 37268))

(define-enumeration
  amd-sparse-texture
  (virtual-page-size-x-amd 37269)
  (virtual-page-size-y-amd 37270)
  (virtual-page-size-z-amd 37271)
  (max-sparse-texture-size-amd 37272)
  (max-sparse-3d-texture-size-amd 37273)
  (max-sparse-array-texture-layers 37274)
  (min-sparse-level-amd 37275)
  (min-lod-warning-amd 37276)
  (texture-storage-sparse-bit-amd 1))

(define-enumeration
  arb-texture-buffer-range
  (texture-buffer-offset 37277)
  (texture-buffer-size 37278)
  (texture-buffer-offset-alignment 37279))

(define-enumeration
  dmp-shader-binary
  (shader-binary-dmp 37456))

(define-enumeration
  fj-shader-binary-gccso
  (gccso-shader-binary-fj 37472))

(define-enumeration
  arb-shader-atomic-counters
  (atomic-counter-buffer 37568)
  (atomic-counter-buffer-binding 37569)
  (atomic-counter-buffer-start 37570)
  (atomic-counter-buffer-size 37571)
  (atomic-counter-buffer-data-size 37572)
  (atomic-counter-buffer-active-atomic-counters
    37573)
  (atomic-counter-buffer-active-atomic-counter-indices
    37574)
  (atomic-counter-buffer-referenced-by-vertex-shader
    37575)
  (atomic-counter-buffer-referenced-by-tess-control-shader
    37576)
  (atomic-counter-buffer-referenced-by-tess-evaluation-shader
    37577)
  (atomic-counter-buffer-referenced-by-geometry-shader
    37578)
  (atomic-counter-buffer-referenced-by-fragment-shader
    37579)
  (max-vertex-atomic-counter-buffers 37580)
  (max-tess-control-atomic-counter-buffers 37581)
  (max-tess-evaluation-atomic-counter-buffers
    37582)
  (max-geometry-atomic-counter-buffers 37583)
  (max-fragment-atomic-counter-buffers 37584)
  (max-combined-atomic-counter-buffers 37585)
  (max-vertex-atomic-counters 37586)
  (max-tess-control-atomic-counters 37587)
  (max-tess-evaluation-atomic-counters 37588)
  (max-geometry-atomic-counters 37589)
  (max-fragment-atomic-counters 37590)
  (max-combined-atomic-counters 37591)
  (max-atomic-counter-buffer-size 37592)
  (max-atomic-counter-buffer-bindings 37596)
  (active-atomic-counter-buffers 37593)
  (uniform-atomic-counter-buffer-index 37594)
  (unsigned-int-atomic-counter 37595))

(define-enumeration
  arb-program-interface-query
  (uniform 37601)
  (uniform-block 37602)
  (program-input 37603)
  (program-output 37604)
  (buffer-variable 37605)
  (shader-storage-block 37606)
  (is-per-patch 37607)
  (vertex-subroutine 37608)
  (tess-control-subroutine 37609)
  (tess-evaluation-subroutine 37610)
  (geometry-subroutine 37611)
  (fragment-subroutine 37612)
  (compute-subroutine 37613)
  (vertex-subroutine-uniform 37614)
  (tess-control-subroutine-uniform 37615)
  (tess-evaluation-subroutine-uniform 37616)
  (geometry-subroutine-uniform 37617)
  (fragment-subroutine-uniform 37618)
  (compute-subroutine-uniform 37619)
  (transform-feedback-varying 37620)
  (active-resources 37621)
  (max-name-length 37622)
  (max-num-active-variables 37623)
  (max-num-compatible-subroutines 37624)
  (name-length 37625)
  (type 37626)
  (array-size 37627)
  (offset 37628)
  (block-index 37629)
  (array-stride 37630)
  (matrix-stride 37631)
  (is-row-major 37632)
  (atomic-counter-buffer-index 37633)
  (buffer-binding 37634)
  (buffer-data-size 37635)
  (num-active-variables 37636)
  (active-variables 37637)
  (referenced-by-vertex-shader 37638)
  (referenced-by-tess-control-shader 37639)
  (referenced-by-tess-evaluation-shader 37640)
  (referenced-by-geometry-shader 37641)
  (referenced-by-fragment-shader 37642)
  (referenced-by-compute-shader 37643)
  (top-level-array-size 37644)
  (top-level-array-stride 37645)
  (location 37646)
  (location-index 37647))

(define-enumeration
  arb-framebuffer-no-attachments
  (framebuffer-default-width 37648)
  (framebuffer-default-height 37649)
  (framebuffer-default-layers 37650)
  (framebuffer-default-samples 37651)
  (framebuffer-default-fixed-sample-locations
    37652)
  (max-framebuffer-width 37653)
  (max-framebuffer-height 37654)
  (max-framebuffer-layers 37655)
  (max-framebuffer-samples 37656))

(define-enumeration
  arb-internalformat-query
  (num-sample-counts 37760))

(define-enumeration
  angle-translated-shader-source
  (translated-shader-source-length-angle 37792))

(define-enumeration
  angle-texture-usage
  (texture-usage-angle 37794)
  (framebuffer-attachment-angle 37795)
  (none 0))

(define-enumeration
  angle-pack-reverse-row-order
  (pack-reverse-row-order-angle 37796))

(define-enumeration
  angle-depth-texture
  (program-binary-angle 37798))

(define-enumeration
  gl-khr-texture-compression-astc-ldr
  (compressed-rgba-astc-4x4-khr 37808)
  (compressed-rgba-astc-5x4-khr 37809)
  (compressed-rgba-astc-5x5-khr 37810)
  (compressed-rgba-astc-6x5-khr 37811)
  (compressed-rgba-astc-6x6-khr 37812)
  (compressed-rgba-astc-8x5-khr 37813)
  (compressed-rgba-astc-8x6-khr 37814)
  (compressed-rgba-astc-8x8-khr 37815)
  (compressed-rgba-astc-10x5-khr 37816)
  (compressed-rgba-astc-10x6-khr 37817)
  (compressed-rgba-astc-10x8-khr 37818)
  (compressed-rgba-astc-10x10-khr 37819)
  (compressed-rgba-astc-12x10-khr 37820)
  (compressed-rgba-astc-12x12-khr 37821)
  (compressed-srgb8-alpha8-astc-4x4-khr 37840)
  (compressed-srgb8-alpha8-astc-5x4-khr 37841)
  (compressed-srgb8-alpha8-astc-5x5-khr 37842)
  (compressed-srgb8-alpha8-astc-6x5-khr 37843)
  (compressed-srgb8-alpha8-astc-6x6-khr 37844)
  (compressed-srgb8-alpha8-astc-8x5-khr 37845)
  (compressed-srgb8-alpha8-astc-8x6-khr 37846)
  (compressed-srgb8-alpha8-astc-8x8-khr 37847)
  (compressed-srgb8-alpha8-astc-10x5-khr 37848)
  (compressed-srgb8-alpha8-astc-10x6-khr 37849)
  (compressed-srgb8-alpha8-astc-10x8-khr 37850)
  (compressed-srgb8-alpha8-astc-10x10-khr 37851)
  (compressed-srgb8-alpha8-astc-12x10-khr 37852)
  (compressed-srgb8-alpha8-astc-12x12-khr 37853))

