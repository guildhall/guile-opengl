;;; figl                           -*- mode: scheme; coding: utf-8 -*-
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
;;;
;;; Derived from upstream OpenGL documentation.
;;; 
;;; Copyright
;;; =========
;;; 
;;; Copyright (C) 1991-2006 Silicon Graphics, Inc. This document is licensed
;;; under the SGI Free Software B License. For details, see
;;; http://oss.sgi.com/projects/FreeB/ (http://oss.sgi.com/projects/FreeB/).
;;;
;;; Automatically generated; you probably don't want to edit this.  To
;;; update, run "make update" in the top-level build tree.
;;;

(define-module
  (figl low-level glu)
  #:use-module
  (figl low-level support)
  #:export
  (gluBeginCurve
    gluBeginPolygon
    gluBeginSurface
    gluBeginTrim
    gluBuild1DMipmapLevels
    gluBuild1DMipmaps
    gluBuild2DMipmapLevels
    gluBuild2DMipmaps
    gluBuild3DMipmapLevels
    gluBuild3DMipmaps
    gluCheckExtension
    gluCylinder
    gluDeleteNurbsRenderer
    gluDeleteQuadric
    gluDeleteTess
    gluDisk
    gluErrorString
    gluGetNurbsProperty
    gluGetString
    gluGetTessProperty
    gluLoadSamplingMatrices
    gluLookAt
    gluNewNurbsRenderer
    gluNewQuadric
    gluNewTess
    gluNextContour
    gluNurbsCallbackDataEXT
    gluNurbsCallbackData
    gluNurbsCallback
    gluNurbsCurve
    gluNurbsProperty
    gluNurbsSurface
    gluOrtho2D
    gluPartialDisk
    gluPerspective
    gluPickMatrix
    gluProject
    gluPwlCurve
    gluQuadricCallback
    gluQuadricDrawStyle
    gluQuadricNormals
    gluQuadricOrientation
    gluQuadricTexture
    gluScaleImage
    gluSphere
    gluTessBeginContour
    gluTessBeginPolygon
    gluTessCallback
    gluTessEndPolygon
    gluTessNormal
    gluTessProperty
    gluTessVertex
    gluUnProject4
    gluUnProject))

(define-gl-procedure
  gluBeginCurve
  "gluBeginCurve"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluBeginCurve"))
      (paramdef "GLUnurbs* " (parameter "nurb"))))
  '(*fragment*
     (heading "delimit a NURBS curve definition")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). ")))
     (heading "Description")
     (para "
Use "
           (code "gluBeginCurve")
           " to mark the beginning of a NURBS 
            curve definition.
            After 
            calling "
           (code "gluBeginCurve")
           ", make one or more calls to "
           (code "gluNurbsCurve")
           " to define the attributes of the curve.
            Exactly one of the calls to "
           (code "gluNurbsCurve")
           " must have
            a curve type of "
           (code "GLU_MAP1_VERTEX_3")
           " or "
           (code "GLU_MAP1_VERTEX_4")
           ".
            To mark the end of the NURBS curve definition, call "
           (code "gluEndCurve")
           ". ")
     (para "
GL evaluators are used to render the NURBS curve as a series of line
            segments.
            Evaluator state is preserved during rendering
            with "
           (code "glPushAttrib")
           "("
           (code "GLU_EVAL_BIT")
           ") and "
           (code "glPopAttrib")
           "().  
            See the "
           (code "glPushAttrib")
           " reference page for details on exactly what state
            these calls preserve. ")))

(define-gl-procedure
  gluBeginPolygon
  "gluBeginPolygon"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluBeginPolygon"))
      (paramdef "GLUtesselator* " (parameter "tess"))))
  '(*fragment*
     (heading "delimit a polygon description")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). ")))
     (heading "Description")
     (para (code "gluBeginPolygon")
           " and "
           (code "gluEndPolygon")
           " delimit the definition of a
            nonconvex polygon.
            To define such a polygon, first call "
           (code "gluBeginPolygon")
           ".
            Then define the contours of the polygon
            by calling "
           (code "gluTessVertex")
           " for each vertex
            and "
           (code "gluNextContour")
           " to start each new contour.
            Finally, call "
           (code "gluEndPolygon")
           "
to signal the end of the definition.
            See the "
           (code "gluTessVertex")
           " and "
           (code "gluNextContour")
           " reference pages for more details. ")
     (para "
Once "
           (code "gluEndPolygon")
           " is called, the polygon is tessellated, and the
            resulting triangles are described through callbacks.
            See "
           (code "gluTessCallback")
           " for descriptions of the callback functions. ")))

(define-gl-procedure
  gluBeginSurface
  "gluBeginSurface"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluBeginSurface"))
      (paramdef "GLUnurbs* " (parameter "nurb"))))
  '(*fragment*
     (heading "delimit a NURBS surface definition")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). ")))
     (heading "Description")
     (para "
Use "
           (code "gluBeginSurface")
           " to mark the beginning of a NURBS 
            surface definition. After 
            calling "
           (code "gluBeginSurface")
           ", make one or more calls to "
           (code "gluNurbsSurface")
           " to define the attributes of the surface.
            Exactly one of these calls to "
           (code "gluNurbsSurface")
           " must have a
            surface type of "
           (code "GLU_MAP2_VERTEX_3")
           " or "
           (code "GLU_MAP2_VERTEX_4")
           ".
            To mark the end of the NURBS surface definition, call "
           (code "gluEndSurface")
           ". ")
     (para "
Trimming of NURBS surfaces is supported with "
           (code "gluBeginTrim")
           ", "
           (code "gluPwlCurve")
           ", "
           (code "gluNurbsCurve")
           ", and "
           (code "gluEndTrim")
           ". See the "
           (code "gluBeginTrim")
           " reference page for details. ")
     (para "
GL evaluators are used to render the NURBS surface as a set of polygons.
            Evaluator state is preserved during rendering
            with "
           (code "glPushAttrib")
           "("
           (code "GLU_EVAL_BIT")
           ") and "
           (code "glPopAttrib")
           ".  
            See the "
           (code "glPushAttrib")
           " reference page for details on exactly what state
            these calls preserve. ")))

(define-gl-procedure
  gluBeginTrim
  "gluBeginTrim"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluBeginTrim"))
      (paramdef "GLUnurbs* " (parameter "nurb"))))
  '(*fragment*
     (heading
       "delimit a NURBS trimming loop definition")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). ")))
     (heading "Description")
     (para "
Use "
           (code "gluBeginTrim")
           " to mark the beginning of a
            trimming loop and "
           (code "gluEndTrim")
           " to mark the end 
            of a trimming loop. A trimming loop is 
            a set of oriented curve segments (forming a closed curve) that
            define boundaries of a NURBS surface. You include these
            trimming loops in the definition of a NURBS 
            surface, between calls to "
           (code "gluBeginSurface")
           " and "
           (code "gluEndSurface")
           ". ")
     (para "
The definition for a NURBS surface can contain many
            trimming loops. For example, if you wrote a definition
            for a NURBS surface that resembled a rectangle with
            a hole punched out, the definition would contain two 
            trimming loops. One loop would define the outer edge
            of the rectangle; the other would define
            the hole punched out of the rectangle. The definitions
            of each of these trimming loops would be bracketed by a "
           (code "gluBeginTrim")
           "/"
           (code "gluEndTrim")
           " pair. ")
     (para "
The definition of a single closed trimming loop can consist
            of multiple curve segments, each described as a piecewise
            linear curve (see "
           (code "gluPwlCurve")
           ") or as a single NURBS
            curve (see "
           (code "gluNurbsCurve")
           "), or as a combination of 
            both in any order. The only library calls that can 
            appear in a trimming loop definition (between the calls
            to "
           (code "gluBeginTrim")
           " and "
           (code "gluEndTrim")
           ") are "
           (code "gluPwlCurve")
           " and "
           (code "gluNurbsCurve")
           ". ")
     (para "
The area of the NURBS surface that is displayed is the
            region in the domain to the left of the trimming curve
            as the curve parameter increases. Thus, the retained
            region of the NURBS surface is inside a 
            counterclockwise trimming loop and outside a clockwise
            trimming loop. For the rectangle mentioned earlier,
            the trimming loop for the outer edge of the rectangle runs
            counterclockwise, while the trimming loop for the punched-out hole 
            runs clockwise. ")
     (para "
If you use more than one curve to define a single trimming 
            loop, the curve segments must form a closed loop (that is,
            the endpoint of each curve must be the starting point of the
            next curve, and the endpoint of the final curve must
            be the starting point of the first curve). If the 
            endpoints of the curve are sufficiently close together
            but not exactly coincident, they will be coerced to match.
            If the endpoints are not sufficiently close, an error results
            (see "
           (code "gluNurbsCallback")
           "). ")
     (para "
If a trimming loop definition contains multiple curves,
            the direction of the curves must be consistent (that is, the
            inside must be to the left of all of the curves). Nested
            trimming loops are legal as long as the curve orientations
            alternate correctly.
            If trimming curves are self-intersecting,
            or intersect one another, an error results. ")
     (para "
If no trimming information is given
            for a NURBS surface, the entire surface is drawn. ")))

(define-gl-procedure
  gluBuild1DMipmapLevels
  "gluBuild1DMipmapLevels"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLint "
        (function "gluBuild1DMipmapLevels"))
      (paramdef "GLenum " (parameter "target"))
      (paramdef "GLint " (parameter "internalFormat"))
      (paramdef "GLsizei " (parameter "width"))
      (paramdef "GLenum " (parameter "format"))
      (paramdef "GLenum " (parameter "type"))
      (paramdef "GLint " (parameter "level"))
      (paramdef "GLint " (parameter "base"))
      (paramdef "GLint " (parameter "max"))
      (paramdef "const void * " (parameter "data"))))
  '(*fragment*
     (heading
       "builds a subset of one-dimensional mipmap levels")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "target")))
                   (para "
Specifies the target texture.  Must be "
                         (code "GLU_TEXTURE_1D")
                         ". "))
            (entry (% (heading (var "internalFormat")))
                   (para "
Requests the internal storage format of the texture image.  The most
                    current version of the SGI implementation of GLU does not check this
                    value for validity before passing it on to the underlying OpenGL
                    implementation.  A value that is not accepted by the OpenGL
                    implementation will lead to an OpenGL error.  The benefit of not
                    checking this value at the GLU level is that OpenGL extensions can add
                    new internal texture formats without requiring a revision of the GLU
                    implementation.  Older implementations of GLU check this value and
                    raise a GLU error if it is not 1, 2, 3, or 4 or one of the following
                    symbolic constants: "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_ALPHA4")
                         ", "
                         (code "GLU_ALPHA8")
                         ", "
                         (code "GLU_ALPHA12")
                         ", "
                         (code "GLU_ALPHA16")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", "
                         (code "GLU_LUMINANCE4")
                         ", "
                         (code "GLU_LUMINANCE8")
                         ", "
                         (code "GLU_LUMINANCE12")
                         ", "
                         (code "GLU_LUMINANCE16")
                         ", "
                         (code "GLU_LUMINANCE_ALPHA")
                         ", "
                         (code "GLU_LUMINANCE4_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE6_ALPHA2")
                         ", "
                         (code "GLU_LUMINANCE8_ALPHA8")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA12")
                         ", "
                         (code "GLU_LUMINANCE16_ALPHA16")
                         ", "
                         (code "GLU_INTENSITY")
                         ", "
                         (code "GLU_INTENSITY4")
                         ", "
                         (code "GLU_INTENSITY8")
                         ", "
                         (code "GLU_INTENSITY12")
                         ", "
                         (code "GLU_INTENSITY16")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_R3_G3_B2")
                         ", "
                         (code "GLU_RGB4")
                         ", "
                         (code "GLU_RGB5")
                         ", "
                         (code "GLU_RGB8")
                         ", "
                         (code "GLU_RGB10")
                         ", "
                         (code "GLU_RGB12")
                         ", "
                         (code "GLU_RGB16")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_RGBA2")
                         ", "
                         (code "GLU_RGBA4")
                         ", "
                         (code "GLU_RGB5_A1")
                         ", "
                         (code "GLU_RGBA8")
                         ", "
                         (code "GLU_RGB10_A2")
                         ", "
                         (code "GLU_RGBA12")
                         ", or "
                         (code "GLU_RGBA16")
                         ". "))
            (entry (% (heading (var "width")))
                   (para "
Specifies the width in pixels of the texture image. 
                    This should be a power of 2. "))
            (entry (% (heading (var "format")))
                   (para "
Specifies the format of the pixel data.
                    Must be one of: "
                         (code "GLU_COLOR_INDEX")
                         ", "
                         (code "GLU_DEPTH_COMPONENT")
                         ", "
                         (code "GLU_RED")
                         ", "
                         (code "GLU_GREEN")
                         ", "
                         (code "GLU_BLUE")
                         ", "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_BGR")
                         ", "
                         (code "GLU_BGRA")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", or "
                         (code "GLU_LUMINANCE_ALPHA")
                         ". "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the data type for "
                         (var "data")
                         ".
                    Must be one of: "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "level")))
                   (para "
Specifies the mipmap level of the image data. "))
            (entry (% (heading (var "base")))
                   (para "
Specifies the minimum mipmap level to pass to "
                         (code "glTexImage1D")
                         ". "))
            (entry (% (heading (var "max")))
                   (para "
Specifies the maximum mipmap level to pass to "
                         (code "glTexImage1D")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the image data in memory. ")))
     (heading "Description")
     (para (code "gluBuild1DMipmapLevels")
           " builds a subset of prefiltered one-dimensional texture maps of decreasing
            resolutions called a mipmap. This is used for the antialiasing of
            texture mapped primitives. ")
     (para "
A return value of zero indicates success, otherwise a GLU error code is
            returned (see "
           (code "gluErrorString")
           "). ")
     (para "
A series of mipmap levels from "
           (var "base")
           " to "
           (var "max")
           " is built by decimating "
           (var "data")
           " in half 
            until size "
           (math "1" "×" "1")
           "
is reached. At each level, each texel in the
            halved mipmap level is an average of the corresponding two texels in the larger
            mipmap level. "
           (code "glTexImage1D")
           " is called to load these mipmap levels from "
           (var "base")
           "
to "
           (var "max")
           ". If "
           (var "max")
           " is larger than the highest mipmap level for the
            texture of the specified size, then a GLU error code is returned (see "
           (code "gluErrorString")
           ") and nothing is loaded. ")
     (para "
For example, if "
           (var "level")
           " is 2 and "
           (var "width")
           " is 16, the
            following levels are possible: "
           (math "16" "×" "1")
           ", "
           (math "8" "×" "1")
           ", "
           (math "4" "×" "1")
           ", "
           (math "2" "×" "1")
           ", "
           (math "1" "×" "1")
           ".
            These correspond
            to levels 2 through 6 respectively.
            If "
           (var "base")
           " is 3 and "
           (var "max")
           " is 5, then only mipmap levels "
           (math "8" "×" "1")
           ", "
           (math "4" "×" "1")
           "
and "
           (math "2" "×" "1")
           "
are
            loaded. However, if "
           (var "max")
           " is 7, then an error is returned and nothing is
            loaded since "
           (var "max")
           " is larger than the highest mipmap level which is, in 
            this case, 6. ")
     (para "
The highest mipmap level can be derived from the formula "
           (math (var "log")
                 "_"
                 "2"
                 "\u2061"
                 "("
                 (var "width")
                 "×"
                 "2"
                 "^"
                 (var "level")
                 ","
                 ")")
           ". ")
     (para "
See the "
           (code "glTexImage1D")
           " reference page for a description of the
            acceptable values for "
           (var "type")
           " parameter. See the "
           (code "glDrawPixels")
           " reference page for a description of the acceptable values 
            for "
           (var "level")
           " parameter. ")
     (heading "Errors")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "level")
           " > "
           (var "base")
           ", "
           (var "base")
           " < 0, "
           (var "max")
           " < "
           (var "base")
           " or "
           (var "max")
           " is > the highest mipmap level for "
           (var "data")
           ". ")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "width")
           " is < 1. ")
     (para (code "GLU_INVALID_ENUM")
           " is returned if "
           (var "internalFormat")
           ", "
           (var "format")
           ", or "
           (var "type")
           " are not 
            legal. ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_BYTE_3_3_2")
           " or "
           (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_6_5")
           " or "
           (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4")
           " or "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_5_5_1")
           " or "
           (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_8_8_8_8")
           " or "
           (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_10_10_10_2")
           " or "
           (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")))

(define-gl-procedure
  gluBuild1DMipmaps
  "gluBuild1DMipmaps"
  (funcsynopsis
    (funcprototype
      (funcdef "GLint " (function "gluBuild1DMipmaps"))
      (paramdef "GLenum " (parameter "target"))
      (paramdef "GLint " (parameter "internalFormat"))
      (paramdef "GLsizei " (parameter "width"))
      (paramdef "GLenum " (parameter "format"))
      (paramdef "GLenum " (parameter "type"))
      (paramdef "const void * " (parameter "data"))))
  '(*fragment*
     (heading "builds a one-dimensional mipmap")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "target")))
                   (para "
Specifies the target texture.  Must be "
                         (code "GLU_TEXTURE_1D")
                         ". "))
            (entry (% (heading (var "internalFormat")))
                   (para "
Requests the internal storage format of the texture image.  The most
                    current version of the SGI implementation of GLU does not check this
                    value for validity before passing it on to the underlying OpenGL
                    implementation.  A value that is not accepted by the OpenGL
                    implementation will lead to an OpenGL error.  The benefit of not
                    checking this value at the GLU level is that OpenGL extensions can add
                    new internal texture formats without requiring a revision of the GLU
                    implementation.  Older implementations of GLU check this value and
                    raise a GLU error if it is not 1, 2, 3, or 4 or one of the following
                    symbolic constants: "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_ALPHA4")
                         ", "
                         (code "GLU_ALPHA8")
                         ", "
                         (code "GLU_ALPHA12")
                         ", "
                         (code "GLU_ALPHA16")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", "
                         (code "GLU_LUMINANCE4")
                         ", "
                         (code "GLU_LUMINANCE8")
                         ", "
                         (code "GLU_LUMINANCE12")
                         ", "
                         (code "GLU_LUMINANCE16")
                         ", "
                         (code "GLU_LUMINANCE_ALPHA")
                         ", "
                         (code "GLU_LUMINANCE4_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE6_ALPHA2")
                         ", "
                         (code "GLU_LUMINANCE8_ALPHA8")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA12")
                         ", "
                         (code "GLU_LUMINANCE16_ALPHA16")
                         ", "
                         (code "GLU_INTENSITY")
                         ", "
                         (code "GLU_INTENSITY4")
                         ", "
                         (code "GLU_INTENSITY8")
                         ", "
                         (code "GLU_INTENSITY12")
                         ", "
                         (code "GLU_INTENSITY16")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_R3_G3_B2")
                         ", "
                         (code "GLU_RGB4")
                         ", "
                         (code "GLU_RGB5")
                         ", "
                         (code "GLU_RGB8")
                         ", "
                         (code "GLU_RGB10")
                         ", "
                         (code "GLU_RGB12")
                         ", "
                         (code "GLU_RGB16")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_RGBA2")
                         ", "
                         (code "GLU_RGBA4")
                         ", "
                         (code "GLU_RGB5_A1")
                         ", "
                         (code "GLU_RGBA8")
                         ", "
                         (code "GLU_RGB10_A2")
                         ", "
                         (code "GLU_RGBA12")
                         ", or "
                         (code "GLU_RGBA16")
                         ". "))
            (entry (% (heading (var "width")))
                   (para "
Specifies the width, in pixels, of the texture image. "))
            (entry (% (heading (var "format")))
                   (para "
Specifies the format of the pixel data.
                    Must be one of "
                         (code "GLU_COLOR_INDEX")
                         ", "
                         (code "GLU_DEPTH_COMPONENT")
                         ", "
                         (code "GLU_RED")
                         ", "
                         (code "GLU_GREEN")
                         ", "
                         (code "GLU_BLUE")
                         ", "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_BGR")
                         ", "
                         (code "GLU_BGRA")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", or "
                         (code "GLU_LUMINANCE_ALPHA")
                         ". "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the data type for "
                         (var "data")
                         ".
                    Must be one of "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the image data in memory. ")))
     (heading "Description")
     (para (code "gluBuild1DMipmaps")
           " builds a series of prefiltered one-dimensional texture maps of decreasing
            resolutions called a mipmap. This is used for the antialiasing of
            texture mapped primitives. ")
     (para "
A return value of zero indicates success, otherwise a GLU error code is
            returned (see "
           (code "gluErrorString")
           "). ")
     (para "
Initially, the "
           (var "width")
           " of "
           (var "data")
           " is checked to see if it is
            a power of 2. If not, a copy of "
           (var "data")
           " is scaled up or down to the
            nearest power of 2. (If "
           (var "width")
           " is exactly between powers of 2, then
            the copy of "
           (var "data")
           " will scale upwards.)  This copy will be used for
            subsequent mipmapping operations described below. 
            For example, if "
           (var "width")
           " is 57, then a copy of "
           (var "data")
           "
will scale up to 64 before mipmapping
            takes place. ")
     (para "
Then, proxy textures (see "
           (code "glTexImage1D")
           ") are used to determine if
            the implementation can fit the requested texture. If not, "
           (var "width")
           " is
            continually halved until it fits. ")
     (para "
Next, a series of mipmap levels is built by decimating a copy of "
           (var "data")
           " in half
            until size "
           (math "1" "×" "1")
           "
is reached. At each level, each texel in the
            halved mipmap level is an average of the corresponding two texels in the larger
            mipmap level. ")
     (para (code "glTexImage1D")
           " is called to load each of these mipmap levels.
            Level 0 is a copy of "
           (var "data")
           ". 
            The highest level is "
           (math (var "log")
                 "_"
                 "2"
                 ","
                 "\u2061"
                 "("
                 (var "width")
                 ","
                 ")")
           ".
            For example, if "
           (var "width")
           " is 64 and the implementation can store a texture of
            this size, the following mipmap levels are
            built: "
           (math "64" "×" "1")
           ", "
           (math "32" "×" "1")
           ", "
           (math "16" "×" "1")
           ", "
           (math "8" "×" "1")
           ", "
           (math "4" "×" "1")
           ", "
           (math "2" "×" "1")
           ",
            and "
           (math "1" "×" "1")
           ".
            These correspond to 
            levels 0 through 6, respectively. ")
     (para "
See the "
           (code "glTexImage1D")
           " reference page for a description of the
            acceptable values for the "
           (var "type")
           " parameter. See the "
           (code "glDrawPixels")
           " reference page for a description of the acceptable values 
            for the "
           (var "data")
           " parameter. ")
     (heading "Errors")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "width")
           " is < 1. ")
     (para (code "GLU_INVALID_ENUM")
           " is returned if "
           (var "format")
           " or "
           (var "type")
           " are not legal. ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_BYTE_3_3_2")
           " or "
           (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_6_5")
           " or "
           (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4")
           " or "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_5_5_1")
           " or "
           (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_8_8_8_8")
           " or "
           (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_10_10_10_2")
           " or "
           (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")))

(define-gl-procedure
  gluBuild2DMipmapLevels
  "gluBuild2DMipmapLevels"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLint "
        (function "gluBuild2DMipmapLevels"))
      (paramdef "GLenum " (parameter "target"))
      (paramdef "GLint " (parameter "internalFormat"))
      (paramdef "GLsizei " (parameter "width"))
      (paramdef "GLsizei " (parameter "height"))
      (paramdef "GLenum " (parameter "format"))
      (paramdef "GLenum " (parameter "type"))
      (paramdef "GLint " (parameter "level"))
      (paramdef "GLint " (parameter "base"))
      (paramdef "GLint " (parameter "max"))
      (paramdef "const void * " (parameter "data"))))
  '(*fragment*
     (heading
       "builds a subset of two-dimensional mipmap levels")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "target")))
                   (para "
Specifies the target texture.  Must be "
                         (code "GLU_TEXTURE_2D")
                         ". "))
            (entry (% (heading (var "internalFormat")))
                   (para "
Requests the internal storage format of the texture image.  The most
                    current version of the SGI implementation of GLU does not check this
                    value for validity before passing it on to the underlying OpenGL
                    implementation.  A value that is not accepted by the OpenGL
                    implementation will lead to an OpenGL error.  The benefit of not
                    checking this value at the GLU level is that OpenGL extensions can add
                    new internal texture formats without requiring a revision of the GLU
                    implementation.  Older implementations of GLU check this value and
                    raise a GLU error if it is not 1, 2, 3, or 4 or one of the following
                    symbolic constants: "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_ALPHA4")
                         ", "
                         (code "GLU_ALPHA8")
                         ", "
                         (code "GLU_ALPHA12")
                         ", "
                         (code "GLU_ALPHA16")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", "
                         (code "GLU_LUMINANCE4")
                         ", "
                         (code "GLU_LUMINANCE8")
                         ", "
                         (code "GLU_LUMINANCE12")
                         ", "
                         (code "GLU_LUMINANCE16")
                         ", "
                         (code "GLU_LUMINANCE_ALPHA")
                         ", "
                         (code "GLU_LUMINANCE4_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE6_ALPHA2")
                         ", "
                         (code "GLU_LUMINANCE8_ALPHA8")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA12")
                         ", "
                         (code "GLU_LUMINANCE16_ALPHA16")
                         ", "
                         (code "GLU_INTENSITY")
                         ", "
                         (code "GLU_INTENSITY4")
                         ", "
                         (code "GLU_INTENSITY8")
                         ", "
                         (code "GLU_INTENSITY12")
                         ", "
                         (code "GLU_INTENSITY16")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_R3_G3_B2")
                         ", "
                         (code "GLU_RGB4")
                         ", "
                         (code "GLU_RGB5")
                         ", "
                         (code "GLU_RGB8")
                         ", "
                         (code "GLU_RGB10")
                         ", "
                         (code "GLU_RGB12")
                         ", "
                         (code "GLU_RGB16")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_RGBA2")
                         ", "
                         (code "GLU_RGBA4")
                         ", "
                         (code "GLU_RGB5_A1")
                         ", "
                         (code "GLU_RGBA8")
                         ", "
                         (code "GLU_RGB10_A2")
                         ", "
                         (code "GLU_RGBA12")
                         ", or "
                         (code "GLU_RGBA16")
                         ". "))
            (entry (% (heading (var "width")))
                   (itemx (var "height"))
                   (para "
Specifies the width and height, respectively, in pixels of the texture image. 
                    These should be a power of 2. "))
            (entry (% (heading (var "format")))
                   (para "
Specifies the format of the pixel data.
                    Must be one of "
                         (code "GLU_COLOR_INDEX")
                         ", "
                         (code "GLU_DEPTH_COMPONENT")
                         ", "
                         (code "GLU_RED")
                         ", "
                         (code "GLU_GREEN")
                         ", "
                         (code "GLU_BLUE")
                         ", "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_BGR")
                         ", "
                         (code "GLU_BGRA")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", or "
                         (code "GLU_LUMINANCE_ALPHA")
                         ". "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the data type for "
                         (var "data")
                         ".
                    Must be one of "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "level")))
                   (para "
Specifies the mipmap level of the image data. "))
            (entry (% (heading (var "base")))
                   (para "
Specifies the minimum mipmap level to pass to "
                         (code "glTexImage2D")
                         ". "))
            (entry (% (heading (var "max")))
                   (para "
Specifies the maximum mipmap level to pass to "
                         (code "glTexImage2D")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the image data in memory. ")))
     (heading "Description")
     (para (code "gluBuild2DMipmapLevels")
           " builds a subset of prefiltered two-dimensional texture maps of decreasing
            resolutions called a mipmap. This is used for the antialiasing of
            texture mapped primitives. ")
     (para "
A return value of zero indicates success, otherwise a GLU error code is
            returned (see "
           (code "gluErrorString")
           "). ")
     (para "
A series of mipmap levels from "
           (var "base")
           " to "
           (var "max")
           " is built by decimating "
           (var "data")
           " in half along
            both dimensions until size "
           (math "1" "×" "1")
           "
is reached. At each level, each texel in the
            halved mipmap level is an average of the corresponding four texels in the larger
            mipmap level. (In the case of rectangular images, the decimation will ultimately 
            reach an "
           (math (var "N") "×" "1")
           "
or "
           (math "1" "×" (var "N"))
           "
configuration. Here, two texels are
            averaged instead.) "
           (code "glTexImage2D")
           " is called to load these mipmap levels from "
           (var "base")
           "
to "
           (var "max")
           ". If "
           (var "max")
           " is larger than the highest mipmap level for the
            texture of the specified size, then a GLU error code is returned (see "
           (code "gluErrorString")
           ") and nothing is loaded. ")
     (para "
For example, if "
           (var "level")
           " is 2 and "
           (var "width")
           " is 16 and "
           (var "height")
           " is 8, the
            following levels are possible: "
           (math "16" "×" "8")
           ", "
           (math "8" "×" "4")
           ", "
           (math "4" "×" "2")
           ", "
           (math "2" "×" "1")
           ", "
           (math "1" "×" "1")
           ".
            These correspond to levels 2 through 6
            respectively.  If "
           (var "base")
           " is 3 and "
           (var "max")
           " is 5, then only mipmap levels "
           (math "8" "×" "4")
           ", "
           (math "4" "×" "2")
           ",
            and "
           (math "2" "×" "1")
           "
are loaded. However, if "
           (var "max")
           "
is 7, then an error is returned and nothing is loaded since "
           (var "max")
           " is
            larger than the highest mipmap level which is, in this case, 6. ")
     (para "
The highest mipmap level can be derived from the formula "
           (math (var "log")
                 "_"
                 "2"
                 "\u2061"
                 "("
                 (var "max")
                 "\u2061"
                 "("
                 (var "width")
                 ","
                 (var "height")
                 ")"
                 "×"
                 "2"
                 "^"
                 (var "level")
                 ","
                 ")")
           ". ")
     (para "
See the "
           (code "glTexImage1D")
           " reference page for a description of the
            acceptable values for "
           (var "format")
           " parameter. See the "
           (code "glDrawPixels")
           " reference page for a description of the acceptable values 
            for "
           (var "type")
           " parameter. ")
     (heading "Errors")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "level")
           " > "
           (var "base")
           ", "
           (var "base")
           " < 0, "
           (var "max")
           " < "
           (var "base")
           ", or "
           (var "max")
           " is > the highest mipmap level for "
           (var "data")
           ". ")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "width")
           " or "
           (var "height")
           " is < 1. ")
     (para (code "GLU_INVALID_ENUM")
           " is returned if "
           (var "internalFormat")
           ", "
           (var "format")
           ", or "
           (var "type")
           " is not 
            legal. ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_BYTE_3_3_2")
           " or "
           (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_6_5")
           " or "
           (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4")
           " or "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_5_5_1")
           " or "
           (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_8_8_8_8")
           " or "
           (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_10_10_10_2")
           " or "
           (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")))

(define-gl-procedure
  gluBuild2DMipmaps
  "gluBuild2DMipmaps"
  (funcsynopsis
    (funcprototype
      (funcdef "GLint " (function "gluBuild2DMipmaps"))
      (paramdef "GLenum " (parameter "target"))
      (paramdef "GLint " (parameter "internalFormat"))
      (paramdef "GLsizei " (parameter "width"))
      (paramdef "GLsizei " (parameter "height"))
      (paramdef "GLenum " (parameter "format"))
      (paramdef "GLenum " (parameter "type"))
      (paramdef "const void * " (parameter "data"))))
  '(*fragment*
     (heading "builds a two-dimensional mipmap")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "target")))
                   (para "
Specifies the target texture.  Must be "
                         (code "GLU_TEXTURE_2D")
                         ". "))
            (entry (% (heading (var "internalFormat")))
                   (para "
Requests the internal storage format of the texture image.  The most
                    current version of the SGI implementation of GLU does not check this
                    value for validity before passing it on to the underlying OpenGL
                    implementation.  A value that is not accepted by the OpenGL
                    implementation will lead to an OpenGL error.  The benefit of not
                    checking this value at the GLU level is that OpenGL extensions can add
                    new internal texture formats without requiring a revision of the GLU
                    implementation.  Older implementations of GLU check this value and
                    raise a GLU error if it is not 1, 2, 3, or 4 or one of the following
                    symbolic constants: "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_ALPHA4")
                         ", "
                         (code "GLU_ALPHA8")
                         ", "
                         (code "GLU_ALPHA12")
                         ", "
                         (code "GLU_ALPHA16")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", "
                         (code "GLU_LUMINANCE4")
                         ", "
                         (code "GLU_LUMINANCE8")
                         ", "
                         (code "GLU_LUMINANCE12")
                         ", "
                         (code "GLU_LUMINANCE16")
                         ", "
                         (code "GLU_LUMINANCE_ALPHA")
                         ", "
                         (code "GLU_LUMINANCE4_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE6_ALPHA2")
                         ", "
                         (code "GLU_LUMINANCE8_ALPHA8")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA12")
                         ", "
                         (code "GLU_LUMINANCE16_ALPHA16")
                         ", "
                         (code "GLU_INTENSITY")
                         ", "
                         (code "GLU_INTENSITY4")
                         ", "
                         (code "GLU_INTENSITY8")
                         ", "
                         (code "GLU_INTENSITY12")
                         ", "
                         (code "GLU_INTENSITY16")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_R3_G3_B2")
                         ", "
                         (code "GLU_RGB4")
                         ", "
                         (code "GLU_RGB5")
                         ", "
                         (code "GLU_RGB8")
                         ", "
                         (code "GLU_RGB10")
                         ", "
                         (code "GLU_RGB12")
                         ", "
                         (code "GLU_RGB16")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_RGBA2")
                         ", "
                         (code "GLU_RGBA4")
                         ", "
                         (code "GLU_RGB5_A1")
                         ", "
                         (code "GLU_RGBA8")
                         ", "
                         (code "GLU_RGB10_A2")
                         ", "
                         (code "GLU_RGBA12")
                         ", or "
                         (code "GLU_RGBA16")
                         ". "))
            (entry (% (heading (var "width")))
                   (itemx (var "height"))
                   (para "
Specifies in pixels the width and height, respectively, of the texture image. "))
            (entry (% (heading (var "format")))
                   (para "
Specifies the format of the pixel data.
                    Must be one of "
                         (code "GLU_COLOR_INDEX")
                         ", "
                         (code "GLU_DEPTH_COMPONENT")
                         ", "
                         (code "GLU_RED")
                         ", "
                         (code "GLU_GREEN")
                         ", "
                         (code "GLU_BLUE")
                         ", "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_BGR")
                         ", "
                         (code "GLU_BGRA")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", or "
                         (code "GLU_LUMINANCE_ALPHA")
                         ". "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the data type for "
                         (var "data")
                         ".
                    Must be one of "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the image data in memory. ")))
     (heading "Description")
     (para (code "gluBuild2DMipmaps")
           " builds a series of prefiltered two-dimensional texture maps of decreasing
            resolutions called a mipmap. This is used for the antialiasing of
            texture-mapped primitives. ")
     (para "
A return value of zero indicates success, otherwise a GLU error code is
            returned (see "
           (code "gluErrorString")
           "). ")
     (para "
Initially, the "
           (var "width")
           " and "
           (var "height")
           " of "
           (var "data")
           " are checked to see if they
            are a power of 2. If not, a copy of "
           (var "data")
           " (not "
           (var "data")
           "), is scaled up
            or down to the nearest power of 2. This copy will be used for subsequent
            mipmapping operations described below. (If "
           (var "width")
           " or "
           (var "height")
           " is exactly
            between powers of 2, then the copy of "
           (var "data")
           " will scale upwards.)  For
            example, if "
           (var "width")
           " is 57 and "
           (var "height")
           " is 23, then a copy of "
           (var "data")
           " will
            scale up to 64 in "
           (var "width")
           " and down to 16 in depth, before mipmapping takes
            place. ")
     (para "
Then, proxy textures (see "
           (code "glTexImage2D")
           ") are used to determine if
            the implementation can fit the requested texture. If not, both dimensions
            are continually halved until it fits. (If the OpenGL version is \\(<= 1.0,
            both maximum texture dimensions are clamped to the value returned
            by "
           (code "glGetIntegerv")
           " with the argument "
           (code "GLU_MAX_TEXTURE_SIZE")
           ".) ")
     (para "
Next, a series of mipmap levels is built by decimating a copy of "
           (var "data")
           "
in half along both dimensions until size "
           (math "1" "×" "1")
           "
is reached. At
            each level,
            each texel in the halved mipmap level is an average of the corresponding
            four texels in the larger mipmap level. (In the case of rectangular
            images, the decimation will ultimately reach an "
           (math (var "N") "×" "1")
           "
or "
           (math "1" "×" (var "N"))
           "
configuration. Here, two texels are averaged instead.) ")
     (para (code "glTexImage2D")
           " is called to load each of these mipmap levels.
            Level 0 is a copy of "
           (var "data")
           ".  The highest level is "
           (math (var "log")
                 "_"
                 "2"
                 ","
                 "\u2061"
                 "("
                 (var "max")
                 "\u2061"
                 "("
                 (var "width")
                 ","
                 (var "height")
                 ")"
                 ","
                 ")")
           ".
            For example,
            if "
           (var "width")
           " is 64 and "
           (var "height")
           " is 16
            and the implementation can store a texture of this size, the following
            mipmap levels are built: "
           (math "64" "×" "16")
           ", "
           (math "32" "×" "8")
           ", "
           (math "16" "×" "4")
           ", "
           (math "8" "×" "2")
           ", "
           (math "4" "×" "1")
           ", "
           (math "2" "×" "1")
           ",
            and "
           (math "1" "×" "1")
           "
These
            correspond to levels 0 through 6, respectively. ")
     (para "
See the "
           (code "glTexImage1D")
           " reference page for a description of the
            acceptable values for "
           (var "format")
           " parameter. See the "
           (code "glDrawPixels")
           " reference page for a description of the acceptable values 
            for "
           (var "type")
           " parameter. ")
     (heading "Errors")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "width")
           " or "
           (var "height")
           " is < 1. ")
     (para (code "GLU_INVALID_ENUM")
           " is returned if "
           (var "internalFormat")
           ", "
           (var "format")
           ", or "
           (var "type")
           " is not 
            legal. ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_BYTE_3_3_2")
           " or "
           (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_6_5")
           " or "
           (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4")
           " or "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_5_5_1")
           " or "
           (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_8_8_8_8")
           " or "
           (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_10_10_10_2")
           " or "
           (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")))

(define-gl-procedure
  gluBuild3DMipmapLevels
  "gluBuild3DMipmapLevels"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLint "
        (function "gluBuild3DMipmapLevels"))
      (paramdef "GLenum " (parameter "target"))
      (paramdef "GLint " (parameter "internalFormat"))
      (paramdef "GLsizei " (parameter "width"))
      (paramdef "GLsizei " (parameter "height"))
      (paramdef "GLsizei " (parameter "depth"))
      (paramdef "GLenum " (parameter "format"))
      (paramdef "GLenum " (parameter "type"))
      (paramdef "GLint " (parameter "level"))
      (paramdef "GLint " (parameter "base"))
      (paramdef "GLint " (parameter "max"))
      (paramdef "const void * " (parameter "data"))))
  '(*fragment*
     (heading
       "builds a subset of three-dimensional mipmap levels")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "target")))
                   (para "
Specifies the target texture.  Must be "
                         (code "GLU_TEXTURE_3D")
                         ". "))
            (entry (% (heading (var "internalFormat")))
                   (para "
Requests the internal storage format of the texture image.  The most
                    current version of the SGI implementation of GLU does not check this
                    value for validity before passing it on to the underlying OpenGL
                    implementation.  A value that is not accepted by the OpenGL
                    implementation will lead to an OpenGL error.  The benefit of not
                    checking this value at the GLU level is that OpenGL extensions can add
                    new internal texture formats without requiring a revision of the GLU
                    implementation.  Older implementations of GLU check this value and
                    raise a GLU error if it is not 1, 2, 3, or 4 or one of the following
                    symbolic constants: "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_ALPHA4")
                         ", "
                         (code "GLU_ALPHA8")
                         ", "
                         (code "GLU_ALPHA12")
                         ", "
                         (code "GLU_ALPHA16")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", "
                         (code "GLU_LUMINANCE4")
                         ", "
                         (code "GLU_LUMINANCE8")
                         ", "
                         (code "GLU_LUMINANCE12")
                         ", "
                         (code "GLU_LUMINANCE16")
                         ", "
                         (code "GLU_LUMINANCE_ALPHA")
                         ", "
                         (code "GLU_LUMINANCE4_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE6_ALPHA2")
                         ", "
                         (code "GLU_LUMINANCE8_ALPHA8")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA12")
                         ", "
                         (code "GLU_LUMINANCE16_ALPHA16")
                         ", "
                         (code "GLU_INTENSITY")
                         ", "
                         (code "GLU_INTENSITY4")
                         ", "
                         (code "GLU_INTENSITY8")
                         ", "
                         (code "GLU_INTENSITY12")
                         ", "
                         (code "GLU_INTENSITY16")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_R3_G3_B2")
                         ", "
                         (code "GLU_RGB4")
                         ", "
                         (code "GLU_RGB5")
                         ", "
                         (code "GLU_RGB8")
                         ", "
                         (code "GLU_RGB10")
                         ", "
                         (code "GLU_RGB12")
                         ", "
                         (code "GLU_RGB16")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_RGBA2")
                         ", "
                         (code "GLU_RGBA4")
                         ", "
                         (code "GLU_RGB5_A1")
                         ", "
                         (code "GLU_RGBA8")
                         ", "
                         (code "GLU_RGB10_A2")
                         ", "
                         (code "GLU_RGBA12")
                         ", or "
                         (code "GLU_RGBA16")
                         ". "))
            (entry (% (heading (var "width")))
                   (itemx (var "height"))
                   (itemx (var "depth"))
                   (para "
Specifies in pixels the width, height and depth respectively, of the texture
                    image. These should be a power of 2. "))
            (entry (% (heading (var "format")))
                   (para "
Specifies the format of the pixel data.
                    Must be one of "
                         (code "GLU_COLOR_INDEX")
                         ", "
                         (code "GLU_DEPTH_COMPONENT")
                         ", "
                         (code "GLU_RED")
                         ", "
                         (code "GLU_GREEN")
                         ", "
                         (code "GLU_BLUE")
                         ", "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_BGR")
                         ", "
                         (code "GLU_BGRA")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", or "
                         (code "GLU_LUMINANCE_ALPHA")
                         ". "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the data type for "
                         (var "data")
                         ".
                    Must be one of "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "level")))
                   (para "
Specifies the mipmap level of the image data. "))
            (entry (% (heading (var "base")))
                   (para "
Specifies the minimum mipmap level to pass to "
                         (code "glTexImage3D")
                         ". "))
            (entry (% (heading (var "max")))
                   (para "
Specifies the maximum mipmap level to pass to "
                         (code "glTexImage3D")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the image data in memory. ")))
     (heading "Description")
     (para (code "gluBuild3DMipmapLevels")
           " builds a subset of prefiltered three-dimensional texture maps of
            decreasing resolutions called a mipmap. This is used for the antialiasing of
            texture mapped primitives. ")
     (para "
A return value of zero indicates success, otherwise a GLU error code is
            returned (see "
           (code "gluErrorString")
           "). ")
     (para "
A series of mipmap levels from "
           (var "base")
           " to "
           (var "max")
           " is built by
            decimating "
           (var "data")
           " in half along both dimensions until size "
           (math "1" "×" "1" "×" "1")
           "
is reached. At each level, each texel in the halved mipmap
            level is an average of the corresponding eight texels in the larger
            mipmap level. (If exactly one of the dimensions is 1, four texels are
            averaged.  If exactly two of the dimensions are 1, two texels are
            averaged.) "
           (code "glTexImage3D")
           " is called to load these mipmap levels
            from "
           (var "base")
           " to "
           (var "max")
           ". If "
           (var "max")
           " is larger than the highest mipmap
            level for the texture of the specified size, then a GLU error code is
            returned (see "
           (code "gluErrorString")
           ") and nothing is loaded. ")
     (para "
For example, if "
           (var "level")
           " is 2 and "
           (var "width")
           " is 16, "
           (var "height")
           " is 8 and "
           (var "depth")
           "
is 4, the following levels are possible: "
           (math "16" "×" "8" "×" "4")
           ", "
           (math "8" "×" "4" "×" "2")
           ", "
           (math "4" "×" "2" "×" "1")
           ", "
           (math "2" "×" "1" "×" "1")
           ", "
           (math "1" "×" "1" "×" "1")
           ".
            These correspond to levels 2 through 6 respectively.  If "
           (var "base")
           " is
            3 and "
           (var "max")
           " is 5, then only mipmap levels "
           (math "8" "×" "4" "×" "2")
           ", "
           (math "4" "×" "2" "×" "1")
           ",
            and "
           (math "2" "×" "1" "×" "1")
           "
are loaded. However, if "
           (var "max")
           " is 7, then an error is returned and nothing is loaded, since "
           (var "max")
           " is larger than the highest mipmap level which is, in this case,
            6. ")
     (para "
The highest mipmap level can be derived from the formula "
           (math (var "log")
                 "_"
                 "2"
                 "\u2061"
                 "("
                 (var "max")
                 "\u2061"
                 "("
                 (var "width")
                 ","
                 (var "height")
                 (var "depth")
                 ")"
                 "×"
                 "2"
                 "^"
                 (var "level")
                 ","
                 ")")
           ". ")
     (para "
See the "
           (code "glTexImage1D")
           " reference page for a description of the
            acceptable values for "
           (var "format")
           " parameter. See the "
           (code "glDrawPixels")
           " reference page for a description of the acceptable values 
            for "
           (var "type")
           " parameter. ")
     (heading "Errors")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "level")
           " > "
           (var "base")
           ", "
           (var "base")
           " < 0, "
           (var "max")
           " < "
           (var "base")
           ", or "
           (var "max")
           " is > the highest mipmap level for "
           (var "data")
           ". ")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "width")
           ", "
           (var "height")
           ", or "
           (var "depth")
           " is < 1. ")
     (para (code "GLU_INVALID_ENUM")
           " is returned if "
           (var "internalFormat")
           ", "
           (var "format")
           ", or "
           (var "type")
           " is not 
            legal. ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_BYTE_3_3_2")
           " or "
           (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_6_5")
           " or "
           (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4")
           " or "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_5_5_1")
           " or "
           (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_8_8_8_8")
           " or "
           (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_10_10_10_2")
           " or "
           (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")))

(define-gl-procedure
  gluBuild3DMipmaps
  "gluBuild3DMipmaps"
  (funcsynopsis
    (funcprototype
      (funcdef "GLint " (function "gluBuild3DMipmaps"))
      (paramdef "GLenum " (parameter "target"))
      (paramdef "GLint " (parameter "internalFormat"))
      (paramdef "GLsizei " (parameter "width"))
      (paramdef "GLsizei " (parameter "height"))
      (paramdef "GLsizei " (parameter "depth"))
      (paramdef "GLenum " (parameter "format"))
      (paramdef "GLenum " (parameter "type"))
      (paramdef "const void * " (parameter "data"))))
  '(*fragment*
     (heading "builds a three-dimensional mipmap")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "target")))
                   (para "
Specifies the target texture.  Must be "
                         (code "GLU_TEXTURE_3D")
                         ". "))
            (entry (% (heading (var "internalFormat")))
                   (para "
Requests the internal storage format of the texture image.  The most
                    current version of the SGI implementation of GLU does not check this
                    value for validity before passing it on to the underlying OpenGL
                    implementation.  A value that is not accepted by the OpenGL
                    implementation will lead to an OpenGL error.  The benefit of not
                    checking this value at the GLU level is that OpenGL extensions can add
                    new internal texture formats without requiring a revision of the GLU
                    implementation.  Older implementations of GLU check this value and
                    raise a GLU error if it is not 1, 2, 3, or 4 or one of the following
                    symbolic constants: "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_ALPHA4")
                         ", "
                         (code "GLU_ALPHA8")
                         ", "
                         (code "GLU_ALPHA12")
                         ", "
                         (code "GLU_ALPHA16")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", "
                         (code "GLU_LUMINANCE4")
                         ", "
                         (code "GLU_LUMINANCE8")
                         ", "
                         (code "GLU_LUMINANCE12")
                         ", "
                         (code "GLU_LUMINANCE16")
                         ", "
                         (code "GLU_LUMINANCE_ALPHA")
                         ", "
                         (code "GLU_LUMINANCE4_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE6_ALPHA2")
                         ", "
                         (code "GLU_LUMINANCE8_ALPHA8")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA4")
                         ", "
                         (code "GLU_LUMINANCE12_ALPHA12")
                         ", "
                         (code "GLU_LUMINANCE16_ALPHA16")
                         ", "
                         (code "GLU_INTENSITY")
                         ", "
                         (code "GLU_INTENSITY4")
                         ", "
                         (code "GLU_INTENSITY8")
                         ", "
                         (code "GLU_INTENSITY12")
                         ", "
                         (code "GLU_INTENSITY16")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_R3_G3_B2")
                         ", "
                         (code "GLU_RGB4")
                         ", "
                         (code "GLU_RGB5")
                         ", "
                         (code "GLU_RGB8")
                         ", "
                         (code "GLU_RGB10")
                         ", "
                         (code "GLU_RGB12")
                         ", "
                         (code "GLU_RGB16")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_RGBA2")
                         ", "
                         (code "GLU_RGBA4")
                         ", "
                         (code "GLU_RGB5_A1")
                         ", "
                         (code "GLU_RGBA8")
                         ", "
                         (code "GLU_RGB10_A2")
                         ", "
                         (code "GLU_RGBA12")
                         ", or "
                         (code "GLU_RGBA16")
                         ". "))
            (entry (% (heading (var "width")))
                   (itemx (var "height"))
                   (itemx (var "depth"))
                   (para "
Specifies in pixels the width, height and depth respectively, in pixels
                    of the texture image. "))
            (entry (% (heading (var "format")))
                   (para "
Specifies the format of the pixel data.
                    Must be one of "
                         (code "GLU_COLOR_INDEX")
                         ", "
                         (code "GLU_DEPTH_COMPONENT")
                         ", "
                         (code "GLU_RED")
                         ", "
                         (code "GLU_GREEN")
                         ", "
                         (code "GLU_BLUE")
                         ", "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_BGR")
                         ", "
                         (code "GLU_BGRA")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", or "
                         (code "GLU_LUMINANCE_ALPHA")
                         ". "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the data type for "
                         (var "data")
                         ".
                    Must be one of: "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the image data in memory. ")))
     (heading "Description")
     (para (code "gluBuild3DMipmaps")
           " builds a series of prefiltered three-dimensional texture maps of
            decreasing resolutions called a mipmap. This is used for the antialiasing of
            texture-mapped primitives. ")
     (para "
A return value of zero indicates success, otherwise a GLU error code is
            returned (see "
           (code "gluErrorString")
           "). ")
     (para "
Initially, the "
           (var "width")
           ", "
           (var "height")
           " and "
           (var "depth")
           " of "
           (var "data")
           " are checked to
            see if they are a power of 2. If not, a copy of "
           (var "data")
           " is made and
            scaled up or down to the nearest power of 2. (If "
           (var "width")
           ", "
           (var "height")
           ", or "
           (var "depth")
           " is exactly between powers of 2, then the copy of "
           (var "data")
           " will
            scale upwards.) This copy will be used for subsequent mipmapping
            operations described below.  For example, if "
           (var "width")
           " is 57, "
           (var "height")
           " is
            23, and "
           (var "depth")
           " is 24, then a copy of "
           (var "data")
           " will scale up to 64 in
            width, down to 16 in height, and up to 32 in depth before mipmapping
            takes place. ")
     (para "
Then, proxy textures (see "
           (code "glTexImage3D")
           ") are used to determine if
            the implementation can fit the requested texture. If not, all three dimensions
            are continually halved until it fits. ")
     (para "
Next, a series of mipmap levels is built by decimating a copy of "
           (var "data")
           "
in half along all three dimensions until size "
           (math "1" "×" "1" "×" "1")
           "
is
            reached. At each level, each texel in the halved mipmap level is an
            average of the corresponding eight texels in the larger mipmap
            level. (If exactly one of the dimensions is 1, four texels are averaged.
            If exactly two of the dimensions are 1, two texels are averaged.) ")
     (para (code "glTexImage3D")
           " is called to load each of these mipmap levels.
            Level 0 is a copy of "
           (var "data")
           ".  The highest level is "
           (math (var "log")
                 "_"
                 "2"
                 ","
                 "\u2061"
                 "("
                 (var "max")
                 "\u2061"
                 "("
                 (var "width")
                 ","
                 (var "height")
                 (var "depth")
                 ")"
                 ","
                 ")")
           ".
            For example, if "
           (var "width")
           " is 64, "
           (var "height")
           " is
            16, and "
           (var "depth")
           " is 32, and the implementation can store a texture of this
            size, the following mipmap levels are built: "
           (math "64" "×" "16" "×" "32")
           ", "
           (math "32" "×" "8" "×" "16")
           ", "
           (math "16" "×" "4" "×" "8")
           ", "
           (math "8" "×" "2" "×" "4")
           ", "
           (math "4" "×" "1" "×" "2")
           ", "
           (math "2" "×" "1" "×" "1")
           ",
            and "
           (math "1" "×" "1" "×" "1")
           ".
            These correspond
            to levels 0 through 6, respectively. ")
     (para "
See the "
           (code "glTexImage1D")
           " reference page for a description of the
            acceptable values for "
           (var "format")
           " parameter. See the "
           (code "glDrawPixels")
           " reference page for a description of the acceptable values 
            for "
           (var "type")
           " parameter. ")
     (heading "Errors")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "width")
           ", "
           (var "height")
           ", or "
           (var "depth")
           " is < 1. ")
     (para (code "GLU_INVALID_ENUM")
           " is returned if "
           (var "internalFormat")
           ", "
           (var "format")
           ", or "
           (var "type")
           " is not 
            legal. ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_BYTE_3_3_2")
           " or "
           (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_6_5")
           " or "
           (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
           "
and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4")
           " or "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_5_5_1")
           " or "
           (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_8_8_8_8")
           " or "
           (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "type")
           " is "
           (code "GLU_UNSIGNED_INT_10_10_10_2")
           " or "
           (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")))

(define-gl-procedure
  gluCheckExtension
  "gluCheckExtension"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLboolean "
        (function "gluCheckExtension"))
      (paramdef
        "const GLubyte * "
        (parameter "extName"))
      (paramdef
        "const GLubyte * "
        (parameter "extString"))))
  '(*fragment*
     (heading
       "determines if an extension name is supported")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "extName")))
                   (para "
Specifies an extension name. "))
            (entry (% (heading (var "extString")))
                   (para "
Specifies a space-separated list of extension names supported. ")))
     (heading "Description")
     (para (code "gluCheckExtension")
           " returns "
           (code "GLU_TRUE")
           " if "
           (var "extName")
           " is supported otherwise "
           (code "GLU_FALSE")
           " is returned. ")
     (para "
This is used to check for the presence for OpenGL, GLU, or GLX extension names
            by passing the extension strings returned by "
           (code "glGetString")
           ", "
           (code "gluGetString")
           ", "
           (code "glXGetClientString")
           ", "
           (code "glXQueryExtensionsString")
           ", or "
           (code "glXQueryServerString")
           ",
            respectively, as "
           (var "extString")
           ". ")))

(define-gl-procedure
  gluCylinder
  "gluCylinder"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluCylinder"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLdouble " (parameter "base"))
      (paramdef "GLdouble " (parameter "top"))
      (paramdef "GLdouble " (parameter "height"))
      (paramdef "GLint " (parameter "slices"))
      (paramdef "GLint " (parameter "stacks"))))
  '(*fragment*
     (heading "draw a cylinder")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "base")))
                   (para "
Specifies the radius of the cylinder at "
                         (var "z")
                         " = 0. "))
            (entry (% (heading (var "top")))
                   (para "
Specifies the radius of the cylinder at "
                         (var "z")
                         " = "
                         (var "height")
                         ". "))
            (entry (% (heading (var "height")))
                   (para "
Specifies the height of the cylinder. "))
            (entry (% (heading (var "slices")))
                   (para "
Specifies the number of subdivisions around the "
                         (var "z")
                         " axis. "))
            (entry (% (heading (var "stacks")))
                   (para "
Specifies the number of subdivisions along the "
                         (var "z")
                         " axis. ")))
     (heading "Description")
     (para (code "gluCylinder")
           " draws a cylinder oriented along the "
           (var "z")
           " axis. The base of the cylinder
            is placed at "
           (var "z")
           " = 0 and the top at "
           (math (var "z") "=" (var "height"))
           ".
            Like a sphere,
            a cylinder is subdivided around the "
           (var "z")
           " axis into slices and along the "
           (var "z")
           " axis into stacks. ")
     (para "
Note that if "
           (var "top")
           " is set to 0.0, this routine generates a cone. ")
     (para "
If the orientation is set to "
           (code "GLU_OUTSIDE")
           " (with "
           (code "gluQuadricOrientation")
           "), then any generated normals
            point away from the "
           (var "z")
           " axis. Otherwise, they point toward the "
           (var "z")
           " axis. ")
     (para "
If texturing is turned on (with "
           (code "gluQuadricTexture")
           "), then texture 
            coordinates are generated so that "
           (var "t")
           " ranges linearly from 0.0 
            at "
           (var "z")
           " = 0 to 1.0 at "
           (var "z")
           " = "
           (var "height")
           ", and "
           (var "s")
           " ranges from 0.0 at the +"
           (var "y")
           " axis, to 0.25 at the +"
           (var "x")
           " axis, 
            to 0.5 at the -"
           (var "y")
           " axis, to 0.75 at the \\-"
           (var "x")
           " axis, 
            and back to 1.0 at the +"
           (var "y")
           " axis. ")))

(define-gl-procedure
  gluDeleteNurbsRenderer
  "gluDeleteNurbsRenderer"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluDeleteNurbsRenderer"))
      (paramdef "GLUnurbs* " (parameter "nurb"))))
  '(*fragment*
     (heading "destroy a NURBS object")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object to be destroyed. ")))
     (heading "Description")
     (para (code "gluDeleteNurbsRenderer")
           " destroys the NURBS object (which was created with "
           (code "gluNewNurbsRenderer")
           ") and frees any memory it uses.
            Once "
           (code "gluDeleteNurbsRenderer")
           " has been called, "
           (var "nurb")
           " cannot be used again. ")))

(define-gl-procedure
  gluDeleteQuadric
  "gluDeleteQuadric"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluDeleteQuadric"))
      (paramdef "GLUquadric* " (parameter "quad"))))
  '(*fragment*
     (heading "destroy a quadrics object")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object to be destroyed. ")))
     (heading "Description")
     (para (code "gluDeleteQuadric")
           " destroys the quadrics object (created with "
           (code "gluNewQuadric")
           ")
            and frees any memory it uses. 
            Once "
           (code "gluDeleteQuadric")
           " has been called, "
           (var "quad")
           " cannot be used again. ")))

(define-gl-procedure
  gluDeleteTess
  "gluDeleteTess"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluDeleteTess"))
      (paramdef "GLUtesselator* " (parameter "tess"))))
  '(*fragment*
     (heading "destroy a tessellation object")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object to destroy. ")))
     (heading "Description")
     (para (code "gluDeleteTess")
           " destroys the indicated tessellation object (which was created
            with "
           (code "gluNewTess")
           ") and frees any memory that it used. ")))

(define-gl-procedure
  gluDisk
  "gluDisk"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluDisk"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLdouble " (parameter "inner"))
      (paramdef "GLdouble " (parameter "outer"))
      (paramdef "GLint " (parameter "slices"))
      (paramdef "GLint " (parameter "loops"))))
  '(*fragment*
     (heading "draw a disk")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "inner")))
                   (para "
Specifies the inner radius of the disk (may be 0). "))
            (entry (% (heading (var "outer")))
                   (para "
Specifies the outer radius of the disk. "))
            (entry (% (heading (var "slices")))
                   (para "
Specifies the number of subdivisions around the "
                         (var "z")
                         " axis. "))
            (entry (% (heading (var "loops")))
                   (para "
Specifies the number of concentric rings about the origin into which
                    the disk is subdivided. ")))
     (heading "Description")
     (para (code "gluDisk")
           " renders a disk on the "
           (var "z")
           " = 0 plane. The disk has a radius of "
           (var "outer")
           " and contains a concentric circular hole with a radius 
            of "
           (var "inner")
           ". If "
           (var "inner")
           " is 0, then no hole is generated. The disk is
            subdivided around the "
           (var "z")
           " axis into slices (like pizza slices) and also
            about the "
           (var "z")
           " axis into rings 
            (as specified by "
           (var "slices")
           " and "
           (var "loops")
           ", respectively). ")
     (para "
With respect to orientation, the +"
           (var "z")
           " side of the disk is considered to be 
            ``outside'' (see "
           (code "gluQuadricOrientation")
           ").
            This means that if the
            orientation is set to "
           (code "GLU_OUTSIDE")
           ", then any normals generated 
            point along the +"
           (var "z")
           " axis. Otherwise, they point along the \\-"
           (var "z")
           " axis. ")
     (para "
If texturing has been turned on (with "
           (code "gluQuadricTexture")
           "), 
            texture coordinates are generated
            linearly such that where "
           (math (var "r") "=" (var "outer"))
           ",
            the value at ("
           (var "r")
           ", 0, 0) is 
            (1, 0.5), at (0, "
           (var "r")
           ", 0) it is (0.5, 1), at (\\-"
           (var "r")
           ", 0, 0) 
            it is (0, 0.5), and 
            at (0, \\-"
           (var "r")
           ", 0) it is (0.5, 0). ")))

(define-gl-procedure
  gluErrorString
  "gluErrorString"
  (funcsynopsis
    (funcprototype
      (funcdef
        "const GLubyte * "
        (function "gluErrorString"))
      (paramdef "GLenum " (parameter "error"))))
  '(*fragment*
     (heading
       "produce an error string from a GL or GLU error code")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "error")))
                   (para "
Specifies a GL or GLU error code. ")))
     (heading "Description")
     (para (code "gluErrorString")
           " produces an error string from a GL or GLU error code. The string
            is in ISO Latin 1 format. For example, "
           (code "gluErrorString")
           "("
           (code "GLU_OUT_OF_MEMORY")
           ") returns the string "
           (var "out of memory")
           ". ")
     (para "
The standard GLU error codes are "
           (code "GLU_INVALID_ENUM")
           ", "
           (code "GLU_INVALID_VALUE")
           ",
            and "
           (code "GLU_OUT_OF_MEMORY")
           ".
            Certain other GLU functions can return specialized error codes
            through callbacks.
            See the "
           (code "glGetError")
           " reference page for the list of 
            GL error codes. ")
     (heading "Errors")
     (para (code "NULL")
           " is returned if "
           (var "error")
           " is not a valid GL or GLU error code. ")))

(define-gl-procedure
  gluGetNurbsProperty
  "gluGetNurbsProperty"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluGetNurbsProperty"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLenum " (parameter "property"))
      (paramdef "GLfloat* " (parameter "data"))))
  '(*fragment*
     (heading "get a NURBS property")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "property")))
                   (para "
Specifies the property whose value is to be fetched. Valid values are "
                         (code "GLU_CULLING")
                         ", "
                         (code "GLU_SAMPLING_TOLERANCE")
                         ", "
                         (code "GLU_DISPLAY_MODE")
                         ", "
                         (code "GLU_AUTO_LOAD_MATRIX")
                         ", "
                         (code "GLU_PARAMETRIC_TOLERANCE")
                         ", "
                         (code "GLU_SAMPLING_METHOD")
                         ", "
                         (code "GLU_U_STEP")
                         ", "
                         (code "GLU_V_STEP")
                         ", and "
                         (code "GLU_NURBS_MODE")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the location into which the value of the 
                    named property is written. ")))
     (heading "Description")
     (para (code "gluGetNurbsProperty")
           " retrieves properties stored in a NURBS object. These
            properties affect the way that NURBS curves and surfaces
            are rendered. See the "
           (code "gluNurbsProperty")
           " reference page for information about what the 
            properties are and what they do. ")))

(define-gl-procedure
  gluGetString
  "gluGetString"
  (funcsynopsis
    (funcprototype
      (funcdef
        "const GLubyte * "
        (function "gluGetString"))
      (paramdef "GLenum " (parameter "name"))))
  '(*fragment*
     (heading
       "return a string describing the GLU version or GLU extensions ")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "name")))
                   (para "
Specifies a symbolic constant, one of "
                         (code "GLU_VERSION")
                         ", or "
                         (code "GLU_EXTENSIONS")
                         ". ")))
     (heading "Description")
     (para (code "gluGetString")
           " returns a pointer to a static string describing the 
            GLU version or the GLU extensions that are supported. ")
     (para "
The version number is one of the following
            forms: ")
     (para (var "major_number.minor_number")
           (var "major_number.minor_number.release_number")
           ". ")
     (para "
The version string is of the following form: ")
     (para (var "version number<space>vendor-specific information"))
     (para "
Vendor-specific information is optional.
            Its format and contents depend on the implementation. ")
     (para "
The standard GLU contains a basic set of features and capabilities.
            If a company or group of companies wish to support other features,
            these may be included as extensions to the GLU.  
            If "
           (var "name")
           " is "
           (code "GLU_EXTENSIONS")
           ", then "
           (code "gluGetString")
           "
returns a space-separated list of names of supported GLU extensions.
            (Extension names never contain spaces.) ")
     (para "
All strings are null-terminated. ")
     (heading "Errors")
     (para "
NULL is returned if "
           (var "name")
           " is not "
           (code "GLU_VERSION")
           " or "
           (code "GLU_EXTENSIONS")
           ". ")
     (para)))

(define-gl-procedure
  gluGetTessProperty
  "gluGetTessProperty"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluGetTessProperty"))
      (paramdef "GLUtesselator* " (parameter "tess"))
      (paramdef "GLenum " (parameter "which"))
      (paramdef "GLdouble* " (parameter "data"))))
  '(*fragment*
     (heading "get a tessellation object property")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). "))
            (entry (% (heading (var "which")))
                   (para "
Specifies the property whose value is to be fetched. Valid values are "
                         (code "GLU_TESS_WINDING_RULE")
                         ", "
                         (code "GLU_TESS_BOUNDARY_ONLY")
                         ", and "
                         (code "GLU_TESS_TOLERANCE")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to the location into which the value of the 
                    named property is written. ")))
     (heading "Description")
     (para (code "gluGetTessProperty")
           " retrieves properties stored in a tessellation object. These
            properties affect the way that tessellation objects 
            are interpreted and rendered. See the "
           (code "gluTessProperty")
           " reference page for information about the 
            properties and what they do. ")))

(define-gl-procedure
  gluLoadSamplingMatrices
  "gluLoadSamplingMatrices"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluLoadSamplingMatrices"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "const GLfloat * " (parameter "model"))
      (paramdef
        "const GLfloat * "
        (parameter "perspective"))
      (paramdef "const GLint * " (parameter "view"))))
  '(*fragment*
     (heading
       "load NURBS sampling and culling matrices")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "model")))
                   (para "
Specifies a modelview matrix (as from a "
                         (code "glGetFloatv")
                         " call). "))
            (entry (% (heading (var "perspective")))
                   (para "
Specifies a projection matrix (as from a "
                         (code "glGetFloatv")
                         " call). "))
            (entry (% (heading (var "view")))
                   (para "
Specifies a viewport (as from a "
                         (code "glGetIntegerv")
                         " call). ")))
     (heading "Description")
     (para (code "gluLoadSamplingMatrices")
           " uses "
           (var "model")
           ", "
           (var "perspective")
           ", and "
           (var "view")
           " to recompute the sampling and culling 
            matrices stored in "
           (var "nurb")
           ".
            The sampling matrix determines how finely a NURBS curve or surface
            must be tessellated to satisfy the sampling tolerance (as determined by the "
           (code "GLU_SAMPLING_TOLERANCE")
           " property).
            The culling matrix is used in deciding if a NURBS curve or surface
            should be culled before 
            rendering (when the "
           (code "GLU_CULLING")
           " property is turned on). ")
     (para (code "gluLoadSamplingMatrices")
           " is necessary only if the "
           (code "GLU_AUTO_LOAD_MATRIX")
           " property is turned
            off (see "
           (code "gluNurbsProperty")
           ").
            Although it can be convenient to leave the "
           (code "GLU_AUTO_LOAD_MATRIX")
           "
property turned on, there can be a performance penalty for doing so.
            (A round trip to the GL server is needed to fetch the current values
            of the modelview matrix, projection matrix, and viewport.) ")))

(define-gl-procedure
  gluLookAt
  "gluLookAt"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluLookAt"))
      (paramdef "GLdouble " (parameter "eyeX"))
      (paramdef "GLdouble " (parameter "eyeY"))
      (paramdef "GLdouble " (parameter "eyeZ"))
      (paramdef "GLdouble " (parameter "centerX"))
      (paramdef "GLdouble " (parameter "centerY"))
      (paramdef "GLdouble " (parameter "centerZ"))
      (paramdef "GLdouble " (parameter "upX"))
      (paramdef "GLdouble " (parameter "upY"))
      (paramdef "GLdouble " (parameter "upZ"))))
  '(*fragment*
     (heading "define a viewing transformation")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "eyeX")))
                   (itemx (var "eyeY"))
                   (itemx (var "eyeZ"))
                   (para "
Specifies the position of the eye point. "))
            (entry (% (heading (var "centerX")))
                   (itemx (var "centerY"))
                   (itemx (var "centerZ"))
                   (para "
Specifies the position of the reference point. "))
            (entry (% (heading (var "upX")))
                   (itemx (var "upY"))
                   (itemx (var "upZ"))
                   (para "
Specifies the direction of the "
                         (var "up")
                         " vector. ")))
     (heading "Description")
     (para (code "gluLookAt")
           " creates a viewing matrix derived from an eye point, a reference
            point indicating the center of the scene, and an "
           (var "UP")
           " vector. ")
     (para "
The matrix
            maps the reference point to the negative "
           (var "z")
           " axis and the
            eye point to the origin.
            When a typical projection matrix is used,
            the center of the scene therefore maps to the center of the viewport.
            Similarly, the direction described by the "
           (var "UP")
           "
vector projected onto the viewing plane is mapped to the positive "
           (var "y")
           " axis so that it points upward in the viewport.
            The "
           (var "UP")
           " vector must not be parallel to the line of sight from the
            eye point to the reference point. ")
     (para "
Let ")
     (para (math (var "F")
                 "="
                 "("
                 "("
                 (var "centerX")
                 "-"
                 (var "eyeX")
                 ")"
                 ", "
                 "("
                 (var "centerY")
                 "-"
                 (var "eyeY")
                 ")"
                 ", "
                 "("
                 (var "centerZ")
                 "-"
                 (var "eyeZ")
                 ")"
                 ","
                 ")"))
     (para)
     (para "
Let "
           (var "UP")
           " be the vector "
           (math "("
                 (var "upX")
                 ","
                 (var "upY")
                 (var "upZ")
                 ")")
           ". ")
     (para "
Then normalize as follows: "
           (math (var "f")
                 "="
                 (var "F")
                 "/"
                 "∥"
                 (var "F")
                 ","
                 "∥"
                 ","))
     (para (math (var "UP")
                 "^"
                 "″"
                 "="
                 (var "UP")
                 "/"
                 "∥"
                 (var "UP")
                 ","
                 "∥"
                 ","))
     (para)
     (para "
Finally, let "
           (math (var "s")
                 "="
                 (var "f")
                 "×"
                 (var "UP")
                 "^"
                 "″")
           ",
            and "
           (math (var "u") "=" (var "s") "×" (var "f"))
           ". ")
     (para)
     (para "
M is then constructed as follows: "
           (math (var "M")
                 "="
                 "("
                 "("
                 (var "s")
                 "\u2061"
                 "["
                 "0"
                 ","
                 "]"
                 " "
                 (var "s")
                 "\u2061"
                 "["
                 "1"
                 ","
                 "]"
                 " "
                 (var "s")
                 "\u2061"
                 "["
                 "2"
                 ","
                 "]"
                 " "
                 "0"
                 ")"
                 ", "
                 "("
                 (var "u")
                 "\u2061"
                 "["
                 "0"
                 ","
                 "]"
                 " "
                 (var "u")
                 "\u2061"
                 "["
                 "1"
                 ","
                 "]"
                 " "
                 (var "u")
                 "\u2061"
                 "["
                 "2"
                 ","
                 "]"
                 " "
                 "0"
                 ")"
                 ", "
                 "("
                 "-"
                 (var "f")
                 "\u2061"
                 "["
                 "0"
                 ","
                 "]"
                 " "
                 "-"
                 (var "f")
                 "\u2061"
                 "["
                 "1"
                 ","
                 "]"
                 " "
                 "-"
                 (var "f")
                 "\u2061"
                 "["
                 "2"
                 ","
                 "]"
                 " "
                 "0"
                 ")"
                 ", "
                 "("
                 "0"
                 " "
                 "0"
                 " "
                 "0"
                 " "
                 "1"
                 ")"
                 ","
                 ")"))
     (para "
and "
           (code "gluLookAt")
           " is equivalent to ")
     (example
       "
glMultMatrixf(M);
glTranslated(-eyex, -eyey, -eyez); ")))

(define-gl-procedure
  gluNewNurbsRenderer
  "gluNewNurbsRenderer"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLUnurbs* "
        (function "gluNewNurbsRenderer"))))
  '(*fragment*
     (heading "create a NURBS object")
     (heading "Description")
     (para (code "gluNewNurbsRenderer")
           " creates and returns a pointer to
            a new NURBS object.
            This object must be referred to when calling
            NURBS rendering and control functions. A return value of
            0 means that there is not enough memory to allocate the object. ")))

(define-gl-procedure
  gluNewQuadric
  "gluNewQuadric"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLUquadric* "
        (function "gluNewQuadric"))))
  '(*fragment*
     (heading "create a quadrics object")
     (heading "Description")
     (para (code "gluNewQuadric")
           " creates and returns a pointer to
            a new quadrics object. This object must be referred to when
            calling quadrics rendering and control functions. A return value of
            0 means that there is not enough memory to allocate the object. ")))

(define-gl-procedure
  gluNewTess
  "gluNewTess"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLUtesselator* "
        (function "gluNewTess"))))
  '(*fragment*
     (heading "create a tessellation object")
     (heading "Description")
     (para (code "gluNewTess")
           " creates and returns a pointer to a new tessellation object.
            This object must be referred to when calling
            tessellation functions.  A return value of
            0 means that there is not enough memory to allocate the object. ")))

(define-gl-procedure
  gluNextContour
  "gluNextContour"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluNextContour"))
      (paramdef "GLUtesselator* " (parameter "tess"))
      (paramdef "GLenum " (parameter "type"))))
  '(*fragment*
     (heading "mark the beginning of another contour")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the type of the contour being defined. Valid values are "
                         (code "GLU_EXTERIOR")
                         ", "
                         (code "GLU_INTERIOR")
                         ", "
                         (code "GLU_UNKNOWN")
                         ", "
                         (code "GLU_CCW")
                         ", and "
                         (code "GLU_CW")
                         ". ")))
     (heading "Description")
     (para (code "gluNextContour")
           " is used in describing polygons with multiple contours. After the first
            contour has been described through a series of "
           (code "gluTessVertex")
           " calls, 
            a "
           (code "gluNextContour")
           " call indicates that the previous contour is complete and that the
            next contour is about to begin.
            Another series of "
           (code "gluTessVertex")
           " calls is then used to describe the new 
            contour. This process can be repeated until all contours have been described. ")
     (para (var "type")
           " defines what type of contour follows.
            The legal contour types are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_EXTERIOR")))
                   (para "
An exterior contour defines an exterior boundary of the polygon. "))
            (entry (% (heading (code "GLU_INTERIOR")))
                   (para "
An interior contour defines an interior boundary of the polygon (such as 
                        a hole). "))
            (entry (% (heading (code "GLU_UNKNOWN")))
                   (para "
An unknown contour is analyzed by the library to determine if it is interior
                        or exterior. "))
            (entry (% (heading (code "GLU_CCW") ", ")))
            (entry (% (heading (code "GLU_CW")))
                   (para "
The first "
                         (code "GLU_CCW")
                         " or "
                         (code "GLU_CW")
                         " contour defined is considered to 
                        be exterior. All other contours are considered to be exterior if they 
                        are oriented in the same direction (clockwise or counterclockwise) as 
                        the first contour, and interior if they are not. ")))
     (para "
If one contour is of type "
           (code "GLU_CCW")
           " or "
           (code "GLU_CW")
           ", then all 
            contours must be of the same type (if they are not, then all "
           (code "GLU_CCW")
           "
and "
           (code "GLU_CW")
           " contours will be changed to "
           (code "GLU_UNKNOWN")
           "). ")
     (para "
Note that there is no real difference between the "
           (code "GLU_CCW")
           " and "
           (code "GLU_CW")
           " contour types. ")
     (para "
Before the first contour is described, "
           (code "gluNextContour")
           " can be called to 
            define the type of the first contour.
            If "
           (code "gluNextContour")
           " is not called before the first contour, then the first contour is 
            marked "
           (code "GLU_EXTERIOR")
           ". ")
     (para "
This command is obsolete and is provided for backward compatibility
            only. Calls to "
           (code "gluNextContour")
           " are mapped to "
           (code "gluTessEndContour")
           "
followed by "
           (code "gluTessBeginContour")
           ". ")))

(define-gl-procedure
  gluNurbsCallbackDataEXT
  "gluNurbsCallbackDataEXT"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluNurbsCallbackDataEXT"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLvoid* " (parameter "userData"))))
  '(*fragment*
     (heading "set a user data pointer")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "userData")))
                   (para "
Specifies a pointer to the user's data. ")))
     (heading "Description")
     (para (code "gluNurbsCallbackDataEXT")
           " is used to pass a pointer to the application's data to NURBS
            tessellator. A copy of this pointer will be passed by the tessellator
            in the NURBS callback functions (set by "
           (code "gluNurbsCallback")
           "). ")))

(define-gl-procedure
  gluNurbsCallbackData
  "gluNurbsCallbackData"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluNurbsCallbackData"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLvoid* " (parameter "userData"))))
  '(*fragment*
     (heading "set a user data pointer")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "userData")))
                   (para "
Specifies a pointer to the user's data. ")))
     (heading "Description")
     (para (code "gluNurbsCallbackData")
           " is used to pass a pointer to the application's data to NURBS
            tessellator. A copy of this pointer will be passed by the tessellator
            in the NURBS callback functions (set by "
           (code "gluNurbsCallback")
           "). ")))

(define-gl-procedure
  gluNurbsCallback
  "gluNurbsCallback"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluNurbsCallback"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLenum " (parameter "which"))
      (paramdef
        "_GLUfuncptr "
        (parameter "CallBackFunc"))))
  '(*fragment*
     (heading "define a callback for a NURBS object")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "which")))
                   (para "
Specifies the callback being defined. 
                    Valid values are "
                         (code "GLU_NURBS_BEGIN")
                         ", "
                         (code "GLU_NURBS_VERTEX")
                         ", "
                         (code "GLU_NURBS_NORMAL")
                         ", "
                         (code "GLU_NURBS_COLOR")
                         ", "
                         (code "GLU_NURBS_TEXTURE_COORD")
                         ", "
                         (code "GLU_NURBS_END")
                         ", "
                         (code "GLU_NURBS_BEGIN_DATA")
                         ", "
                         (code "GLU_NURBS_VERTEX_DATA")
                         ", "
                         (code "GLU_NURBS_NORMAL_DATA")
                         ", "
                         (code "GLU_NURBS_COLOR_DATA")
                         ", "
                         (code "GLU_NURBS_TEXTURE_COORD_DATA")
                         ", "
                         (code "GLU_NURBS_END_DATA")
                         ", and "
                         (code "GLU_NURBS_ERROR")
                         ". "))
            (entry (% (heading (var "CallBackFunc")))
                   (para "
Specifies the function that the callback calls. ")))
     (heading "Description")
     (para (code "gluNurbsCallback")
           " is used to define a callback to be used by a NURBS 
            object.
            If the specified callback is already defined, then it is replaced.  If "
           (var "CallBackFunc")
           " is NULL, then this callback will not get
            invoked and the related data, if any, will be lost. ")
     (para "
Except the error callback, these callbacks are used by NURBS tessellator (when "
           (code "GLU_NURBS_MODE")
           " is set to be "
           (code "GLU_NURBS_TESSELLATOR")
           ") to return back the OpenGL
            polygon primitives resulting from the tessellation. Note that there are two
            versions of each callback: one with a user data pointer and one without. If both versions for a particular callback are specified then the callback with 
            the user data pointer will be used. Note that ``userData'' is a copy of the pointer that was specified at the last call to "
           (code "gluNurbsCallbackData")
           ". ")
     (para "
The error callback function is effective no matter which value that "
           (code "GLU_NURBS_MODE")
           " is set to.
            All other callback functions are effective only when "
           (code "GLU_NURBS_MODE")
           "
is set to "
           (code "GLU_NURBS_TESSELLATOR")
           ". ")
     (para "
The legal callbacks are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_NURBS_BEGIN")))
                   (para)
                   (para "
The begin callback indicates the start of a primitive. The function
                        takes a single argument of type GLenum, which can be one of "
                         (code "GLU_LINES")
                         ", "
                         (code "GLU_LINE_STRIP")
                         ", "
                         (code "GLU_TRIANGLE_FAN")
                         ", "
                         (code "GLU_TRIANGLE_STRIP")
                         ", "
                         (code "GLU_TRIANGLES")
                         ", or "
                         (code "GLU_QUAD_STRIP")
                         ". The
                        default begin callback function is NULL. The function prototype
                        for this callback looks like: "))
            (entry (% (heading (code "GLU_NURBS_BEGIN_DATA")))
                   (para)
                   (para "
The same as the "
                         (code "GLU_NURBS_BEGIN")
                         " callback except that it takes an
                        additional pointer argument. This pointer is a copy of the pointer that
                        was specified at the last call to "
                         (code "gluNurbsCallbackData")
                         ".  The
                        default callback function is NULL. The function prototype for this
                        callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_VERTEX")))
                   (para)
                   (para "
The vertex callback indicates a vertex of the primitive. The
                        coordinates of the vertex are stored in the parameter ``vertex''. All
                        the generated vertices have dimension 3; that is, homogeneous
                        coordinates have been transformed into affine coordinates. The default
                        vertex callback function is NULL. The function prototype for this
                        callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_VERTEX_DATA")))
                   (para)
                   (para "
This is the same as the "
                         (code "GLU_NURBS_VERTEX")
                         " callback, except that
                        it takes an additional pointer argument. This pointer is a copy of the
                        pointer that was specified at the last call to "
                         (code "gluNurbsCallbackData")
                         ".  The default callback function is NULL. The
                        function prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_NORMAL")))
                   (para)
                   (para "
The normal callback is invoked as the vertex normal is generated.
                        The components of the normal are stored in the parameter ``normal.''
                        In the case of a NURBS curve, the callback function is effective only when 
                        the user provides a normal map ("
                         (code "GLU_MAP1_NORMAL")
                         ").
                        In the case of a NURBS surface, if a normal map ("
                         (code "GLU_MAP2_NORMAL")
                         ")
                        is provided, then the generated normal is computed from the normal map.
                        If a normal map is not provided, then a surface normal is computed in
                        a manner similar to that described for evaluators when "
                         (code "GLU_AUTO_NORMAL")
                         "
is enabled. 
                        The default normal callback function is NULL. The function
                        prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_NORMAL_DATA")))
                   (para)
                   (para "
The same as the "
                         (code "GLU_NURBS_NORMAL")
                         " callback except that it
                        takes an additional pointer argument. This pointer is a copy of the pointer
                        that was specified at the last call to "
                         (code "gluNurbsCallbackData")
                         ".  The default callback function is NULL. The function prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_COLOR")))
                   (para)
                   (para "
The color callback is invoked as the color of a vertex is generated.
                        The components of the color are stored in the parameter ``color.''
                        This callback is effective only when the user provides a color map
                        ("
                         (code "GLU_MAP1_COLOR_4")
                         " or "
                         (code "GLU_MAP2_COLOR_4")
                         "). ``color'' contains four
                        components: R, G, B, A. The default color callback function is NULL.
                        The prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_COLOR_DATA")))
                   (para)
                   (para "
The same as the "
                         (code "GLU_NURBS_COLOR")
                         " callback except that it
                        takes an additional pointer argument. This pointer is a copy of the pointer
                        that was specified at the last call to "
                         (code "gluNurbsCallbackData")
                         ".  The default callback function is NULL. The function prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_TEXTURE_COORD")))
                   (para)
                   (para "
The texture callback is invoked as the texture coordinates 
                        of a vertex are generated. These coordinates are stored in the parameter
                        ``texCoord.'' The number of texture coordinates can be 1, 2, 3, or 4 depending
                        on which type of texture map is specified 
                        ("
                         (code "GLU_MAP1_TEXTURE_COORD_1")
                         ", "
                         (code "GLU_MAP1_TEXTURE_COORD_2")
                         ", "
                         (code "GLU_MAP1_TEXTURE_COORD_3")
                         ", "
                         (code "GLU_MAP1_TEXTURE_COORD_4")
                         ", "
                         (code "GLU_MAP2_TEXTURE_COORD_1")
                         ", "
                         (code "GLU_MAP2_TEXTURE_COORD_2")
                         ", "
                         (code "GLU_MAP2_TEXTURE_COORD_3")
                         ", "
                         (code "GLU_MAP2_TEXTURE_COORD_4")
                         ").
                        If no texture map is specified, this callback function will not be called.
                        The default texture callback function is NULL. The function prototype
                        for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_TEXTURE_COORD_DATA")))
                   (para)
                   (para "
This is the same as the "
                         (code "GLU_NURBS_TEXTURE_COORD")
                         " callback, except that it
                        takes an additional pointer argument. This pointer is a copy of the pointer
                        that was specified at the last call to "
                         (code "gluNurbsCallbackData")
                         ".  The default callback function is NULL. The function prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_END")))
                   (para)
                   (para "
The end callback is invoked at the end of a primitive. The default end callback function is NULL. The function prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_END_DATA")))
                   (para)
                   (para "
This is the same as the "
                         (code "GLU_NURBS_END")
                         " callback, except that it
                        takes an additional pointer argument. This pointer is a copy of the pointer
                        that was specified at the last call to "
                         (code "gluNurbsCallbackData")
                         ".  The default callback function is NULL. The function prototype for this callback function looks like: "))
            (entry (% (heading (code "GLU_NURBS_ERROR")))
                   (para)
                   (para "
The error function is called when an error is encountered.
                        Its single argument
                        is of type GLenum, and it indicates the specific error that occurred.
                        There are 37 errors unique to NURBS, named "
                         (code "GLU_NURBS_ERROR1")
                         " through "
                         (code "GLU_NURBS_ERROR37")
                         ". 
                        Character strings describing these errors can be retrieved with "
                         (code "gluErrorString")
                         ". ")))
     (example "
void begin( GLenum type ); ")
     (example
       "
void beginData(GLenum type, void *userData); ")
     (example "
void vertex( GLfloat *vertex ); ")
     (example
       "
void vertexData( GLfloat *vertex, void *userData ); ")
     (example "
void normal( GLfloat *normal ); ")
     (example
       "
void normalData( GLfloat *normal, void *userData ); ")
     (example "
void color( GLfloat *color ); ")
     (example
       "
void colorData( GLfloat *color, void *userData ); ")
     (example "
void texCoord( GLfloat *texCoord ); ")
     (example
       "
void texCoordData( GLfloat *texCoord, void *userData ); ")
     (example "
void end( void ); ")
     (example "
void endData( void  *userData ); ")))

(define-gl-procedure
  gluNurbsCurve
  "gluNurbsCurve"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluNurbsCurve"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLint " (parameter "knotCount"))
      (paramdef "GLfloat * " (parameter "knots"))
      (paramdef "GLint " (parameter "stride"))
      (paramdef "GLfloat * " (parameter "control"))
      (paramdef "GLint " (parameter "order"))
      (paramdef "GLenum " (parameter "type"))))
  '(*fragment*
     (heading "define the shape of a NURBS curve")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "knotCount")))
                   (para "
Specifies the number of knots in "
                         (var "knots")
                         ". "
                         (var "knotCount")
                         " equals the number of control points plus the order. "))
            (entry (% (heading (var "knots")))
                   (para "
Specifies an array of "
                         (var "knotCount")
                         " nondecreasing knot values. "))
            (entry (% (heading (var "stride")))
                   (para "
Specifies the offset (as a number of single-precision floating-point values)
                    between successive curve control points. "))
            (entry (% (heading (var "control")))
                   (para "
Specifies a pointer to an array of control points. The coordinates must
                    agree with "
                         (var "type")
                         ", specified below. "))
            (entry (% (heading (var "order")))
                   (para "
Specifies the order of the NURBS curve. "
                         (var "order")
                         " equals degree + 1, hence
                    a cubic curve has an order of 4. "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the type of the curve. If this curve is defined within a "
                         (code "gluBeginCurve")
                         "/"
                         (code "gluEndCurve")
                         " pair, then 
                    the type can be any of the valid
                    one-dimensional evaluator types (such as "
                         (code "GLU_MAP1_VERTEX_3")
                         " or "
                         (code "GLU_MAP1_COLOR_4")
                         "). Between a "
                         (code "gluBeginTrim")
                         "/"
                         (code "gluEndTrim")
                         " pair,
                    the only valid types are "
                         (code "GLU_MAP1_TRIM_2")
                         " and "
                         (code "GLU_MAP1_TRIM_3")
                         ". ")))
     (heading "Description")
     (para "
Use "
           (code "gluNurbsCurve")
           " to describe a NURBS curve. ")
     (para "
When "
           (code "gluNurbsCurve")
           " appears between a "
           (code "gluBeginCurve")
           "/"
           (code "gluEndCurve")
           " pair, it is 
            used to describe a curve to be rendered.
            Positional, texture, and color coordinates are associated
            by presenting each as a separate "
           (code "gluNurbsCurve")
           " between a "
           (code "gluBeginCurve")
           "/"
           (code "gluEndCurve")
           " pair. No more than
            one call to "
           (code "gluNurbsCurve")
           " for each of color, position, and texture
            data can be made within a single "
           (code "gluBeginCurve")
           "/"
           (code "gluEndCurve")
           "
pair. Exactly one call must be made to describe the position of the 
            curve (a "
           (var "type")
           " of "
           (code "GLU_MAP1_VERTEX_3")
           " or "
           (code "GLU_MAP1_VERTEX_4")
           "). ")
     (para "
When "
           (code "gluNurbsCurve")
           " appears between a "
           (code "gluBeginTrim")
           "/"
           (code "gluEndTrim")
           " pair, it is 
            used to describe a trimming curve on a NURBS surface. If "
           (var "type")
           " is "
           (code "GLU_MAP1_TRIM_2")
           ", then it describes a curve in two-dimensional ("
           (var "u")
           " and "
           (var "v")
           ")
            parameter space. If it is "
           (code "GLU_MAP1_TRIM_3")
           ", then it describes a 
            curve in two-dimensional homogeneous ("
           (var "u")
           ", "
           (var "v")
           ", and "
           (var "w")
           ") 
            parameter space.
            See the "
           (code "gluBeginTrim")
           " reference page for more discussion about trimming
            curves. ")))

(define-gl-procedure
  gluNurbsProperty
  "gluNurbsProperty"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluNurbsProperty"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLenum " (parameter "property"))
      (paramdef "GLfloat " (parameter "value"))))
  '(*fragment*
     (heading "set a NURBS property")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "property")))
                   (para "
Specifies the property to be set. Valid values are "
                         (code "GLU_SAMPLING_TOLERANCE")
                         ", "
                         (code "GLU_DISPLAY_MODE")
                         ", "
                         (code "GLU_CULLING")
                         ", "
                         (code "GLU_AUTO_LOAD_MATRIX")
                         ", "
                         (code "GLU_PARAMETRIC_TOLERANCE")
                         ", "
                         (code "GLU_SAMPLING_METHOD")
                         ", "
                         (code "GLU_U_STEP")
                         ", "
                         (code "GLU_V_STEP")
                         ", or "
                         (code "GLU_NURBS_MODE")
                         ". "))
            (entry (% (heading (var "value")))
                   (para "
Specifies the value of the indicated property.
                    It may be a numeric value or one of "
                         (code "GLU_OUTLINE_POLYGON")
                         ", "
                         (code "GLU_FILL")
                         ", "
                         (code "GLU_OUTLINE_PATCH")
                         ", "
                         (code "GLU_TRUE")
                         ", "
                         (code "GLU_FALSE")
                         ", "
                         (code "GLU_PATH_LENGTH")
                         ", "
                         (code "GLU_PARAMETRIC_ERROR")
                         ", "
                         (code "GLU_DOMAIN_DISTANCE")
                         ", "
                         (code "GLU_NURBS_RENDERER")
                         ", or "
                         (code "GLU_NURBS_TESSELLATOR")
                         ". ")))
     (heading "Description")
     (para (code "gluNurbsProperty")
           " is used to control properties stored in a NURBS object. These
            properties affect the way that a NURBS curve is rendered. The accepted 
            values for "
           (var "property")
           " are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_NURBS_MODE")))
                   (para (var "value")
                         " should be set to be either "
                         (code "GLU_NURBS_RENDERER")
                         " or "
                         (code "GLU_NURBS_TESSELLATOR")
                         ". When set to "
                         (code "GLU_NURBS_RENDERER")
                         ", NURBS objects
                        are tessellated into OpenGL primitives and sent to the pipeline for
                        rendering. When set to "
                         (code "GLU_NURBS_TESSELLATOR")
                         ", NURBS objects are
                        tessellated into OpenGL primitives but the vertices, normals, colors, and/or textures are 
                        retrieved back through a callback interface (see "
                         (code "gluNurbsCallback")
                         "). This allows the user to cache the
                        tessellated results for further processing.
                        The initial value is "
                         (code "GLU_NURBS_RENDERER")
                         ". "))
            (entry (% (heading (code "GLU_SAMPLING_METHOD")))
                   (para "
Specifies how a NURBS surface should be
                        tessellated. "
                         (var "value")
                         " may be one of "
                         (code "GLU_PATH_LENGTH")
                         ", "
                         (code "GLU_PARAMETRIC_ERROR")
                         ", "
                         (code "GLU_DOMAIN_DISTANCE")
                         ", "
                         (code "GLU_OBJECT_PATH_LENGTH")
                         ", or "
                         (code "GLU_OBJECT_PARAMETRIC_ERROR")
                         ".
                        When set to "
                         (code "GLU_PATH_LENGTH")
                         ", the surface is rendered so that
                        the maximum length, in 
                        pixels, of the edges of the tessellation polygons is no greater than
                        what is specified by "
                         (code "GLU_SAMPLING_TOLERANCE")
                         ". ")
                   (para (code "GLU_PARAMETRIC_ERROR")
                         " specifies that the surface is rendered in such a 
                        way that the value specified by "
                         (code "GLU_PARAMETRIC_TOLERANCE")
                         " describes the 
                        maximum distance, in pixels, between the tessellation polygons and the
                        surfaces they approximate. ")
                   (para (code "GLU_DOMAIN_DISTANCE")
                         " allows users to specify, in parametric coordinates,
                        how many sample points per unit length are taken in "
                         (var "u")
                         ", "
                         (var "v")
                         "
direction. ")
                   (para (code "GLU_OBJECT_PATH_LENGTH")
                         " is similar to "
                         (code "GLU_PATH_LENGTH")
                         "
except that it is view independent; that is, the surface is rendered so that the maximum length, in object space, of edges of the tessellation polygons is no greater than what is specified by "
                         (code "GLU_SAMPLING_TOLERANCE")
                         ". ")
                   (para (code "GLU_OBJECT_PARAMETRIC_ERROR")
                         " is similar to "
                         (code "GLU_PARAMETRIC_ERROR")
                         " except that it is view independent; that is, the surface is rendered in such a way that the value specified by "
                         (code "GLU_PARAMETRIC_TOLERANCE")
                         " describes the maximum distance, in object space, between the tessellation polygons and the surfaces they approximate. ")
                   (para "
The initial value of "
                         (code "GLU_SAMPLING_METHOD")
                         " is "
                         (code "GLU_PATH_LENGTH")
                         ". "))
            (entry (% (heading (code "GLU_SAMPLING_TOLERANCE")))
                   (para "
Specifies the maximum length, in pixels or in object space length unit,
                        to use when the sampling method is set to "
                         (code "GLU_PATH_LENGTH")
                         " or "
                         (code "GLU_OBJECT_PATH_LENGTH")
                         ".
                        The NURBS code is conservative when rendering a curve
                        or surface, so the actual length can be somewhat shorter. The initial
                        value is 50.0 pixels. "))
            (entry (% (heading (code "GLU_PARAMETRIC_TOLERANCE")))
                   (para "
Specifies the maximum distance, in pixels or in object space length unit,
                        to use when the sampling method is "
                         (code "GLU_PARAMETRIC_ERROR")
                         " or "
                         (code "GLU_OBJECT_PARAMETRIC_ERROR")
                         ".
                        The initial value is 0.5. "))
            (entry (% (heading (code "GLU_U_STEP")))
                   (para "
Specifies the number of sample points per unit length taken
                        along the "
                         (var "u")
                         " axis in parametric coordinates. It is needed when "
                         (code "GLU_SAMPLING_METHOD")
                         " is set to "
                         (code "GLU_DOMAIN_DISTANCE")
                         ".
                        The initial value is 100. "))
            (entry (% (heading (code "GLU_V_STEP")))
                   (para "
Specifies the number of sample points per unit length taken
                        along the "
                         (var "v")
                         " axis in parametric coordinate. It is needed when "
                         (code "GLU_SAMPLING_METHOD")
                         " is set to "
                         (code "GLU_DOMAIN_DISTANCE")
                         ". The initial 
                        value is 100. "))
            (entry (% (heading (code "GLU_DISPLAY_MODE")))
                   (para (var "value")
                         " can be set to "
                         (code "GLU_OUTLINE_POLYGON")
                         ", "
                         (code "GLU_FILL")
                         ", or "
                         (code "GLU_OUTLINE_PATCH")
                         ".
                        When "
                         (code "GLU_NURBS_MODE")
                         " is set to be "
                         (code "GLU_NURBS_RENDERER")
                         ", "
                         (var "value")
                         " defines how a NURBS surface should be rendered.
                        When "
                         (var "value")
                         " is set to "
                         (code "GLU_FILL")
                         ", the surface is rendered as a
                        set of polygons. When "
                         (var "value")
                         " is set to "
                         (code "GLU_OUTLINE_POLYGON")
                         ", the NURBS library draws only the outlines
                        of the polygons created by tessellation. When "
                         (var "value")
                         " is set to "
                         (code "GLU_OUTLINE_PATCH")
                         " just the outlines of patches and trim 
                        curves defined by the user are drawn. ")
                   (para "
When "
                         (code "GLU_NURBS_MODE")
                         " is set to be "
                         (code "GLU_NURBS_TESSELLATOR")
                         ", "
                         (var "value")
                         " defines how a NURBS surface should be tessellated.
                        When "
                         (code "GLU_DISPLAY_MODE")
                         " is set to "
                         (code "GLU_FILL")
                         " or "
                         (code "GLU_OUTLINE_POLYGON")
                         ", 
                        the NURBS surface is tessellated into OpenGL triangle primitives that can be
                        retrieved back  through callback functions. If "
                         (code "GLU_DISPLAY_MODE")
                         " is set to "
                         (code "GLU_OUTLINE_PATCH")
                         ", only the outlines of the patches and trim curves are generated as a sequence of line strips that can be retrieved back through callback functions. ")
                   (para "
The initial value is "
                         (code "GLU_FILL")
                         ". "))
            (entry (% (heading (code "GLU_CULLING")))
                   (para (var "value")
                         " is a boolean value that, when set to "
                         (code "GLU_TRUE")
                         ", indicates that 
                        a NURBS curve should be discarded prior to tessellation if its control points
                        lie outside the current viewport. The initial value is "
                         (code "GLU_FALSE")
                         ". "))
            (entry (% (heading (code "GLU_AUTO_LOAD_MATRIX")))
                   (para (var "value")
                         " is a boolean value. When set to "
                         (code "GLU_TRUE")
                         ", the NURBS code 
                        downloads the projection matrix, the modelview matrix, and the 
                        viewport from the GL server to compute sampling and 
                        culling
                        matrices for each NURBS curve that is rendered. Sampling and culling matrices
                        are required to determine the tessellation of a NURBS surface into line segments
                        or polygons and to cull a NURBS surface if it lies outside the viewport. ")
                   (para "
If this mode is set to "
                         (code "GLU_FALSE")
                         ", then the program needs
                        to provide a projection matrix, a modelview matrix, and a viewport
                        for the NURBS renderer to use to construct sampling and culling matrices.
                        This can be done with the "
                         (code "gluLoadSamplingMatrices")
                         " function.
                        This mode is initially set to "
                         (code "GLU_TRUE")
                         ".
                        Changing it from "
                         (code "GLU_TRUE")
                         " to "
                         (code "GLU_FALSE")
                         " does not affect
                        the sampling and culling matrices until "
                         (code "gluLoadSamplingMatrices")
                         "
is called. ")))))

(define-gl-procedure
  gluNurbsSurface
  "gluNurbsSurface"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluNurbsSurface"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLint " (parameter "sKnotCount"))
      (paramdef "GLfloat* " (parameter "sKnots"))
      (paramdef "GLint " (parameter "tKnotCount"))
      (paramdef "GLfloat* " (parameter "tKnots"))
      (paramdef "GLint " (parameter "sStride"))
      (paramdef "GLint " (parameter "tStride"))
      (paramdef "GLfloat* " (parameter "control"))
      (paramdef "GLint " (parameter "sOrder"))
      (paramdef "GLint " (parameter "tOrder"))
      (paramdef "GLenum " (parameter "type"))))
  '(*fragment*
     (heading "define the shape of a NURBS surface")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "sKnotCount")))
                   (para "
Specifies the number of knots in the parametric "
                         (var "u")
                         " direction. "))
            (entry (% (heading (var "sKnots")))
                   (para "
Specifies an array of "
                         (var "sKnotCount")
                         " nondecreasing knot values in the parametric "
                         (var "u")
                         " direction. "))
            (entry (% (heading (var "tKnotCount")))
                   (para "
Specifies the number of knots in the parametric "
                         (var "v")
                         " direction. "))
            (entry (% (heading (var "tKnots")))
                   (para "
Specifies an array of "
                         (var "tKnotCount")
                         " nondecreasing knot values in the parametric "
                         (var "v")
                         " direction. "))
            (entry (% (heading (var "sStride")))
                   (para "
Specifies the offset (as a number of single-precision floating-point values)
                    between successive control points in the parametric "
                         (var "u")
                         " direction
                    in "
                         (var "control")
                         ". "))
            (entry (% (heading (var "tStride")))
                   (para "
Specifies the offset (in single-precision floating-point values)
                    between successive control points in the parametric "
                         (var "v")
                         " direction
                    in "
                         (var "control")
                         ". "))
            (entry (% (heading (var "control")))
                   (para "
Specifies an array containing control points for the NURBS surface.
                    The offsets between successive control points in the parametric "
                         (var "u")
                         "
and "
                         (var "v")
                         " directions are given by "
                         (var "sStride")
                         " and "
                         (var "tStride")
                         ". "))
            (entry (% (heading (var "sOrder")))
                   (para "
Specifies the order of the NURBS surface in the parametric "
                         (var "u")
                         " direction. The order is one more than the degree, hence
                    a surface that is cubic in "
                         (var "u")
                         " has a "
                         (var "u")
                         " order of 4. "))
            (entry (% (heading (var "tOrder")))
                   (para "
Specifies the order of the NURBS surface in the parametric "
                         (var "v")
                         " direction. The order is one more than the degree, hence
                    a surface that is cubic in "
                         (var "v")
                         " has a "
                         (var "v")
                         " order of 4. "))
            (entry (% (heading (var "type")))
                   (para "
Specifies type of the surface. "
                         (var "type")
                         " can be any of the valid
                    two-dimensional evaluator types (such as "
                         (code "GLU_MAP2_VERTEX_3")
                         " or "
                         (code "GLU_MAP2_COLOR_4")
                         "). ")))
     (heading "Description")
     (para "
Use "
           (code "gluNurbsSurface")
           " within a NURBS (Non-Uniform Rational B-Spline) surface
            definition to describe the shape of a NURBS surface (before
            any trimming). To mark the beginning of 
            a NURBS surface definition, use the "
           (code "gluBeginSurface")
           " command.
            To mark the end of a NURBS surface definition, use the "
           (code "gluEndSurface")
           " command. Call "
           (code "gluNurbsSurface")
           " within a NURBS
            surface definition only. ")
     (para "
Positional, texture, and color coordinates are associated
            with a surface by presenting each as a separate "
           (code "gluNurbsSurface")
           " between a "
           (code "gluBeginSurface")
           "/"
           (code "gluEndSurface")
           " pair. No more than
            one call to "
           (code "gluNurbsSurface")
           " for each of color, position, and texture
            data can be made within a single "
           (code "gluBeginSurface")
           "/"
           (code "gluEndSurface")
           "
pair. Exactly one call must be made to describe the position of the 
            surface (a "
           (var "type")
           " of "
           (code "GLU_MAP2_VERTEX_3")
           " or "
           (code "GLU_MAP2_VERTEX_4")
           "). ")
     (para "
A NURBS surface can be trimmed by using the commands "
           (code "gluNurbsCurve")
           " and "
           (code "gluPwlCurve")
           " between calls to "
           (code "gluBeginTrim")
           " and "
           (code "gluEndTrim")
           ". ")
     (para "
Note that a "
           (code "gluNurbsSurface")
           " with "
           (var "sKnotCount")
           " knots in the "
           (var "u")
           " direction
            and "
           (var "tKnotCount")
           " knots in the "
           (var "v")
           " direction with orders "
           (var "sOrder")
           " and "
           (var "tOrder")
           " must have 
            ("
           (var "sKnotCount")
           " - "
           (var "sOrder")
           ") "
           (math (var "times"))
           "
("
           (var "tKnotCount")
           " - "
           (var "tOrder")
           ") control points. ")))

(define-gl-procedure
  gluOrtho2D
  "gluOrtho2D"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluOrtho2D"))
      (paramdef "GLdouble " (parameter "left"))
      (paramdef "GLdouble " (parameter "right"))
      (paramdef "GLdouble " (parameter "bottom"))
      (paramdef "GLdouble " (parameter "top"))))
  '(*fragment*
     (heading
       "define a 2D orthographic projection matrix")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "left")))
                   (itemx (var "right"))
                   (para "
Specify the coordinates for the left and right vertical clipping planes. "))
            (entry (% (heading (var "bottom")))
                   (itemx (var "top"))
                   (para "
Specify the coordinates for the bottom and top horizontal clipping planes. ")))
     (heading "Description")
     (para (code "gluOrtho2D")
           " sets up a two-dimensional orthographic viewing region.  
            This is equivalent to calling "
           (code "glOrtho")
           " with "
           (math (var "near") "=" "-1")
           "
and "
           (math (var "far") "=" "1")
           ". ")))

(define-gl-procedure
  gluPartialDisk
  "gluPartialDisk"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluPartialDisk"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLdouble " (parameter "inner"))
      (paramdef "GLdouble " (parameter "outer"))
      (paramdef "GLint " (parameter "slices"))
      (paramdef "GLint " (parameter "loops"))
      (paramdef "GLdouble " (parameter "start"))
      (paramdef "GLdouble " (parameter "sweep"))))
  '(*fragment*
     (heading "draw an arc of a disk")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies a quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "inner")))
                   (para "
Specifies the inner radius of the partial disk (can be 0). "))
            (entry (% (heading (var "outer")))
                   (para "
Specifies the outer radius of the partial disk. "))
            (entry (% (heading (var "slices")))
                   (para "
Specifies the number of subdivisions around the "
                         (var "z")
                         " axis. "))
            (entry (% (heading (var "loops")))
                   (para "
Specifies the number of concentric rings about the origin into which
                    the partial disk is subdivided. "))
            (entry (% (heading (var "start")))
                   (para "
Specifies the starting angle, in degrees, of the disk portion. "))
            (entry (% (heading (var "sweep")))
                   (para "
Specifies the sweep angle, in degrees, of the disk portion. ")))
     (heading "Description")
     (para (code "gluPartialDisk")
           " renders a partial disk on the "
           (math (var "z") "=" "0")
           "
plane. A partial disk is 
            similar to a full disk, except that only the subset of the disk from "
           (var "start")
           " through "
           (var "start")
           " + "
           (var "sweep")
           " is included (where 0 degrees is along the 
            +\\f2y\\f axis,
            90 degrees along the +"
           (var "x")
           " axis, 180 degrees along the \\-"
           (var "y")
           " axis, and 
            270 degrees along the \\-"
           (var "x")
           " axis). ")
     (para "
The partial disk has a radius of "
           (var "outer")
           " and contains a concentric circular hole with a radius 
            of "
           (var "inner")
           ". If "
           (var "inner")
           " is 0, then no hole is generated. The partial disk is
            subdivided around the "
           (var "z")
           " axis into slices (like pizza slices) and also
            about the "
           (var "z")
           " axis into rings 
            (as specified by "
           (var "slices")
           " and "
           (var "loops")
           ", respectively). ")
     (para "
With respect to orientation, the +"
           (var "z")
           " side of the partial disk is considered to 
            be outside (see "
           (code "gluQuadricOrientation")
           ").
            This means that if the 
            orientation is set to "
           (code "GLU_OUTSIDE")
           ", then any normals generated 
            point along the +"
           (var "z")
           " axis. Otherwise, they point along the \\-"
           (var "z")
           " axis. ")
     (para "
If texturing is turned on (with "
           (code "gluQuadricTexture")
           "), texture
            coordinates are generated
            linearly such that where "
           (math (var "r") "=" (var "outer"))
           ",
            the value at ("
           (var "r")
           ", 0, 0) is 
            (1.0, 0.5), at (0, "
           (var "r")
           ", 0) it is (0.5, 1.0), at (\\-"
           (var "r")
           ", 0, 0) 
            it is (0.0, 0.5), and 
            at (0, \\-"
           (var "r")
           ", 0) it is (0.5, 0.0). ")))

(define-gl-procedure
  gluPerspective
  "gluPerspective"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluPerspective"))
      (paramdef "GLdouble " (parameter "fovy"))
      (paramdef "GLdouble " (parameter "aspect"))
      (paramdef "GLdouble " (parameter "zNear"))
      (paramdef "GLdouble " (parameter "zFar"))))
  '(*fragment*
     (heading
       "set up a perspective projection matrix")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "fovy")))
                   (para "
Specifies the field of view angle, in degrees, in the "
                         (var "y")
                         " direction. "))
            (entry (% (heading (var "aspect")))
                   (para "
Specifies the aspect ratio that determines
                    the field of view in the "
                         (var "x")
                         " direction.
                    The aspect ratio is the ratio of "
                         (var "x")
                         " (width) to "
                         (var "y")
                         " (height). "))
            (entry (% (heading (var "zNear")))
                   (para "
Specifies the distance from the viewer to the near clipping plane
                    (always positive). "))
            (entry (% (heading (var "zFar")))
                   (para "
Specifies the distance from the viewer to the far clipping plane
                    (always positive). ")))
     (heading "Description")
     (para (code "gluPerspective")
           " specifies a viewing frustum into the world coordinate system.
            In general, the aspect ratio in "
           (code "gluPerspective")
           " should match the aspect ratio
            of the associated viewport. For example, "
           (math (var "aspect") "=" "2.0")
           "
means 
            the viewer's
            angle of view is twice as wide in "
           (var "x")
           " as it is in "
           (var "y")
           ".
            If the viewport is
            twice as wide as it is tall, it displays the image without distortion. ")
     (para "
The matrix generated by "
           (code "gluPerspective")
           " is multipled by the current matrix,
            just as if "
           (code "glMultMatrix")
           " were called with the generated matrix.
            To load the perspective matrix onto the current matrix stack instead,
            precede the call to "
           (code "gluPerspective")
           " with a call to "
           (code "glLoadIdentity")
           ". ")
     (para "
Given "
           (var "f")
           " defined as follows: ")
     (para (math (var "f")
                 "="
                 (var "cotangent")
                 "\u2061"
                 "("
                 (var "fovy")
                 "/"
                 "2"
                 ","
                 ")")
           "
The generated matrix is ")
     (para (math "("
                 "("
                 (var "f")
                 "/"
                 (var "aspect")
                 " "
                 "0"
                 " "
                 "0"
                 " "
                 "0"
                 ")"
                 ", "
                 "("
                 "0"
                 " "
                 (var "f")
                 " "
                 "0"
                 " "
                 "0"
                 ")"
                 ", "
                 "("
                 "0"
                 " "
                 "0"
                 " "
                 (var "zFar")
                 "+"
                 (var "zNear")
                 ","
                 "/"
                 (var "zNear")
                 "-"
                 (var "zFar")
                 ","
                 " "
                 "2"
                 "×"
                 (var "zFar")
                 "×"
                 (var "zNear")
                 ","
                 "/"
                 (var "zNear")
                 "-"
                 (var "zFar")
                 ","
                 ")"
                 ", "
                 "("
                 "0"
                 " "
                 "0"
                 " "
                 "-1"
                 " "
                 "0"
                 ")"
                 ","
                 ")"))))

(define-gl-procedure
  gluPickMatrix
  "gluPickMatrix"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluPickMatrix"))
      (paramdef "GLdouble " (parameter "x"))
      (paramdef "GLdouble " (parameter "y"))
      (paramdef "GLdouble " (parameter "delX"))
      (paramdef "GLdouble " (parameter "delY"))
      (paramdef "GLint * " (parameter "viewport"))))
  '(*fragment*
     (heading "define a picking region")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "x")))
                   (itemx (var "y"))
                   (para "
Specify the center of a picking region in window coordinates. "))
            (entry (% (heading (var "delX")))
                   (itemx (var "delY"))
                   (para "
Specify the width and height, respectively, of the picking region in window 
                    coordinates. "))
            (entry (% (heading (var "viewport")))
                   (para "
Specifies the current viewport (as from a "
                         (code "glGetIntegerv")
                         " call). ")))
     (heading "Description")
     (para (code "gluPickMatrix")
           " creates a projection matrix that can be used to restrict drawing
            to a small region of the viewport.
            This is typically useful to
            determine what objects are being drawn near the cursor.
            Use "
           (code "gluPickMatrix")
           " to
            restrict drawing to a small region around the cursor.
            Then,
            enter selection mode (with "
           (code "glRenderMode")
           ") and rerender the scene.
            All primitives that would have been drawn near
            the cursor are identified and stored in the selection buffer. ")
     (para "
The matrix created by "
           (code "gluPickMatrix")
           " is multiplied by the current matrix just
            as if "
           (code "glMultMatrix")
           " is called with the generated matrix.
            To effectively use the generated pick matrix for picking,
            first call "
           (code "glLoadIdentity")
           " to load an identity matrix onto the
            perspective matrix stack.
            Then call "
           (code "gluPickMatrix")
           ",
            and, finally, call a command (such as "
           (code "gluPerspective")
           ")
            to multiply the perspective matrix by the pick matrix. ")
     (para "
When using "
           (code "gluPickMatrix")
           " to pick NURBS, be careful to turn off the NURBS 
            property "
           (code "GLU_AUTO_LOAD_MATRIX")
           ".  If "
           (code "GLU_AUTO_LOAD_MATRIX")
           " is not
            turned off, then any NURBS surface rendered is subdivided differently with
            the pick matrix than the way it was subdivided without the pick matrix. ")))

(define-gl-procedure
  gluProject
  "gluProject"
  (funcsynopsis
    (funcprototype
      (funcdef "GLint " (function "gluProject"))
      (paramdef "GLdouble " (parameter "objX"))
      (paramdef "GLdouble " (parameter "objY"))
      (paramdef "GLdouble " (parameter "objZ"))
      (paramdef
        "const GLdouble * "
        (parameter "model"))
      (paramdef "const GLdouble * " (parameter "proj"))
      (paramdef "const GLint * " (parameter "view"))
      (paramdef "GLdouble* " (parameter "winX"))
      (paramdef "GLdouble* " (parameter "winY"))
      (paramdef "GLdouble* " (parameter "winZ"))))
  '(*fragment*
     (heading
       "map object coordinates to window coordinates")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "objX")))
                   (itemx (var "objY"))
                   (itemx (var "objZ"))
                   (para "
Specify the object coordinates. "))
            (entry (% (heading (var "model")))
                   (para "
Specifies the current modelview matrix (as from a "
                         (code "glGetDoublev")
                         " call). "))
            (entry (% (heading (var "proj")))
                   (para "
Specifies the current projection matrix (as from a "
                         (code "glGetDoublev")
                         " call). "))
            (entry (% (heading (var "view")))
                   (para "
Specifies the current viewport (as from a "
                         (code "glGetIntegerv")
                         " call). "))
            (entry (% (heading (var "winX")))
                   (itemx (var "winY"))
                   (itemx (var "winZ"))
                   (para "
Return the computed window coordinates. ")))
     (heading "Description")
     (para (code "gluProject")
           " transforms the specified object coordinates into window coordinates
            using "
           (var "model")
           ", "
           (var "proj")
           ", and "
           (var "view")
           ". The result is stored 
            in "
           (var "winX")
           ", "
           (var "winY")
           ", and "
           (var "winZ")
           ". A return value of "
           (code "GLU_TRUE")
           " indicates success, a return value of "
           (code "GLU_FALSE")
           "
indicates failure. ")
     (para "
To compute the coordinates,
            let "
           (math (var "v")
                 "="
                 "("
                 (var "objX")
                 ","
                 (var "objY")
                 (var "objZ")
                 "1.0"
                 ")")
           "
represented as a matrix with 4 rows and 1 column.
            Then "
           (code "gluProject")
           " computes "
           (math (var "v") "^" "″")
           "
as follows: ")
     (para (math (var "v")
                 "^"
                 "″"
                 "="
                 (var "P")
                 "×"
                 (var "M")
                 "×"
                 (var "v")))
     (para "
where "
           (math (var "P"))
           "
is the current projection matrix "
           (var "proj")
           " and "
           (math (var "M"))
           "
is the current
            modelview matrix "
           (var "model")
           " (both represented as "
           (math "4" "×" "4")
           "
matrices in column-major order). ")
     (para "
The window coordinates are then computed as follows: ")
     (para (math (var "winX")
                 "="
                 (var "view")
                 "\u2061"
                 "("
                 "0"
                 ","
                 ")"
                 "+"
                 (var "view")
                 "\u2061"
                 "("
                 "2"
                 ","
                 ")"
                 "×"
                 "("
                 (var "v")
                 "^"
                 "″"
                 "\u2061"
                 "("
                 "0"
                 ","
                 ")"
                 "+"
                 "1"
                 ","
                 ")"
                 "/"
                 "2")
           (para (math (var "winY")
                       "="
                       (var "view")
                       "\u2061"
                       "("
                       "1"
                       ","
                       ")"
                       "+"
                       (var "view")
                       "\u2061"
                       "("
                       "3"
                       ","
                       ")"
                       "×"
                       "("
                       (var "v")
                       "^"
                       "″"
                       "\u2061"
                       "("
                       "1"
                       ","
                       ")"
                       "+"
                       "1"
                       ","
                       ")"
                       "/"
                       "2"))
           (para (math (var "winZ")
                       "="
                       "("
                       (var "v")
                       "^"
                       "″"
                       "\u2061"
                       "("
                       "2"
                       ","
                       ")"
                       "+"
                       "1"
                       ","
                       ")"
                       "/"
                       "2")))
     (para)))

(define-gl-procedure
  gluPwlCurve
  "gluPwlCurve"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluPwlCurve"))
      (paramdef "GLUnurbs* " (parameter "nurb"))
      (paramdef "GLint " (parameter "count"))
      (paramdef "GLfloat* " (parameter "data"))
      (paramdef "GLint " (parameter "stride"))
      (paramdef "GLenum " (parameter "type"))))
  '(*fragment*
     (heading
       "describe a piecewise linear NURBS trimming curve")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "nurb")))
                   (para "
Specifies the NURBS object (created with "
                         (code "gluNewNurbsRenderer")
                         "). "))
            (entry (% (heading (var "count")))
                   (para "
Specifies the number of points on the curve. "))
            (entry (% (heading (var "data")))
                   (para "
Specifies an array containing the curve points. "))
            (entry (% (heading (var "stride")))
                   (para "
Specifies the offset (a number of single-precision floating-point values)
                    between points on the curve. "))
            (entry (% (heading (var "type")))
                   (para "
Specifies the type of curve.
                    Must be either "
                         (code "GLU_MAP1_TRIM_2")
                         " or "
                         (code "GLU_MAP1_TRIM_3")
                         ". ")))
     (heading "Description")
     (para (code "gluPwlCurve")
           " describes a piecewise linear trimming curve for a NURBS surface.
            A piecewise linear curve consists of a list of 
            coordinates of points in the parameter space for the
            NURBS surface to be trimmed. These points are connected
            with line segments to form a curve. If the curve is
            an approximation to a curve that is not piecewise linear, 
            the points should be close enough in parameter space that the 
            resulting path appears curved at the resolution used in the application. ")
     (para "
If "
           (var "type")
           " is "
           (code "GLU_MAP1_TRIM_2")
           ", then it describes a curve in two-dimensional ("
           (var "u")
           " and "
           (var "v")
           ") parameter space. If it is "
           (code "GLU_MAP1_TRIM_3")
           ", then it
            describes a curve in two-dimensional homogeneous ("
           (var "u")
           ", "
           (var "v")
           ",
            and "
           (var "w")
           ") parameter space. 
            See the "
           (code "gluBeginTrim")
           " reference page for more information 
            about trimming curves. ")))

(define-gl-procedure
  gluQuadricCallback
  "gluQuadricCallback"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluQuadricCallback"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLenum " (parameter "which"))
      (paramdef
        "_GLUfuncptr "
        (parameter "CallBackFunc"))))
  '(*fragment*
     (heading
       "define a callback for a quadrics object")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "which")))
                   (para "
Specifies the callback being defined.
                    The only valid value is "
                         (code "GLU_ERROR")
                         ". "))
            (entry (% (heading (var "CallBackFunc")))
                   (para "
Specifies the function to be called. ")))
     (heading "Description")
     (para (code "gluQuadricCallback")
           " is used to define a new callback to be used by a quadrics object.
            If the specified callback is already defined, then it is replaced. If "
           (var "CallBackFunc")
           " is NULL, then any existing callback is erased. ")
     (para "
The one legal callback is "
           (code "GLU_ERROR")
           ": ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_ERROR")))
                   (para "
The function is called when an error is encountered. Its single argument
                        is of type GLenum, and it indicates the specific error that occurred.
                        Character strings describing these errors can be retrieved with the "
                         (code "gluErrorString")
                         " call. ")))))

(define-gl-procedure
  gluQuadricDrawStyle
  "gluQuadricDrawStyle"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluQuadricDrawStyle"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLenum " (parameter "draw"))))
  '(*fragment*
     (heading
       "specify the draw style desired for quadrics")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "draw")))
                   (para "
Specifies the desired draw style. Valid values are "
                         (code "GLU_FILL")
                         ", "
                         (code "GLU_LINE")
                         ", "
                         (code "GLU_SILHOUETTE")
                         ", and "
                         (code "GLU_POINT")
                         ". ")))
     (heading "Description")
     (para (code "gluQuadricDrawStyle")
           " specifies the draw style for quadrics rendered with "
           (var "quad")
           ". The legal values are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_FILL")))
                   (para "
Quadrics are rendered with polygon primitives. The polygons 
                        are drawn in a counterclockwise fashion with respect to their
                        normals (as defined with "
                         (code "gluQuadricOrientation")
                         "). "))
            (entry (% (heading (code "GLU_LINE")))
                   (para "
Quadrics are rendered as a set of lines. "))
            (entry (% (heading (code "GLU_SILHOUETTE")))
                   (para "
Quadrics are rendered as a set of lines, except that edges separating
                        coplanar faces will not be drawn. "))
            (entry (% (heading (code "GLU_POINT")))
                   (para "
Quadrics are rendered as a set of points. ")))))

(define-gl-procedure
  gluQuadricNormals
  "gluQuadricNormals"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluQuadricNormals"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLenum " (parameter "normal"))))
  '(*fragment*
     (heading
       "specify what kind of normals are desired for quadrics")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "normal")))
                   (para "
Specifies the desired type of normals. Valid values are "
                         (code "GLU_NONE")
                         ", "
                         (code "GLU_FLAT")
                         ", and "
                         (code "GLU_SMOOTH")
                         ". ")))
     (heading "Description")
     (para (code "gluQuadricNormals")
           " specifies what kind of normals are desired for quadrics rendered with "
           (var "quad")
           ". The legal values are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_NONE")))
                   (para "
No normals are generated. "))
            (entry (% (heading (code "GLU_FLAT")))
                   (para "
One normal is generated for every facet of a quadric. "))
            (entry (% (heading (code "GLU_SMOOTH")))
                   (para "
One normal is generated for every vertex of a quadric. This is the
                        initial value. ")))))

(define-gl-procedure
  gluQuadricOrientation
  "gluQuadricOrientation"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluQuadricOrientation"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLenum " (parameter "orientation"))))
  '(*fragment*
     (heading
       "specify inside/outside orientation for quadrics")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "orientation")))
                   (para "
Specifies the desired orientation. Valid values are "
                         (code "GLU_OUTSIDE")
                         " and "
                         (code "GLU_INSIDE")
                         ". ")))
     (heading "Description")
     (para (code "gluQuadricOrientation")
           " specifies what kind of orientation is desired for quadrics rendered 
            with "
           (var "quad")
           ". The "
           (var "orientation")
           " values are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_OUTSIDE")))
                   (para "
Quadrics are drawn with normals pointing outward (the initial value). "))
            (entry (% (heading (code "GLU_INSIDE")))
                   (para "
Quadrics are drawn with normals pointing inward. ")))
     (para "
Note that the interpretation of "
           (var "outward")
           " and "
           (var "inward")
           " depends on the
            quadric being drawn. ")))

(define-gl-procedure
  gluQuadricTexture
  "gluQuadricTexture"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluQuadricTexture"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLboolean " (parameter "texture"))))
  '(*fragment*
     (heading
       "specify if texturing is desired for quadrics")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "texture")))
                   (para "
Specifies a flag indicating if texture coordinates should be generated. ")))
     (heading "Description")
     (para (code "gluQuadricTexture")
           " specifies if texture coordinates should be generated
            for quadrics rendered with "
           (var "quad")
           ".
            If the value of "
           (var "texture")
           " is "
           (code "GLU_TRUE")
           ", then texture coordinates 
            are generated, and if "
           (var "texture")
           " is "
           (code "GLU_FALSE")
           ", they are not.  The
            initial value is "
           (code "GLU_FALSE")
           ". ")
     (para "
The manner in which texture coordinates are generated depends 
            upon the specific quadric rendered. ")))

(define-gl-procedure
  gluScaleImage
  "gluScaleImage"
  (funcsynopsis
    (funcprototype
      (funcdef "GLint " (function "gluScaleImage"))
      (paramdef "GLenum " (parameter "format"))
      (paramdef "GLsizei " (parameter "wIn"))
      (paramdef "GLsizei " (parameter "hIn"))
      (paramdef "GLenum " (parameter "typeIn"))
      (paramdef "const void * " (parameter "dataIn"))
      (paramdef "GLsizei " (parameter "wOut"))
      (paramdef "GLsizei " (parameter "hOut"))
      (paramdef "GLenum " (parameter "typeOut"))
      (paramdef "GLvoid* " (parameter "dataOut"))))
  '(*fragment*
     (heading "scale an image to an arbitrary size")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "format")))
                   (para "
Specifies the format of the pixel data.
                    The following symbolic values are valid: "
                         (code "GLU_COLOR_INDEX")
                         ", "
                         (code "GLU_STENCIL_INDEX")
                         ", "
                         (code "GLU_DEPTH_COMPONENT")
                         ", "
                         (code "GLU_RED")
                         ", "
                         (code "GLU_GREEN")
                         ", "
                         (code "GLU_BLUE")
                         ", "
                         (code "GLU_ALPHA")
                         ", "
                         (code "GLU_RGB")
                         ", "
                         (code "GLU_RGBA")
                         ", "
                         (code "GLU_BGR")
                         ", "
                         (code "GLU_BGRA")
                         ", "
                         (code "GLU_LUMINANCE")
                         ", and "
                         (code "GLU_LUMINANCE_ALPHA")
                         ". "))
            (entry (% (heading (var "wIn")))
                   (itemx (var "hIn"))
                   (para "
Specify in pixels the width and height, respectively, of the source image. "))
            (entry (% (heading (var "typeIn")))
                   (para "
Specifies the data type for "
                         (var "dataIn")
                         ". Must be one of "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "dataIn")))
                   (para "
Specifies a pointer to the source image. "))
            (entry (% (heading (var "wOut")))
                   (itemx (var "hOut"))
                   (para "
Specify the width and height, respectively, in pixels of the destination image. "))
            (entry (% (heading (var "typeOut")))
                   (para "
Specifies the data type for "
                         (var "dataOut")
                         ". Must be one of "
                         (code "GLU_UNSIGNED_BYTE")
                         ", "
                         (code "GLU_BYTE")
                         ", "
                         (code "GLU_BITMAP")
                         ", "
                         (code "GLU_UNSIGNED_SHORT")
                         ", "
                         (code "GLU_SHORT")
                         ", "
                         (code "GLU_UNSIGNED_INT")
                         ", "
                         (code "GLU_INT")
                         ", "
                         (code "GLU_FLOAT")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_3_3_2")
                         ", "
                         (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_5_5_5_1")
                         ", "
                         (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8")
                         ", "
                         (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
                         ", "
                         (code "GLU_UNSIGNED_INT_10_10_10_2")
                         ", or "
                         (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
                         ". "))
            (entry (% (heading (var "dataOut")))
                   (para "
Specifies a pointer to the destination image. ")))
     (heading "Description")
     (para (code "gluScaleImage")
           " scales a pixel image using the appropriate pixel store modes to 
            unpack data from the source image and pack data into the destination image. ")
     (para "
When shrinking an image, "
           (code "gluScaleImage")
           " uses a box filter to sample the source image
            and create pixels for the destination image.  When magnifying an image,
            the pixels from the source image are linearly interpolated to create the
            destination image. ")
     (para "
A return value of zero indicates success, otherwise a GLU error code is returned (see "
           (code "gluErrorString")
           "). ")
     (para "
See the "
           (code "glReadPixels")
           " reference page for a description of
            the acceptable values for the "
           (var "format")
           ", "
           (var "typeIn")
           ", and "
           (var "typeOut")
           " parameters. ")
     (heading "Errors")
     (para (code "GLU_INVALID_VALUE")
           " is returned if "
           (var "wIn")
           ", "
           (var "hIn")
           ", "
           (var "wOut")
           ", or "
           (var "hOut")
           "
is negative. ")
     (para (code "GLU_INVALID_ENUM")
           " is returned if "
           (var "format")
           ", "
           (var "typeIn")
           ", or "
           (var "typeOut")
           " is not
            legal. ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "typeIn")
           " or "
           (var "typeOut")
           " is "
           (code "GLU_UNSIGNED_BYTE_3_3_2")
           " or "
           (code "GLU_UNSIGNED_BYTE_2_3_3_REV")
           " and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "typeIn")
           " or "
           (var "typeOut")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_6_5")
           " or "
           (code "GLU_UNSIGNED_SHORT_5_6_5_REV")
           " and "
           (var "format")
           " is not "
           (code "GLU_RGB")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "typeIn")
           " or "
           (var "typeOut")
           " is "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4")
           " or "
           (code "GLU_UNSIGNED_SHORT_4_4_4_4_REV")
           " and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "typeIn")
           " or "
           (var "typeOut")
           " is "
           (code "GLU_UNSIGNED_SHORT_5_5_5_1")
           " or "
           (code "GLU_UNSIGNED_SHORT_1_5_5_5_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "typeIn")
           " or "
           (var "typeOut")
           " is "
           (code "GLU_UNSIGNED_INT_8_8_8_8")
           " or "
           (code "GLU_UNSIGNED_INT_8_8_8_8_REV")
           " and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")
     (para (code "GLU_INVALID_OPERATION")
           " is returned if "
           (var "typeIn")
           " or "
           (var "typeOut")
           " is "
           (code "GLU_UNSIGNED_INT_10_10_10_2")
           " or "
           (code "GLU_UNSIGNED_INT_2_10_10_10_REV")
           "
and "
           (var "format")
           " is neither "
           (code "GLU_RGBA")
           " nor "
           (code "GLU_BGRA")
           ". ")))

(define-gl-procedure
  gluSphere
  "gluSphere"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluSphere"))
      (paramdef "GLUquadric* " (parameter "quad"))
      (paramdef "GLdouble " (parameter "radius"))
      (paramdef "GLint " (parameter "slices"))
      (paramdef "GLint " (parameter "stacks"))))
  '(*fragment*
     (heading "draw a sphere")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "quad")))
                   (para "
Specifies the quadrics object (created with "
                         (code "gluNewQuadric")
                         "). "))
            (entry (% (heading (var "radius")))
                   (para "
Specifies the radius of the sphere. "))
            (entry (% (heading (var "slices")))
                   (para "
Specifies the number of subdivisions around the "
                         (var "z")
                         " axis 
                    (similar to lines of longitude). "))
            (entry (% (heading (var "stacks")))
                   (para "
Specifies the number of subdivisions along the "
                         (var "z")
                         " axis
                    (similar to lines of
                    latitude). ")))
     (heading "Description")
     (para (code "gluSphere")
           " draws a sphere of the given radius centered around the origin. The
            sphere is subdivided around the "
           (var "z")
           " axis into slices and along the "
           (var "z")
           " axis 
            into stacks (similar to lines of longitude and latitude). ")
     (para "
If the orientation is set to "
           (code "GLU_OUTSIDE")
           " (with "
           (code "gluQuadricOrientation")
           "), then any normals generated 
            point away from the center of the sphere.
            Otherwise, they point toward the center of the sphere. ")
     (para "
If texturing is turned on (with "
           (code "gluQuadricTexture")
           "), then texture 
            coordinates are 
            generated so that "
           (var "t")
           " ranges from 0.0 at "
           (math (var "z") "=" "-" (var "radius"))
           "
to 1.0 at "
           (math (var "z") "=" (var "radius"))
           "
("
           (var "t")
           " increases linearly along longitudinal
            lines),
            and "
           (var "s")
           " ranges from 0.0 at the +"
           (var "y")
           " axis, to 0.25 at the 
            +"
           (var "x")
           " axis, 
            to 0.5 at the \\-"
           (var "y")
           " axis, to 0.75 at the \\-"
           (var "x")
           " axis, and back to 1.0 
            at the +"
           (var "y")
           " axis. ")))

(define-gl-procedure
  gluTessBeginContour
  "gluTessBeginContour"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluTessBeginContour"))
      (paramdef "GLUtesselator* " (parameter "tess"))))
  '(*fragment*
     (heading "delimit a contour description")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). ")))
     (heading "Description")
     (para (code "gluTessBeginContour")
           " and "
           (code "gluTessEndContour")
           " delimit the definition of a
            polygon contour. Within each "
           (code "gluTessBeginContour")
           "/"
           (code "gluTessEndContour")
           "
pair, there can be zero or more calls to "
           (code "gluTessVertex")
           ". The vertices
            specify a closed contour (the last vertex of each contour is automatically linked 
            to the first).  See the "
           (code "gluTessVertex")
           " reference page for more details. "
           (code "gluTessBeginContour")
           " can only be called between "
           (code "gluTessBeginPolygon")
           " and "
           (code "gluTessEndPolygon")
           ". ")))

(define-gl-procedure
  gluTessBeginPolygon
  "gluTessBeginPolygon"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "gluTessBeginPolygon"))
      (paramdef "GLUtesselator* " (parameter "tess"))
      (paramdef "GLvoid* " (parameter "data"))))
  '(*fragment*
     (heading "delimit a polygon description")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). "))
            (entry (% (heading (var "data")))
                   (para "
Specifies a pointer to user polygon data. ")))
     (heading "Description")
     (para (code "gluTessBeginPolygon")
           " and "
           (code "gluTessEndPolygon")
           " delimit the definition of a
            convex, concave or self-intersecting polygon. Within each "
           (code "gluTessBeginPolygon")
           "/"
           (code "gluTessEndPolygon")
           "
pair, there must be one or more calls to "
           (code "gluTessBeginContour")
           "/"
           (code "gluTessEndContour")
           ". 
            Within each contour, there are zero or more calls to "
           (code "gluTessVertex")
           ". The vertices 
            specify a closed contour (the last vertex of each contour is automatically linked 
            to the first). See the "
           (code "gluTessVertex")
           ", "
           (code "gluTessBeginContour")
           ", and "
           (code "gluTessEndContour")
           " reference pages for more details. ")
     (para (var "data")
           " is a pointer to a user-defined data structure. If the appropriate callback(s) 
            are specified (see "
           (code "gluTessCallback")
           "), then this pointer is returned to the 
            callback function(s). Thus, it is a convenient way to store per-polygon information. ")
     (para "
Once "
           (code "gluTessEndPolygon")
           " is called, the polygon is tessellated, and the
            resulting triangles are described through callbacks.
            See "
           (code "gluTessCallback")
           " for descriptions of the callback functions. ")))

(define-gl-procedure
  gluTessCallback
  "gluTessCallback"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluTessCallback"))
      (paramdef "GLUtesselator* " (parameter "tess"))
      (paramdef "GLenum " (parameter "which"))
      (paramdef
        "_GLUfuncptr "
        (parameter "CallBackFunc"))))
  '(*fragment*
     (heading
       "define a callback for a tessellation object")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). "))
            (entry (% (heading (var "which")))
                   (para "
Specifies the callback being defined. The following values are valid: "
                         (code "GLU_TESS_BEGIN")
                         ", "
                         (code "GLU_TESS_BEGIN_DATA")
                         ", "
                         (code "GLU_TESS_EDGE_FLAG")
                         ", "
                         (code "GLU_TESS_EDGE_FLAG_DATA")
                         ", "
                         (code "GLU_TESS_VERTEX")
                         ", "
                         (code "GLU_TESS_VERTEX_DATA")
                         ", "
                         (code "GLU_TESS_END")
                         ", "
                         (code "GLU_TESS_END_DATA")
                         ", "
                         (code "GLU_TESS_COMBINE")
                         ", "
                         (code "GLU_TESS_COMBINE_DATA")
                         ", "
                         (code "GLU_TESS_ERROR")
                         ", and "
                         (code "GLU_TESS_ERROR_DATA")
                         ". "))
            (entry (% (heading (var "CallBackFunc")))
                   (para "
Specifies the function to be called. ")))
     (heading "Description")
     (para (code "gluTessCallback")
           " is used to indicate a callback to be used by a tessellation object.
            If the specified callback is already defined, then it is replaced. If "
           (var "CallBackFunc")
           " is NULL, then the existing callback becomes undefined. ")
     (para "
These callbacks are used by the tessellation object to describe how a 
            polygon specified by the user is broken into triangles. Note that there 
            are two versions of each callback: one with user-specified polygon data 
            and one without. If both versions of a particular callback are specified, 
            then the callback with user-specified polygon data will be used. Note 
            that the "
           (var "polygon_data")
           " parameter used by some of the functions is
            a copy of the pointer that was specified when "
           (code "gluTessBeginPolygon")
           " was called. The legal callbacks are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_TESS_BEGIN")))
                   (para "
The begin callback is invoked like "
                         (code "glBegin")
                         " to indicate the start of 
                        a (triangle) primitive. The function takes a single argument of type
                        GLenum. If the "
                         (code "GLU_TESS_BOUNDARY_ONLY")
                         " property is set to "
                         (code "GLU_FALSE")
                         ", then the argument is set to either "
                         (code "GLU_TRIANGLE_FAN")
                         ", "
                         (code "GLU_TRIANGLE_STRIP")
                         ", or "
                         (code "GLU_TRIANGLES")
                         ".
                        If the "
                         (code "GLU_TESS_BOUNDARY_ONLY")
                         " property is set to "
                         (code "GLU_TRUE")
                         ",
                        then the argument will be set to "
                         (code "GLU_LINE_LOOP")
                         ". The function
                        prototype for this callback is: "))
            (entry (% (heading (code "GLU_TESS_BEGIN_DATA")))
                   (para "
The same as the "
                         (code "GLU_TESS_BEGIN")
                         " callback except that it 
                        takes an additional pointer argument. This pointer is identical to the 
                        opaque pointer provided when "
                         (code "gluTessBeginPolygon")
                         " was called. The function prototype for this callback
                        is: "))
            (entry (% (heading (code "GLU_TESS_EDGE_FLAG")))
                   (para "
The edge flag callback is similar to "
                         (code "glEdgeFlag")
                         ". The function
                        takes a single boolean flag that indicates which edges lie on the
                        polygon boundary. If the flag is "
                         (code "GLU_TRUE")
                         ", then each vertex
                        that follows begins an edge that lies on the polygon boundary, that is,
                        an edge that separates an interior region from an exterior one.
                        If the flag is "
                         (code "GLU_FALSE")
                         ", then each vertex that follows begins an edge
                        that lies in the polygon interior. The edge flag callback (if defined) is 
                        invoked before the first vertex callback. ")
                   (para "
Since triangle fans and triangle strips do not support edge flags, the begin 
                        callback is not called with "
                         (code "GLU_TRIANGLE_FAN")
                         " or "
                         (code "GLU_TRIANGLE_STRIP")
                         "
if a non-NULL edge flag callback is provided. (If the callback is
                        initialized to NULL, there is no impact on performance). Instead, the fans and
                        strips are converted to independent triangles. The function prototype
                        for this callback is: "))
            (entry (% (heading (code "GLU_TESS_EDGE_FLAG_DATA")))
                   (para "
The same as the "
                         (code "GLU_TESS_EDGE_FLAG")
                         " callback except that it takes an additional pointer
                        argument. This pointer is identical to the opaque pointer provided when "
                         (code "gluTessBeginPolygon")
                         " was called. The function prototype for this callback
                        is: "))
            (entry (% (heading (code "GLU_TESS_VERTEX")))
                   (para "
The vertex callback is invoked between the begin and end callbacks.
                        It is similar to "
                         (code "glVertex")
                         ", and it defines the vertices of the triangles 
                        created by the tessellation process. The function
                        takes a pointer as its only argument.  This pointer is identical to
                        the opaque pointer provided by the user when the vertex was described
                        (see "
                         (code "gluTessVertex")
                         "). The function prototype for this callback is: "))
            (entry (% (heading (code "GLU_TESS_VERTEX_DATA")))
                   (para "
The same as the "
                         (code "GLU_TESS_VERTEX")
                         " callback except that it takes an additional pointer 
                        argument. This pointer is identical to the opaque pointer provided when "
                         (code "gluTessBeginPolygon")
                         " was called. The function prototype for this callback
                        is: "))
            (entry (% (heading (code "GLU_TESS_END")))
                   (para "
The end callback serves the same purpose as "
                         (code "glEnd")
                         ". It indicates the 
                        end of a primitive and it takes no arguments. The function prototype for this
                        callback is: "))
            (entry (% (heading (code "GLU_TESS_END_DATA")))
                   (para "
The same as the "
                         (code "GLU_TESS_END")
                         " callback except that it takes an additional pointer 
                        argument. This pointer is identical to the opaque pointer provided when "
                         (code "gluTessBeginPolygon")
                         " was called. The function prototype for this callback
                        is: "))
            (entry (% (heading (code "GLU_TESS_COMBINE")))
                   (para "
The combine callback is called to create a new vertex when the tessellation
                        detects an intersection or wishes to merge features. The function takes
                        four arguments: an array of three elements each of type GLdouble, an array 
                        of four pointers, an array of four elements each of type GLfloat, and a 
                        pointer to a pointer. The prototype is: ")
                   (para "
The vertex is defined as a linear combination of up to four existing vertices, 
                        stored in "
                         (var "vertex_data")
                         ". The coefficients of the linear
                        combination are given by "
                         (var "weight")
                         "; these weights always add up to 1.
                        All vertex pointers are valid even when some of the weights are 0. "
                         (var "coords")
                         " gives the location of the new vertex. ")
                   (para "
The user must allocate another vertex, interpolate parameters using "
                         (var "vertex_data")
                         " and "
                         (var "weight")
                         ", and return the new vertex pointer in "
                         (var "outData")
                         ". This handle is supplied during rendering callbacks.
                        The user is responsible for freeing the memory some time after "
                         (code "gluTessEndPolygon")
                         " is called. ")
                   (para "
For example, if the polygon lies in an arbitrary plane in 3-space,
                        and a color is associated with each vertex, the "
                         (code "GLU_TESS_COMBINE")
                         " callback might look like this: ")
                   (para "
If the tessellation detects an intersection, then the "
                         (code "GLU_TESS_COMBINE")
                         " or "
                         (code "GLU_TESS_COMBINE_DATA")
                         " callback (see below) must be defined, and it must 
                        write a non-NULL pointer into "
                         (var "dataOut")
                         ". Otherwise the "
                         (code "GLU_TESS_NEED_COMBINE_CALLBACK")
                         " error occurs, and no
                        output is generated. "))
            (entry (% (heading (code "GLU_TESS_COMBINE_DATA")))
                   (para "
The same as the "
                         (code "GLU_TESS_COMBINE")
                         " callback except that it takes an additional pointer 
                        argument. This pointer is identical to the opaque pointer provided when "
                         (code "gluTessBeginPolygon")
                         " was called. The function prototype for this callback
                        is: "))
            (entry (% (heading (code "GLU_TESS_ERROR")))
                   (para "
The error callback is called when an error is encountered. The one argument
                        is of type GLenum; it indicates the specific error that occurred and will be
                        set to one of "
                         (code "GLU_TESS_MISSING_BEGIN_POLYGON")
                         ", "
                         (code "GLU_TESS_MISSING_END_POLYGON")
                         ", "
                         (code "GLU_TESS_MISSING_BEGIN_CONTOUR")
                         ", "
                         (code "GLU_TESS_MISSING_END_CONTOUR")
                         ", "
                         (code "GLU_TESS_COORD_TOO_LARGE")
                         ", "
                         (code "GLU_TESS_NEED_COMBINE_CALLBACK")
                         ", or "
                         (code "GLU_OUT_OF_MEMORY")
                         ". Character
                        strings describing these errors can be retrieved with the "
                         (code "gluErrorString")
                         " call. The function prototype for this callback is: ")
                   (para "
The GLU library will recover from the first four
                        errors by inserting the missing call(s). "
                         (code "GLU_TESS_COORD_TOO_LARGE")
                         " indicates that some vertex coordinate exceeded
                        the predefined constant "
                         (code "GLU_TESS_MAX_COORD")
                         " in absolute value, and
                        that the value has been clamped. (Coordinate values must be small
                        enough so that two can be multiplied together without overflow.) "
                         (code "GLU_TESS_NEED_COMBINE_CALLBACK")
                         " indicates that the tessellation
                        detected an intersection between two edges in the input data, and the "
                         (code "GLU_TESS_COMBINE")
                         " or "
                         (code "GLU_TESS_COMBINE_DATA")
                         " callback was
                        not provided. No output is generated. "
                         (code "GLU_OUT_OF_MEMORY")
                         " indicates
                        that there is not enough memory so no output is generated. "))
            (entry (% (heading (code "GLU_TESS_ERROR_DATA")))
                   (para "
The same as the "
                         (code "GLU_TESS_ERROR")
                         " callback except that it takes an additional pointer 
                        argument. This pointer is identical to the opaque pointer provided when "
                         (code "gluTessBeginPolygon")
                         " was called. The function prototype for this callback
                        is: ")))
     (example "
void begin( GLenum type ); ")
     (example
       "
void beginData( GLenum type, void *polygon_data ); ")
     (example "
void edgeFlag( GLboolean flag ); ")
     (example
       "
void edgeFlagData( GLboolean flag, void *polygon_data ); ")
     (example "
void vertex( void *vertex_data ); ")
     (example
       "
void vertexData( void *vertex_data, void *polygon_data ); ")
     (example "
void end( void ); ")
     (example "
void endData( void *polygon_data ); ")
     (example
       "
void combine( GLdouble coords[3], void *vertex_data[4], 
              GLfloat weight[4], void **outData ); ")
     (example
       "
void myCombine( GLdouble coords[3], VERTEX *d[4],
                GLfloat w[4], VERTEX **dataOut )
{
   VERTEX *new = new_vertex();

   new->x = coords[0];
   new->y = coords[1];
   new->z = coords[2];
   new->r = w[0]*d[0]->r + w[1]*d[1]->r + w[2]*d[2]->r + w[3]*d[3]->r;
   new->g = w[0]*d[0]->g + w[1]*d[1]->g + w[2]*d[2]->g + w[3]*d[3]->g;
   new->b = w[0]*d[0]->b + w[1]*d[1]->b + w[2]*d[2]->b + w[3]*d[3]->b;
   new->a = w[0]*d[0]->a + w[1]*d[1]->a + w[2]*d[2]->a + w[3]*d[3]->a;
   *dataOut = new;
} ")
     (example
       "
void combineData( GLdouble coords[3], void *vertex_data[4], 
                  GLfloat weight[4], void **outData, 
                  void *polygon_data ); ")
     (example "
void error( GLenum errno ); ")
     (example
       "
void errorData( GLenum errno, void *polygon_data ); ")))

(define-gl-procedure
  gluTessEndPolygon
  "gluTessEndPolygon"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluTessEndPolygon"))
      (paramdef "GLUtesselator* " (parameter "tess"))))
  '(*fragment*
     (heading "delimit a polygon description")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). ")))
     (heading "Description")
     (para (code "gluTessBeginPolygon")
           " and "
           (code "gluTessEndPolygon")
           " delimit the
            definition of a convex, concave, or self-intersecting polygon. Within
            each "
           (code "gluTessBeginPolygon")
           "/"
           (code "gluTessEndPolygon")
           " pair, there must be
            one or more calls to "
           (code "gluTessBeginContour")
           "/"
           (code "gluTessEndContour")
           ".
            Within each contour, there are zero or more calls to "
           (code "gluTessVertex")
           ".
            The vertices specify a closed contour (the last vertex of each contour
            is automatically linked to the first). See the "
           (code "gluTessVertex")
           ", "
           (code "gluTessBeginContour")
           ", and "
           (code "gluTessEndContour")
           " reference pages for
            more details. ")
     (para "
Once "
           (code "gluTessEndPolygon")
           " is called, the polygon is tessellated, and the
            resulting triangles are described through callbacks.
            See "
           (code "gluTessCallback")
           " for descriptions of the callback functions. ")))

(define-gl-procedure
  gluTessNormal
  "gluTessNormal"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluTessNormal"))
      (paramdef "GLUtesselator* " (parameter "tess"))
      (paramdef "GLdouble " (parameter "valueX"))
      (paramdef "GLdouble " (parameter "valueY"))
      (paramdef "GLdouble " (parameter "valueZ"))))
  '(*fragment*
     (heading "specify a normal for a polygon")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). "))
            (entry (% (heading (var "valueX")))
                   (para "
Specifies the first component of the normal. "))
            (entry (% (heading (var "valueY")))
                   (para "
Specifies the second component of the normal. "))
            (entry (% (heading (var "valueZ")))
                   (para "
Specifies the third component of the normal. ")))
     (heading "Description")
     (para (code "gluTessNormal")
           " describes a normal for a polygon that the program is defining.
            All input data will be projected onto a plane perpendicular to one of 
            the three coordinate axes before tessellation and all output triangles
            will be oriented CCW with 
            respect to the normal (CW orientation can be obtained by reversing the
            sign of the supplied normal). For example, if you know that all polygons
            lie in the x-y plane, call "
           (code "gluTessNormal")
           "(tess, 0.0, 0.0, 1.0)
            before rendering any polygons. ")
     (para "
If the supplied normal is (0.0, 0.0, 0.0) (the initial value), the normal is
            determined as follows. The direction of the normal, up to its sign, is
            found by fitting a plane to the vertices, without regard to how the
            vertices are connected. It is expected that the input data lies approximately
            in the plane; otherwise, projection perpendicular to one of the three
            coordinate axes may substantially change the geometry. The sign of the
            normal is chosen so that the sum of the signed areas of all input
            contours is nonnegative (where a CCW contour has positive area). ")
     (para "
The supplied normal persists until it is changed by another call to "
           (code "gluTessNormal")
           ". ")))

(define-gl-procedure
  gluTessProperty
  "gluTessProperty"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluTessProperty"))
      (paramdef "GLUtesselator* " (parameter "tess"))
      (paramdef "GLenum " (parameter "which"))
      (paramdef "GLdouble " (parameter "data"))))
  '(*fragment*
     (heading "set a tessellation object property")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). "))
            (entry (% (heading (var "which")))
                   (para "
Specifies the property to be set. Valid values are "
                         (code "GLU_TESS_WINDING_RULE")
                         ", "
                         (code "GLU_TESS_BOUNDARY_ONLY")
                         ", and "
                         (code "GLU_TESS_TOLERANCE")
                         ". "))
            (entry (% (heading (var "data")))
                   (para "
Specifies the value of the indicated property. ")))
     (heading "Description")
     (para (code "gluTessProperty")
           " is used to control properties stored in a tessellation object. These
            properties affect the way that the polygons are interpreted and rendered. 
            The legal values for "
           (var "which")
           " are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLU_TESS_WINDING_RULE")))
                   (para "
Determines which parts of the polygon are on the ``interior''. "
                         (var "data")
                         " may be set to one of "
                         (code "GLU_TESS_WINDING_ODD")
                         ", "
                         (code "GLU_TESS_WINDING_NONZERO")
                         ", "
                         (code "GLU_TESS_WINDING_POSITIVE")
                         ", "
                         (code "GLU_TESS_WINDING_NEGATIVE")
                         ", or "
                         (code "GLU_TESS_WINDING_ABS_GEQ_TWO")
                         ". ")
                   (para "
To understand how the winding rule works, consider that the input 
                        contours partition the plane into regions. The winding rule determines which
                        of these regions are inside the polygon. ")
                   (para "
For a single contour C, the winding number of a point x is simply the signed
                        number of revolutions we make around x as we travel once around C
                        (where CCW is positive). When there are several contours, the individual
                        winding numbers are summed. This procedure associates a signed integer 
                        value with each point x in the plane. Note that the winding number is the
                        same for all points in a single region. ")
                   (para "
The winding rule classifies a region as ``inside'' if its winding number 
                        belongs to the chosen category (odd, nonzero, positive, negative, or
                        absolute value of at least two). The previous GLU tessellator (prior to
                        GLU 1.2) used the ``odd'' rule. The ``nonzero'' rule is another common way to
                        define the interior. The other three rules are useful for polygon CSG
                        operations. "))
            (entry (% (heading (code "GLU_TESS_BOUNDARY_ONLY")))
                   (para "
Is a boolean value (``value'' should be set
                        to GL_TRUE or GL_FALSE). When set to GL_TRUE, a set of closed contours
                        separating the polygon interior and exterior are returned instead of a 
                        tessellation. Exterior contours are oriented CCW with respect to the
                        normal; interior contours are oriented CW. The "
                         (code "GLU_TESS_BEGIN")
                         "
and "
                         (code "GLU_TESS_BEGIN_DATA")
                         " callbacks use the type GL_LINE_LOOP for
                        each contour. "))
            (entry (% (heading (code "GLU_TESS_TOLERANCE")))
                   (para "
Specifies a tolerance for merging features to reduce the size of the output.
                        For example, two vertices that are very close to each other might be
                        replaced by a single vertex. The tolerance is multiplied by the largest
                        coordinate magnitude of any input vertex; this specifies the maximum
                        distance that any feature can move as the result of a single merge
                        operation. If a single feature takes part in several merge operations, the
                        total distance moved could be larger. ")
                   (para "
Feature merging is completely optional; the tolerance is only a hint.
                        The implementation is free to merge in some cases and not in others, or to
                        never merge features at all. The initial tolerance is 0. ")
                   (para "
The current implementation merges vertices only if they are exactly 
                        coincident, regardless of the current tolerance. A vertex is spliced into
                        an edge only if the implementation is unable to distinguish which side of
                        the edge the vertex lies on. Two edges are merged only when both endpoints
                        are identical. ")))))

(define-gl-procedure
  gluTessVertex
  "gluTessVertex"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "gluTessVertex"))
      (paramdef "GLUtesselator* " (parameter "tess"))
      (paramdef "GLdouble * " (parameter "location"))
      (paramdef "GLvoid* " (parameter "data"))))
  '(*fragment*
     (heading "specify a vertex on a polygon")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "tess")))
                   (para "
Specifies the tessellation object (created with "
                         (code "gluNewTess")
                         "). "))
            (entry (% (heading (var "location")))
                   (para "
Specifies the location of the vertex. "))
            (entry (% (heading (var "data")))
                   (para "
Specifies an opaque pointer passed back to the program with the vertex callback
                    (as specified by "
                         (code "gluTessCallback")
                         "). ")))
     (heading "Description")
     (para (code "gluTessVertex")
           " describes a vertex on a polygon that the program defines. Successive "
           (code "gluTessVertex")
           " calls describe a closed contour. For example, 
            to describe a quadrilateral, "
           (code "gluTessVertex")
           " should be called four times. "
           (code "gluTessVertex")
           " can only be called between "
           (code "gluTessBeginContour")
           " and "
           (code "gluTessEndContour")
           ". ")
     (para (var "data")
           " normally points to a structure containing the vertex
            location, as well as other per-vertex attributes such as color and normal.
            This pointer is passed back to the user through the "
           (code "GLU_TESS_VERTEX")
           "
or "
           (code "GLU_TESS_VERTEX_DATA")
           " callback after tessellation 
            (see the "
           (code "gluTessCallback")
           " reference page). ")))

(define-gl-procedure
  gluUnProject4
  "gluUnProject4"
  (funcsynopsis
    (funcprototype
      (funcdef "GLint " (function "gluUnProject4"))
      (paramdef "GLdouble " (parameter "winX"))
      (paramdef "GLdouble " (parameter "winY"))
      (paramdef "GLdouble " (parameter "winZ"))
      (paramdef "GLdouble " (parameter "clipW"))
      (paramdef
        "const GLdouble * "
        (parameter "model"))
      (paramdef "const GLdouble * " (parameter "proj"))
      (paramdef "const GLint * " (parameter "view"))
      (paramdef "GLdouble " (parameter "nearVal"))
      (paramdef "GLdouble " (parameter "farVal"))
      (paramdef "GLdouble* " (parameter "objX"))
      (paramdef "GLdouble* " (parameter "objY"))
      (paramdef "GLdouble* " (parameter "objZ"))
      (paramdef "GLdouble* " (parameter "objW"))))
  '(*fragment*
     (heading
       "map window and clip coordinates to object coordinates")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "winX")))
                   (itemx (var "winY"))
                   (itemx (var "winZ"))
                   (para "
Specify the window coordinates to be mapped. "))
            (entry (% (heading (var "clipW")))
                   (para "
Specify the clip w coordinate to be mapped. "))
            (entry (% (heading (var "model")))
                   (para "
Specifies the modelview matrix (as from a "
                         (code "glGetDoublev")
                         " call). "))
            (entry (% (heading (var "proj")))
                   (para "
Specifies the projection matrix (as from a "
                         (code "glGetDoublev")
                         " call). "))
            (entry (% (heading (var "view")))
                   (para "
Specifies the viewport (as from a "
                         (code "glGetIntegerv")
                         " call). "))
            (entry (% (heading (var "nearVal")))
                   (itemx (var "farVal"))
                   (para "
Specifies the near and far planes (as from a "
                         (code "glGetDoublev")
                         " call). "))
            (entry (% (heading (var "objX")))
                   (itemx (var "objY"))
                   (itemx (var "objZ"))
                   (itemx (var "objW"))
                   (para "
Returns the computed object coordinates. ")))
     (heading "Description")
     (para (code "gluUnProject4")
           " maps the specified window coordinatesi: "
           (var "winX")
           ", "
           (var "winY")
           ", and "
           (var "winZ")
           "
and its clip w coordinate "
           (var "clipW")
           "
into object 
            coordinates "
           (math "("
                 (var "objX")
                 ","
                 (var "objY")
                 (var "objZ")
                 (var "objW")
                 ")")
           "
using "
           (var "model")
           ", "
           (var "proj")
           ", and "
           (var "view")
           ". "
           (var "clipW")
           " can be other than
            1 as for vertices in "
           (code "glFeedbackBuffer")
           " when data type "
           (code "GLU_4D_COLOR_TEXTURE")
           " is returned.
            This also handles the case
            where the "
           (var "nearVal")
           " and "
           (var "farVal")
           " planes are different from the default,
            0 and 1, respectively.
            A return 
            value of "
           (code "GLU_TRUE")
           " indicates success; a return value of "
           (code "GLU_FALSE")
           "
indicates failure. ")
     (para "
To compute the coordinates "
           (math "("
                 (var "objX")
                 ","
                 (var "objY")
                 (var "objZ")
                 (var "objW")
                 ")")
           ", "
           (code "gluUnProject4")
           " multiplies the normalized device coordinates by the inverse of "
           (var "model")
           " * "
           (var "proj")
           " as follows: ")
     (para (math "("
                 "("
                 (var "objX")
                 ")"
                 ", "
                 "("
                 (var "objY")
                 ")"
                 ", "
                 "("
                 (var "objZ")
                 ")"
                 ", "
                 "("
                 (var "objW")
                 ")"
                 ","
                 ")"
                 "="
                 (var "INV")
                 "\u2061"
                 "("
                 (var "P")
                 "\u2062"
                 (var "M")
                 ","
                 ")"
                 "\u2062"
                 "("
                 "("
                 "2"
                 "\u2061"
                 "("
                 (var "winX")
                 "-"
                 (var "view")
                 "\u2061"
                 "["
                 "0"
                 ","
                 "]"
                 ","
                 ")"
                 ","
                 "/"
                 (var "view")
                 "\u2061"
                 "["
                 "2"
                 ","
                 "]"
                 ","
                 "-"
                 "1"
                 ")"
                 ", "
                 "("
                 "2"
                 "\u2061"
                 "("
                 (var "winY")
                 "-"
                 (var "view")
                 "\u2061"
                 "["
                 "1"
                 ","
                 "]"
                 ","
                 ")"
                 ","
                 "/"
                 (var "view")
                 "\u2061"
                 "["
                 "3"
                 ","
                 "]"
                 ","
                 "-"
                 "1"
                 ")"
                 ", "
                 "("
                 "2"
                 "\u2061"
                 "("
                 (var "winZ")
                 "-"
                 (var "nearVal")
                 ","
                 ")"
                 ","
                 "/"
                 "("
                 (var "farVal")
                 "-"
                 (var "nearVal")
                 ","
                 ")"
                 ","
                 "-"
                 "1"
                 ")"
                 ", "
                 "("
                 (var "clipW")
                 ")"
                 ","
                 ")"))
     (para (math (var "INV"))
           "
denotes matrix inversion. ")
     (para (code "gluUnProject4")
           " is equivalent to "
           (code "gluUnProject")
           " when "
           (var "clipW")
           " is 1, "
           (var "nearVal")
           " is 0, and "
           (var "farVal")
           " is 1. ")))

(define-gl-procedure
  gluUnProject
  "gluUnProject"
  (funcsynopsis
    (funcprototype
      (funcdef "GLint " (function "gluUnProject"))
      (paramdef "GLdouble " (parameter "winX"))
      (paramdef "GLdouble " (parameter "winY"))
      (paramdef "GLdouble " (parameter "winZ"))
      (paramdef
        "const GLdouble * "
        (parameter "model"))
      (paramdef "const GLdouble * " (parameter "proj"))
      (paramdef "const GLint * " (parameter "view"))
      (paramdef "GLdouble* " (parameter "objX"))
      (paramdef "GLdouble* " (parameter "objY"))
      (paramdef "GLdouble* " (parameter "objZ"))))
  '(*fragment*
     (heading
       "map window coordinates to object coordinates")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "winX")))
                   (itemx (var "winY"))
                   (itemx (var "winZ"))
                   (para "
Specify the window coordinates to be mapped. "))
            (entry (% (heading (var "model")))
                   (para "
Specifies the modelview matrix (as from a "
                         (code "glGetDoublev")
                         " call). "))
            (entry (% (heading (var "proj")))
                   (para "
Specifies the projection matrix (as from a "
                         (code "glGetDoublev")
                         " call). "))
            (entry (% (heading (var "view")))
                   (para "
Specifies the viewport (as from a "
                         (code "glGetIntegerv")
                         " call). "))
            (entry (% (heading (var "objX")))
                   (itemx (var "objY"))
                   (itemx (var "objZ"))
                   (para "
Returns the computed object coordinates. ")))
     (heading "Description")
     (para (code "gluUnProject")
           " maps the specified window coordinates into object 
            coordinates using "
           (var "model")
           ", "
           (var "proj")
           ", and "
           (var "view")
           ".
            The result is stored in "
           (var "objX")
           ", "
           (var "objY")
           ", and "
           (var "objZ")
           ". A return value of "
           (code "GLU_TRUE")
           " indicates success; a return value of "
           (code "GLU_FALSE")
           "
indicates failure. ")
     (para "
To compute the coordinates "
           (math "("
                 (var "objX")
                 ","
                 (var "objY")
                 (var "objZ")
                 ")")
           ", "
           (code "gluUnProject")
           " multiplies the normalized device coordinates by the inverse of "
           (var "model")
           " * "
           (var "proj")
           " as follows: ")
     (para (math "("
                 "("
                 (var "objX")
                 ")"
                 ", "
                 "("
                 (var "objY")
                 ")"
                 ", "
                 "("
                 (var "objZ")
                 ")"
                 ", "
                 "("
                 (var "W")
                 ")"
                 ","
                 ")"
                 "="
                 (var "INV")
                 "\u2061"
                 "("
                 (var "P")
                 "\u2062"
                 (var "M")
                 ","
                 ")"
                 "\u2062"
                 "("
                 "("
                 "2"
                 "\u2061"
                 "("
                 (var "winX")
                 "-"
                 (var "view")
                 "\u2061"
                 "["
                 "0"
                 ","
                 "]"
                 ","
                 ")"
                 ","
                 "/"
                 (var "view")
                 "\u2061"
                 "["
                 "2"
                 ","
                 "]"
                 ","
                 "-"
                 "1"
                 ")"
                 ", "
                 "("
                 "2"
                 "\u2061"
                 "("
                 (var "winY")
                 "-"
                 (var "view")
                 "\u2061"
                 "["
                 "1"
                 ","
                 "]"
                 ","
                 ")"
                 ","
                 "/"
                 (var "view")
                 "\u2061"
                 "["
                 "3"
                 ","
                 "]"
                 ","
                 "-"
                 "1"
                 ")"
                 ", "
                 "("
                 "2"
                 "\u2061"
                 "("
                 (var "winZ")
                 ","
                 ")"
                 "-"
                 "1"
                 ")"
                 ", "
                 "("
                 "1"
                 ")"
                 ","
                 ")")
           (math (var "INV"))
           "
denotes matrix inversion. 
            W is an unused variable, included for consistent matrix notation. ")))

