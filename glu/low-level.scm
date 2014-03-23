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
;;; Derived from upstream OpenGL documentation.
;;; 
;;; Copyright (C) 1991-2006 Silicon Graphics, Inc.  This document is
;;; licensed under the SGI Free Software B License.  For details, see
;;; http://oss.sgi.com/projects/FreeB/ (http://oss.sgi.com/projects/FreeB/).
;;;
;;; Automatically generated; you probably don't want to edit this.  To
;;; update, run "make update" in the top-level build tree.
;;;

(define-module
  (glu low-level)
  #:use-module
  (glu runtime)
  #:use-module
  (glu types)
  #:export
  (gluBeginCurve
    gluEndCurve
    gluBeginPolygon
    gluEndPolygon
    gluBeginSurface
    gluEndSurface
    gluBeginTrim
    gluEndTrim
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
    gluTessEndContour
    gluTessBeginPolygon
    gluTessCallback
    gluTessEndPolygon
    gluTessNormal
    gluTessProperty
    gluTessVertex
    gluUnProject4
    gluUnProject))

(define-glu-procedures
  ((gluBeginCurve (nurb GLUnurbs*) -> void)
   (gluEndCurve (nurb GLUnurbs*) -> void))
  "Delimit a NURBS curve definition.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

Use `gluBeginCurve' to mark the beginning of a NURBS curve definition.
After calling `gluBeginCurve', make one or more calls to `gluNurbsCurve'
to define the attributes of the curve.  Exactly one of the calls to
`gluNurbsCurve' must have a curve type of `GLU_MAP1_VERTEX_3' or
`GLU_MAP1_VERTEX_4'.  To mark the end of the NURBS curve definition,
call `gluEndCurve'.

GL evaluators are used to render the NURBS curve as a series of line
segments.  Evaluator state is preserved during rendering with
`glPushAttrib'(`GLU_EVAL_BIT') and `glPopAttrib'().  See the
`glPushAttrib' reference page for details on exactly what state these
calls preserve.")

(define-glu-procedures
  ((gluBeginPolygon (tess GLUtesselator*) -> void)
   (gluEndPolygon (tess GLUtesselator*) -> void))
  "Delimit a polygon description.

TESS
     Specifies the tessellation object (created with `gluNewTess').

`gluBeginPolygon' and `gluEndPolygon' delimit the definition of a
nonconvex polygon.  To define such a polygon, first call
`gluBeginPolygon'.  Then define the contours of the polygon by calling
`gluTessVertex' for each vertex and `gluNextContour' to start each new
contour.  Finally, call `gluEndPolygon' to signal the end of the
definition.  See the `gluTessVertex' and `gluNextContour' reference
pages for more details.

Once `gluEndPolygon' is called, the polygon is tessellated, and the
resulting triangles are described through callbacks.  See
`gluTessCallback' for descriptions of the callback functions.")

(define-glu-procedures
  ((gluBeginSurface (nurb GLUnurbs*) -> void)
   (gluEndSurface (nurb GLUnurbs*) -> void))
  "Delimit a NURBS surface definition.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

Use `gluBeginSurface' to mark the beginning of a NURBS surface
definition.  After calling `gluBeginSurface', make one or more calls to
`gluNurbsSurface' to define the attributes of the surface.  Exactly one
of these calls to `gluNurbsSurface' must have a surface type of
`GLU_MAP2_VERTEX_3' or `GLU_MAP2_VERTEX_4'.  To mark the end of the
NURBS surface definition, call `gluEndSurface'.

Trimming of NURBS surfaces is supported with `gluBeginTrim',
`gluPwlCurve', `gluNurbsCurve', and `gluEndTrim'.  See the
`gluBeginTrim' reference page for details.

GL evaluators are used to render the NURBS surface as a set of polygons.
Evaluator state is preserved during rendering with
`glPushAttrib'(`GLU_EVAL_BIT') and `glPopAttrib'.  See the
`glPushAttrib' reference page for details on exactly what state these
calls preserve.")

(define-glu-procedures
  ((gluBeginTrim (nurb GLUnurbs*) -> void)
   (gluEndTrim (nurb GLUnurbs*) -> void))
  "Delimit a NURBS trimming loop definition.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

Use `gluBeginTrim' to mark the beginning of a trimming loop and
`gluEndTrim' to mark the end of a trimming loop.  A trimming loop is a
set of oriented curve segments (forming a closed curve) that define
boundaries of a NURBS surface.  You include these trimming loops in the
definition of a NURBS surface, between calls to `gluBeginSurface' and
`gluEndSurface'.

The definition for a NURBS surface can contain many trimming loops.  For
example, if you wrote a definition for a NURBS surface that resembled a
rectangle with a hole punched out, the definition would contain two
trimming loops.  One loop would define the outer edge of the rectangle;
the other would define the hole punched out of the rectangle.  The
definitions of each of these trimming loops would be bracketed by a
`gluBeginTrim'/`gluEndTrim' pair.

The definition of a single closed trimming loop can consist of multiple
curve segments, each described as a piecewise linear curve (see
`gluPwlCurve') or as a single NURBS curve (see `gluNurbsCurve'), or as a
combination of both in any order.  The only library calls that can
appear in a trimming loop definition (between the calls to
`gluBeginTrim' and `gluEndTrim') are `gluPwlCurve' and `gluNurbsCurve'.

The area of the NURBS surface that is displayed is the region in the
domain to the left of the trimming curve as the curve parameter
increases.  Thus, the retained region of the NURBS surface is inside a
counterclockwise trimming loop and outside a clockwise trimming loop.
For the rectangle mentioned earlier, the trimming loop for the outer
edge of the rectangle runs counterclockwise, while the trimming loop for
the punched-out hole runs clockwise.

If you use more than one curve to define a single trimming loop, the
curve segments must form a closed loop (that is, the endpoint of each
curve must be the starting point of the next curve, and the endpoint of
the final curve must be the starting point of the first curve).  If the
endpoints of the curve are sufficiently close together but not exactly
coincident, they will be coerced to match.  If the endpoints are not
sufficiently close, an error results (see `gluNurbsCallback').

If a trimming loop definition contains multiple curves, the direction of
the curves must be consistent (that is, the inside must be to the left
of all of the curves).  Nested trimming loops are legal as long as the
curve orientations alternate correctly.  If trimming curves are
self-intersecting, or intersect one another, an error results.

If no trimming information is given for a NURBS surface, the entire
surface is drawn.")

(define-glu-procedures
  ((gluBuild1DMipmapLevels
     (target GLenum)
     (internalFormat GLint)
     (width GLsizei)
     (format GLenum)
     (type GLenum)
     (level GLint)
     (base GLint)
     (max GLint)
     (data const-void-*)
     ->
     GLint))
  "Builds a subset of one-dimensional mipmap levels.

TARGET
     Specifies the target texture.  Must be `GLU_TEXTURE_1D'.

INTERNALFORMAT
     Requests the internal storage format of the texture image.  The
     most current version of the SGI implementation of GLU does not
     check this value for validity before passing it on to the
     underlying OpenGL implementation.  A value that is not accepted by
     the OpenGL implementation will lead to an OpenGL error.  The
     benefit of not checking this value at the GLU level is that OpenGL
     extensions can add new internal texture formats without requiring a
     revision of the GLU implementation.  Older implementations of GLU
     check this value and raise a GLU error if it is not 1, 2, 3, or 4
     or one of the following symbolic constants: `GLU_ALPHA',
     `GLU_ALPHA4', `GLU_ALPHA8', `GLU_ALPHA12', `GLU_ALPHA16',
     `GLU_LUMINANCE', `GLU_LUMINANCE4', `GLU_LUMINANCE8',
     `GLU_LUMINANCE12', `GLU_LUMINANCE16', `GLU_LUMINANCE_ALPHA',
     `GLU_LUMINANCE4_ALPHA4', `GLU_LUMINANCE6_ALPHA2',
     `GLU_LUMINANCE8_ALPHA8', `GLU_LUMINANCE12_ALPHA4',
     `GLU_LUMINANCE12_ALPHA12', `GLU_LUMINANCE16_ALPHA16',
     `GLU_INTENSITY', `GLU_INTENSITY4', `GLU_INTENSITY8',
     `GLU_INTENSITY12', `GLU_INTENSITY16', `GLU_RGB', `GLU_R3_G3_B2',
     `GLU_RGB4', `GLU_RGB5', `GLU_RGB8', `GLU_RGB10', `GLU_RGB12',
     `GLU_RGB16', `GLU_RGBA', `GLU_RGBA2', `GLU_RGBA4', `GLU_RGB5_A1',
     `GLU_RGBA8', `GLU_RGB10_A2', `GLU_RGBA12', or `GLU_RGBA16'.

WIDTH
     Specifies the width in pixels of the texture image.  This should be
     a power of 2.

FORMAT
     Specifies the format of the pixel data.  Must be one of:
     `GLU_COLOR_INDEX', `GLU_DEPTH_COMPONENT', `GLU_RED', `GLU_GREEN',
     `GLU_BLUE', `GLU_ALPHA', `GLU_RGB', `GLU_RGBA', `GLU_BGR',
     `GLU_BGRA', `GLU_LUMINANCE', or `GLU_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type for DATA.  Must be one of:
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

LEVEL
     Specifies the mipmap level of the image data.

BASE
     Specifies the minimum mipmap level to pass to `glTexImage1D'.

MAX
     Specifies the maximum mipmap level to pass to `glTexImage1D'.

DATA
     Specifies a pointer to the image data in memory.

`gluBuild1DMipmapLevels' builds a subset of prefiltered one-dimensional
texture maps of decreasing resolutions called a mipmap.  This is used
for the antialiasing of texture mapped primitives.

A return value of zero indicates success, otherwise a GLU error code is
returned (see `gluErrorString').

A series of mipmap levels from BASE to MAX is built by decimating DATA
in half until size 1×1 is reached.  At each level, each texel in the
halved mipmap level is an average of the corresponding two texels in the
larger mipmap level.  `glTexImage1D' is called to load these mipmap
levels from BASE to MAX.  If MAX is larger than the highest mipmap level
for the texture of the specified size, then a GLU error code is returned
(see `gluErrorString') and nothing is loaded.

For example, if LEVEL is 2 and WIDTH is 16, the following levels are
possible: 16×1 , 8×1 , 4×1 , 2×1 , 1×1 .  These correspond to levels 2
through 6 respectively.  If BASE is 3 and MAX is 5, then only mipmap
levels 8×1 , 4×1 and 2×1 are loaded.  However, if MAX is 7, then an
error is returned and nothing is loaded since MAX is larger than the
highest mipmap level which is, in this case, 6.

The highest mipmap level can be derived from the formula
LOG_2\u2061(WIDTH×2^LEVEL,) .

See the `glTexImage1D' reference page for a description of the
acceptable values for TYPE parameter.  See the `glDrawPixels' reference
page for a description of the acceptable values for LEVEL parameter.

`GLU_INVALID_VALUE' is returned if LEVEL > BASE, BASE < 0, MAX < BASE or
MAX is > the highest mipmap level for DATA.

`GLU_INVALID_VALUE' is returned if WIDTH is < 1.

`GLU_INVALID_ENUM' is returned if INTERNALFORMAT, FORMAT, or TYPE are
not legal.

`GLU_INVALID_OPERATION' is returned if TYPE is `GLU_UNSIGNED_BYTE_3_3_2'
or `GLU_UNSIGNED_BYTE_2_3_3_REV' and FORMAT is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_6_5' or `GLU_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_4_4_4_4' or `GLU_UNSIGNED_SHORT_4_4_4_4_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_5_5_1' or `GLU_UNSIGNED_SHORT_1_5_5_5_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_8_8_8_8' or `GLU_UNSIGNED_INT_8_8_8_8_REV' and FORMAT
is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_10_10_10_2' or `GLU_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.")

(define-glu-procedures
  ((gluBuild1DMipmaps
     (target GLenum)
     (internalFormat GLint)
     (width GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-void-*)
     ->
     GLint))
  "Builds a one-dimensional mipmap.

TARGET
     Specifies the target texture.  Must be `GLU_TEXTURE_1D'.

INTERNALFORMAT
     Requests the internal storage format of the texture image.  The
     most current version of the SGI implementation of GLU does not
     check this value for validity before passing it on to the
     underlying OpenGL implementation.  A value that is not accepted by
     the OpenGL implementation will lead to an OpenGL error.  The
     benefit of not checking this value at the GLU level is that OpenGL
     extensions can add new internal texture formats without requiring a
     revision of the GLU implementation.  Older implementations of GLU
     check this value and raise a GLU error if it is not 1, 2, 3, or 4
     or one of the following symbolic constants: `GLU_ALPHA',
     `GLU_ALPHA4', `GLU_ALPHA8', `GLU_ALPHA12', `GLU_ALPHA16',
     `GLU_LUMINANCE', `GLU_LUMINANCE4', `GLU_LUMINANCE8',
     `GLU_LUMINANCE12', `GLU_LUMINANCE16', `GLU_LUMINANCE_ALPHA',
     `GLU_LUMINANCE4_ALPHA4', `GLU_LUMINANCE6_ALPHA2',
     `GLU_LUMINANCE8_ALPHA8', `GLU_LUMINANCE12_ALPHA4',
     `GLU_LUMINANCE12_ALPHA12', `GLU_LUMINANCE16_ALPHA16',
     `GLU_INTENSITY', `GLU_INTENSITY4', `GLU_INTENSITY8',
     `GLU_INTENSITY12', `GLU_INTENSITY16', `GLU_RGB', `GLU_R3_G3_B2',
     `GLU_RGB4', `GLU_RGB5', `GLU_RGB8', `GLU_RGB10', `GLU_RGB12',
     `GLU_RGB16', `GLU_RGBA', `GLU_RGBA2', `GLU_RGBA4', `GLU_RGB5_A1',
     `GLU_RGBA8', `GLU_RGB10_A2', `GLU_RGBA12', or `GLU_RGBA16'.

WIDTH
     Specifies the width, in pixels, of the texture image.

FORMAT
     Specifies the format of the pixel data.  Must be one of
     `GLU_COLOR_INDEX', `GLU_DEPTH_COMPONENT', `GLU_RED', `GLU_GREEN',
     `GLU_BLUE', `GLU_ALPHA', `GLU_RGB', `GLU_RGBA', `GLU_BGR',
     `GLU_BGRA', `GLU_LUMINANCE', or `GLU_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type for DATA.  Must be one of
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

`gluBuild1DMipmaps' builds a series of prefiltered one-dimensional
texture maps of decreasing resolutions called a mipmap.  This is used
for the antialiasing of texture mapped primitives.

A return value of zero indicates success, otherwise a GLU error code is
returned (see `gluErrorString').

Initially, the WIDTH of DATA is checked to see if it is a power of 2.  If
not, a copy of DATA is scaled up or down to the nearest power of 2.  (If
WIDTH is exactly between powers of 2, then the copy of DATA will scale
upwards.) This copy will be used for subsequent mipmapping operations
described below.  For example, if WIDTH is 57, then a copy of DATA will
scale up to 64 before mipmapping takes place.

Then, proxy textures (see `glTexImage1D') are used to determine if the
implementation can fit the requested texture.  If not, WIDTH is
continually halved until it fits.

Next, a series of mipmap levels is built by decimating a copy of DATA in
half until size 1×1 is reached.  At each level, each texel in the halved
mipmap level is an average of the corresponding two texels in the larger
mipmap level.

`glTexImage1D' is called to load each of these mipmap levels.  Level 0
is a copy of DATA.  The highest level is LOG_2,\u2061(WIDTH,) .  For example,
if WIDTH is 64 and the implementation can store a texture of this size,
the following mipmap levels are built: 64×1 , 32×1 , 16×1 , 8×1 , 4×1 ,
2×1 , and 1×1 .  These correspond to levels 0 through 6, respectively.

See the `glTexImage1D' reference page for a description of the
acceptable values for the TYPE parameter.  See the `glDrawPixels'
reference page for a description of the acceptable values for the DATA
parameter.

`GLU_INVALID_VALUE' is returned if WIDTH is < 1.

`GLU_INVALID_ENUM' is returned if FORMAT or TYPE are not legal.

`GLU_INVALID_OPERATION' is returned if TYPE is `GLU_UNSIGNED_BYTE_3_3_2'
or `GLU_UNSIGNED_BYTE_2_3_3_REV' and FORMAT is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_6_5' or `GLU_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_4_4_4_4' or `GLU_UNSIGNED_SHORT_4_4_4_4_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_5_5_1' or `GLU_UNSIGNED_SHORT_1_5_5_5_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_8_8_8_8' or `GLU_UNSIGNED_INT_8_8_8_8_REV' and FORMAT
is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_10_10_10_2' or `GLU_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.")

(define-glu-procedures
  ((gluBuild2DMipmapLevels
     (target GLenum)
     (internalFormat GLint)
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (type GLenum)
     (level GLint)
     (base GLint)
     (max GLint)
     (data const-void-*)
     ->
     GLint))
  "Builds a subset of two-dimensional mipmap levels.

TARGET
     Specifies the target texture.  Must be `GLU_TEXTURE_2D'.

INTERNALFORMAT
     Requests the internal storage format of the texture image.  The
     most current version of the SGI implementation of GLU does not
     check this value for validity before passing it on to the
     underlying OpenGL implementation.  A value that is not accepted by
     the OpenGL implementation will lead to an OpenGL error.  The
     benefit of not checking this value at the GLU level is that OpenGL
     extensions can add new internal texture formats without requiring a
     revision of the GLU implementation.  Older implementations of GLU
     check this value and raise a GLU error if it is not 1, 2, 3, or 4
     or one of the following symbolic constants: `GLU_ALPHA',
     `GLU_ALPHA4', `GLU_ALPHA8', `GLU_ALPHA12', `GLU_ALPHA16',
     `GLU_LUMINANCE', `GLU_LUMINANCE4', `GLU_LUMINANCE8',
     `GLU_LUMINANCE12', `GLU_LUMINANCE16', `GLU_LUMINANCE_ALPHA',
     `GLU_LUMINANCE4_ALPHA4', `GLU_LUMINANCE6_ALPHA2',
     `GLU_LUMINANCE8_ALPHA8', `GLU_LUMINANCE12_ALPHA4',
     `GLU_LUMINANCE12_ALPHA12', `GLU_LUMINANCE16_ALPHA16',
     `GLU_INTENSITY', `GLU_INTENSITY4', `GLU_INTENSITY8',
     `GLU_INTENSITY12', `GLU_INTENSITY16', `GLU_RGB', `GLU_R3_G3_B2',
     `GLU_RGB4', `GLU_RGB5', `GLU_RGB8', `GLU_RGB10', `GLU_RGB12',
     `GLU_RGB16', `GLU_RGBA', `GLU_RGBA2', `GLU_RGBA4', `GLU_RGB5_A1',
     `GLU_RGBA8', `GLU_RGB10_A2', `GLU_RGBA12', or `GLU_RGBA16'.

WIDTH
     HEIGHT

     Specifies the width and height, respectively, in pixels of the
     texture image.  These should be a power of 2.

FORMAT
     Specifies the format of the pixel data.  Must be one of
     `GLU_COLOR_INDEX', `GLU_DEPTH_COMPONENT', `GLU_RED', `GLU_GREEN',
     `GLU_BLUE', `GLU_ALPHA', `GLU_RGB', `GLU_RGBA', `GLU_BGR',
     `GLU_BGRA', `GLU_LUMINANCE', or `GLU_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type for DATA.  Must be one of
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

LEVEL
     Specifies the mipmap level of the image data.

BASE
     Specifies the minimum mipmap level to pass to `glTexImage2D'.

MAX
     Specifies the maximum mipmap level to pass to `glTexImage2D'.

DATA
     Specifies a pointer to the image data in memory.

`gluBuild2DMipmapLevels' builds a subset of prefiltered two-dimensional
texture maps of decreasing resolutions called a mipmap.  This is used
for the antialiasing of texture mapped primitives.

A return value of zero indicates success, otherwise a GLU error code is
returned (see `gluErrorString').

A series of mipmap levels from BASE to MAX is built by decimating DATA
in half along both dimensions until size 1×1 is reached.  At each level,
each texel in the halved mipmap level is an average of the corresponding
four texels in the larger mipmap level.  (In the case of rectangular
images, the decimation will ultimately reach an N×1 or 1×N
configuration.  Here, two texels are averaged instead.) `glTexImage2D'
is called to load these mipmap levels from BASE to MAX.  If MAX is
larger than the highest mipmap level for the texture of the specified
size, then a GLU error code is returned (see `gluErrorString') and
nothing is loaded.

For example, if LEVEL is 2 and WIDTH is 16 and HEIGHT is 8, the
following levels are possible: 16×8 , 8×4 , 4×2 , 2×1 , 1×1 .  These
correspond to levels 2 through 6 respectively.  If BASE is 3 and MAX is
5, then only mipmap levels 8×4 , 4×2 , and 2×1 are loaded.  However, if
MAX is 7, then an error is returned and nothing is loaded since MAX is
larger than the highest mipmap level which is, in this case, 6.

The highest mipmap level can be derived from the formula
LOG_2\u2061(MAX\u2061(WIDTH,HEIGHT)×2^LEVEL,) .

See the `glTexImage1D' reference page for a description of the
acceptable values for FORMAT parameter.  See the `glDrawPixels'
reference page for a description of the acceptable values for TYPE
parameter.

`GLU_INVALID_VALUE' is returned if LEVEL > BASE, BASE < 0, MAX < BASE,
or MAX is > the highest mipmap level for DATA.

`GLU_INVALID_VALUE' is returned if WIDTH or HEIGHT is < 1.

`GLU_INVALID_ENUM' is returned if INTERNALFORMAT, FORMAT, or TYPE is not
legal.

`GLU_INVALID_OPERATION' is returned if TYPE is `GLU_UNSIGNED_BYTE_3_3_2'
or `GLU_UNSIGNED_BYTE_2_3_3_REV' and FORMAT is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_6_5' or `GLU_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_4_4_4_4' or `GLU_UNSIGNED_SHORT_4_4_4_4_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_5_5_1' or `GLU_UNSIGNED_SHORT_1_5_5_5_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_8_8_8_8' or `GLU_UNSIGNED_INT_8_8_8_8_REV' and FORMAT
is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_10_10_10_2' or `GLU_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.")

(define-glu-procedures
  ((gluBuild2DMipmaps
     (target GLenum)
     (internalFormat GLint)
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-void-*)
     ->
     GLint))
  "Builds a two-dimensional mipmap.

TARGET
     Specifies the target texture.  Must be `GLU_TEXTURE_2D'.

INTERNALFORMAT
     Requests the internal storage format of the texture image.  The
     most current version of the SGI implementation of GLU does not
     check this value for validity before passing it on to the
     underlying OpenGL implementation.  A value that is not accepted by
     the OpenGL implementation will lead to an OpenGL error.  The
     benefit of not checking this value at the GLU level is that OpenGL
     extensions can add new internal texture formats without requiring a
     revision of the GLU implementation.  Older implementations of GLU
     check this value and raise a GLU error if it is not 1, 2, 3, or 4
     or one of the following symbolic constants: `GLU_ALPHA',
     `GLU_ALPHA4', `GLU_ALPHA8', `GLU_ALPHA12', `GLU_ALPHA16',
     `GLU_LUMINANCE', `GLU_LUMINANCE4', `GLU_LUMINANCE8',
     `GLU_LUMINANCE12', `GLU_LUMINANCE16', `GLU_LUMINANCE_ALPHA',
     `GLU_LUMINANCE4_ALPHA4', `GLU_LUMINANCE6_ALPHA2',
     `GLU_LUMINANCE8_ALPHA8', `GLU_LUMINANCE12_ALPHA4',
     `GLU_LUMINANCE12_ALPHA12', `GLU_LUMINANCE16_ALPHA16',
     `GLU_INTENSITY', `GLU_INTENSITY4', `GLU_INTENSITY8',
     `GLU_INTENSITY12', `GLU_INTENSITY16', `GLU_RGB', `GLU_R3_G3_B2',
     `GLU_RGB4', `GLU_RGB5', `GLU_RGB8', `GLU_RGB10', `GLU_RGB12',
     `GLU_RGB16', `GLU_RGBA', `GLU_RGBA2', `GLU_RGBA4', `GLU_RGB5_A1',
     `GLU_RGBA8', `GLU_RGB10_A2', `GLU_RGBA12', or `GLU_RGBA16'.

WIDTH
     HEIGHT

     Specifies in pixels the width and height, respectively, of the
     texture image.

FORMAT
     Specifies the format of the pixel data.  Must be one of
     `GLU_COLOR_INDEX', `GLU_DEPTH_COMPONENT', `GLU_RED', `GLU_GREEN',
     `GLU_BLUE', `GLU_ALPHA', `GLU_RGB', `GLU_RGBA', `GLU_BGR',
     `GLU_BGRA', `GLU_LUMINANCE', or `GLU_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type for DATA.  Must be one of
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

`gluBuild2DMipmaps' builds a series of prefiltered two-dimensional
texture maps of decreasing resolutions called a mipmap.  This is used
for the antialiasing of texture-mapped primitives.

A return value of zero indicates success, otherwise a GLU error code is
returned (see `gluErrorString').

Initially, the WIDTH and HEIGHT of DATA are checked to see if they are a
power of 2.  If not, a copy of DATA (not DATA), is scaled up or down to
the nearest power of 2.  This copy will be used for subsequent
mipmapping operations described below.  (If WIDTH or HEIGHT is exactly
between powers of 2, then the copy of DATA will scale upwards.) For
example, if WIDTH is 57 and HEIGHT is 23, then a copy of DATA will scale
up to 64 in WIDTH and down to 16 in depth, before mipmapping takes
place.

Then, proxy textures (see `glTexImage2D') are used to determine if the
implementation can fit the requested texture.  If not, both dimensions
are continually halved until it fits.  (If the OpenGL version is \\(<=
1.0, both maximum texture dimensions are clamped to the value returned
by `glGetIntegerv' with the argument `GLU_MAX_TEXTURE_SIZE'.)

Next, a series of mipmap levels is built by decimating a copy of DATA in
half along both dimensions until size 1×1 is reached.  At each level,
each texel in the halved mipmap level is an average of the corresponding
four texels in the larger mipmap level.  (In the case of rectangular
images, the decimation will ultimately reach an N×1 or 1×N
configuration.  Here, two texels are averaged instead.)

`glTexImage2D' is called to load each of these mipmap levels.  Level 0
is a copy of DATA.  The highest level is LOG_2,\u2061(MAX\u2061(WIDTH,HEIGHT),) .
For example, if WIDTH is 64 and HEIGHT is 16 and the implementation can
store a texture of this size, the following mipmap levels are built:
64×16 , 32×8 , 16×4 , 8×2 , 4×1 , 2×1 , and 1×1 These correspond to
levels 0 through 6, respectively.

See the `glTexImage1D' reference page for a description of the
acceptable values for FORMAT parameter.  See the `glDrawPixels'
reference page for a description of the acceptable values for TYPE
parameter.

`GLU_INVALID_VALUE' is returned if WIDTH or HEIGHT is < 1.

`GLU_INVALID_ENUM' is returned if INTERNALFORMAT, FORMAT, or TYPE is not
legal.

`GLU_INVALID_OPERATION' is returned if TYPE is `GLU_UNSIGNED_BYTE_3_3_2'
or `GLU_UNSIGNED_BYTE_2_3_3_REV' and FORMAT is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_6_5' or `GLU_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_4_4_4_4' or `GLU_UNSIGNED_SHORT_4_4_4_4_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_5_5_1' or `GLU_UNSIGNED_SHORT_1_5_5_5_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_8_8_8_8' or `GLU_UNSIGNED_INT_8_8_8_8_REV' and FORMAT
is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_10_10_10_2' or `GLU_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.")

(define-glu-procedures
  ((gluBuild3DMipmapLevels
     (target GLenum)
     (internalFormat GLint)
     (width GLsizei)
     (height GLsizei)
     (depth GLsizei)
     (format GLenum)
     (type GLenum)
     (level GLint)
     (base GLint)
     (max GLint)
     (data const-void-*)
     ->
     GLint))
  "Builds a subset of three-dimensional mipmap levels.

TARGET
     Specifies the target texture.  Must be `GLU_TEXTURE_3D'.

INTERNALFORMAT
     Requests the internal storage format of the texture image.  The
     most current version of the SGI implementation of GLU does not
     check this value for validity before passing it on to the
     underlying OpenGL implementation.  A value that is not accepted by
     the OpenGL implementation will lead to an OpenGL error.  The
     benefit of not checking this value at the GLU level is that OpenGL
     extensions can add new internal texture formats without requiring a
     revision of the GLU implementation.  Older implementations of GLU
     check this value and raise a GLU error if it is not 1, 2, 3, or 4
     or one of the following symbolic constants: `GLU_ALPHA',
     `GLU_ALPHA4', `GLU_ALPHA8', `GLU_ALPHA12', `GLU_ALPHA16',
     `GLU_LUMINANCE', `GLU_LUMINANCE4', `GLU_LUMINANCE8',
     `GLU_LUMINANCE12', `GLU_LUMINANCE16', `GLU_LUMINANCE_ALPHA',
     `GLU_LUMINANCE4_ALPHA4', `GLU_LUMINANCE6_ALPHA2',
     `GLU_LUMINANCE8_ALPHA8', `GLU_LUMINANCE12_ALPHA4',
     `GLU_LUMINANCE12_ALPHA12', `GLU_LUMINANCE16_ALPHA16',
     `GLU_INTENSITY', `GLU_INTENSITY4', `GLU_INTENSITY8',
     `GLU_INTENSITY12', `GLU_INTENSITY16', `GLU_RGB', `GLU_R3_G3_B2',
     `GLU_RGB4', `GLU_RGB5', `GLU_RGB8', `GLU_RGB10', `GLU_RGB12',
     `GLU_RGB16', `GLU_RGBA', `GLU_RGBA2', `GLU_RGBA4', `GLU_RGB5_A1',
     `GLU_RGBA8', `GLU_RGB10_A2', `GLU_RGBA12', or `GLU_RGBA16'.

WIDTH
     HEIGHT

     DEPTH

     Specifies in pixels the width, height and depth respectively, of
     the texture image.  These should be a power of 2.

FORMAT
     Specifies the format of the pixel data.  Must be one of
     `GLU_COLOR_INDEX', `GLU_DEPTH_COMPONENT', `GLU_RED', `GLU_GREEN',
     `GLU_BLUE', `GLU_ALPHA', `GLU_RGB', `GLU_RGBA', `GLU_BGR',
     `GLU_BGRA', `GLU_LUMINANCE', or `GLU_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type for DATA.  Must be one of
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

LEVEL
     Specifies the mipmap level of the image data.

BASE
     Specifies the minimum mipmap level to pass to `glTexImage3D'.

MAX
     Specifies the maximum mipmap level to pass to `glTexImage3D'.

DATA
     Specifies a pointer to the image data in memory.

`gluBuild3DMipmapLevels' builds a subset of prefiltered
three-dimensional texture maps of decreasing resolutions called a
mipmap.  This is used for the antialiasing of texture mapped primitives.

A return value of zero indicates success, otherwise a GLU error code is
returned (see `gluErrorString').

A series of mipmap levels from BASE to MAX is built by decimating DATA
in half along both dimensions until size 1×1×1 is reached.  At each
level, each texel in the halved mipmap level is an average of the
corresponding eight texels in the larger mipmap level.  (If exactly one
of the dimensions is 1, four texels are averaged.  If exactly two of the
dimensions are 1, two texels are averaged.) `glTexImage3D' is called to
load these mipmap levels from BASE to MAX.  If MAX is larger than the
highest mipmap level for the texture of the specified size, then a GLU
error code is returned (see `gluErrorString') and nothing is loaded.

For example, if LEVEL is 2 and WIDTH is 16, HEIGHT is 8 and DEPTH is 4,
the following levels are possible: 16×8×4 , 8×4×2 , 4×2×1 , 2×1×1 ,
1×1×1 .  These correspond to levels 2 through 6 respectively.  If BASE
is 3 and MAX is 5, then only mipmap levels 8×4×2 , 4×2×1 , and 2×1×1 are
loaded.  However, if MAX is 7, then an error is returned and nothing is
loaded, since MAX is larger than the highest mipmap level which is, in
this case, 6.

The highest mipmap level can be derived from the formula
LOG_2\u2061(MAX\u2061(WIDTH,HEIGHTDEPTH)×2^LEVEL,) .

See the `glTexImage1D' reference page for a description of the
acceptable values for FORMAT parameter.  See the `glDrawPixels'
reference page for a description of the acceptable values for TYPE
parameter.

`GLU_INVALID_VALUE' is returned if LEVEL > BASE, BASE < 0, MAX < BASE,
or MAX is > the highest mipmap level for DATA.

`GLU_INVALID_VALUE' is returned if WIDTH, HEIGHT, or DEPTH is < 1.

`GLU_INVALID_ENUM' is returned if INTERNALFORMAT, FORMAT, or TYPE is not
legal.

`GLU_INVALID_OPERATION' is returned if TYPE is `GLU_UNSIGNED_BYTE_3_3_2'
or `GLU_UNSIGNED_BYTE_2_3_3_REV' and FORMAT is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_6_5' or `GLU_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_4_4_4_4' or `GLU_UNSIGNED_SHORT_4_4_4_4_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_5_5_1' or `GLU_UNSIGNED_SHORT_1_5_5_5_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_8_8_8_8' or `GLU_UNSIGNED_INT_8_8_8_8_REV' and FORMAT
is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_10_10_10_2' or `GLU_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.")

(define-glu-procedures
  ((gluBuild3DMipmaps
     (target GLenum)
     (internalFormat GLint)
     (width GLsizei)
     (height GLsizei)
     (depth GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-void-*)
     ->
     GLint))
  "Builds a three-dimensional mipmap.

TARGET
     Specifies the target texture.  Must be `GLU_TEXTURE_3D'.

INTERNALFORMAT
     Requests the internal storage format of the texture image.  The
     most current version of the SGI implementation of GLU does not
     check this value for validity before passing it on to the
     underlying OpenGL implementation.  A value that is not accepted by
     the OpenGL implementation will lead to an OpenGL error.  The
     benefit of not checking this value at the GLU level is that OpenGL
     extensions can add new internal texture formats without requiring a
     revision of the GLU implementation.  Older implementations of GLU
     check this value and raise a GLU error if it is not 1, 2, 3, or 4
     or one of the following symbolic constants: `GLU_ALPHA',
     `GLU_ALPHA4', `GLU_ALPHA8', `GLU_ALPHA12', `GLU_ALPHA16',
     `GLU_LUMINANCE', `GLU_LUMINANCE4', `GLU_LUMINANCE8',
     `GLU_LUMINANCE12', `GLU_LUMINANCE16', `GLU_LUMINANCE_ALPHA',
     `GLU_LUMINANCE4_ALPHA4', `GLU_LUMINANCE6_ALPHA2',
     `GLU_LUMINANCE8_ALPHA8', `GLU_LUMINANCE12_ALPHA4',
     `GLU_LUMINANCE12_ALPHA12', `GLU_LUMINANCE16_ALPHA16',
     `GLU_INTENSITY', `GLU_INTENSITY4', `GLU_INTENSITY8',
     `GLU_INTENSITY12', `GLU_INTENSITY16', `GLU_RGB', `GLU_R3_G3_B2',
     `GLU_RGB4', `GLU_RGB5', `GLU_RGB8', `GLU_RGB10', `GLU_RGB12',
     `GLU_RGB16', `GLU_RGBA', `GLU_RGBA2', `GLU_RGBA4', `GLU_RGB5_A1',
     `GLU_RGBA8', `GLU_RGB10_A2', `GLU_RGBA12', or `GLU_RGBA16'.

WIDTH
     HEIGHT

     DEPTH

     Specifies in pixels the width, height and depth respectively, in
     pixels of the texture image.

FORMAT
     Specifies the format of the pixel data.  Must be one of
     `GLU_COLOR_INDEX', `GLU_DEPTH_COMPONENT', `GLU_RED', `GLU_GREEN',
     `GLU_BLUE', `GLU_ALPHA', `GLU_RGB', `GLU_RGBA', `GLU_BGR',
     `GLU_BGRA', `GLU_LUMINANCE', or `GLU_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type for DATA.  Must be one of:
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

`gluBuild3DMipmaps' builds a series of prefiltered three-dimensional
texture maps of decreasing resolutions called a mipmap.  This is used
for the antialiasing of texture-mapped primitives.

A return value of zero indicates success, otherwise a GLU error code is
returned (see `gluErrorString').

Initially, the WIDTH, HEIGHT and DEPTH of DATA are checked to see if
they are a power of 2.  If not, a copy of DATA is made and scaled up or
down to the nearest power of 2.  (If WIDTH, HEIGHT, or DEPTH is exactly
between powers of 2, then the copy of DATA will scale upwards.) This
copy will be used for subsequent mipmapping operations described below.
For example, if WIDTH is 57, HEIGHT is 23, and DEPTH is 24, then a copy
of DATA will scale up to 64 in width, down to 16 in height, and up to 32
in depth before mipmapping takes place.

Then, proxy textures (see `glTexImage3D') are used to determine if the
implementation can fit the requested texture.  If not, all three
dimensions are continually halved until it fits.

Next, a series of mipmap levels is built by decimating a copy of DATA in
half along all three dimensions until size 1×1×1 is reached.  At each
level, each texel in the halved mipmap level is an average of the
corresponding eight texels in the larger mipmap level.  (If exactly one
of the dimensions is 1, four texels are averaged.  If exactly two of the
dimensions are 1, two texels are averaged.)

`glTexImage3D' is called to load each of these mipmap levels.  Level 0
is a copy of DATA.  The highest level is
LOG_2,\u2061(MAX\u2061(WIDTH,HEIGHTDEPTH),) .  For example, if WIDTH is 64, HEIGHT
is 16, and DEPTH is 32, and the implementation can store a texture of
this size, the following mipmap levels are built: 64×16×32 , 32×8×16 ,
16×4×8 , 8×2×4 , 4×1×2 , 2×1×1 , and 1×1×1 .  These correspond to levels
0 through 6, respectively.

See the `glTexImage1D' reference page for a description of the
acceptable values for FORMAT parameter.  See the `glDrawPixels'
reference page for a description of the acceptable values for TYPE
parameter.

`GLU_INVALID_VALUE' is returned if WIDTH, HEIGHT, or DEPTH is < 1.

`GLU_INVALID_ENUM' is returned if INTERNALFORMAT, FORMAT, or TYPE is not
legal.

`GLU_INVALID_OPERATION' is returned if TYPE is `GLU_UNSIGNED_BYTE_3_3_2'
or `GLU_UNSIGNED_BYTE_2_3_3_REV' and FORMAT is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_6_5' or `GLU_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_4_4_4_4' or `GLU_UNSIGNED_SHORT_4_4_4_4_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_SHORT_5_5_5_1' or `GLU_UNSIGNED_SHORT_1_5_5_5_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_8_8_8_8' or `GLU_UNSIGNED_INT_8_8_8_8_REV' and FORMAT
is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPE is
`GLU_UNSIGNED_INT_10_10_10_2' or `GLU_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.")

(define-glu-procedures
  ((gluCheckExtension
     (extName const-GLubyte-*)
     (extString const-GLubyte-*)
     ->
     GLboolean))
  "Determines if an extension name is supported.

EXTNAME
     Specifies an extension name.

EXTSTRING
     Specifies a space-separated list of extension names supported.

`gluCheckExtension' returns `GLU_TRUE' if EXTNAME is supported otherwise
`GLU_FALSE' is returned.

This is used to check for the presence for OpenGL, GLU, or GLX extension
names by passing the extension strings returned by `glGetString',
`gluGetString', `glXGetClientString', `glXQueryExtensionsString', or
`glXQueryServerString', respectively, as EXTSTRING.")

(define-glu-procedures
  ((gluCylinder
     (quad GLUquadric*)
     (base GLdouble)
     (top GLdouble)
     (height GLdouble)
     (slices GLint)
     (stacks GLint)
     ->
     void))
  "Draw a cylinder.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

BASE
     Specifies the radius of the cylinder at Z = 0.

TOP
     Specifies the radius of the cylinder at Z = HEIGHT.

HEIGHT
     Specifies the height of the cylinder.

SLICES
     Specifies the number of subdivisions around the Z axis.

STACKS
     Specifies the number of subdivisions along the Z axis.

`gluCylinder' draws a cylinder oriented along the Z axis.  The base of
the cylinder is placed at Z = 0 and the top at Z=HEIGHT .  Like a
sphere, a cylinder is subdivided around the Z axis into slices and along
the Z axis into stacks.

Note that if TOP is set to 0.0, this routine generates a cone.

If the orientation is set to `GLU_OUTSIDE' (with
`gluQuadricOrientation'), then any generated normals point away from the
Z axis.  Otherwise, they point toward the Z axis.

If texturing is turned on (with `gluQuadricTexture'), then texture
coordinates are generated so that T ranges linearly from 0.0 at Z = 0 to
1.0 at Z = HEIGHT, and S ranges from 0.0 at the +Y axis, to 0.25 at the
+X axis, to 0.5 at the -Y axis, to 0.75 at the \\-X axis, and back to 1.0
at the +Y axis.")

(define-glu-procedures
  ((gluDeleteNurbsRenderer (nurb GLUnurbs*) -> void))
  "Destroy a NURBS object.

NURB
     Specifies the NURBS object to be destroyed.

`gluDeleteNurbsRenderer' destroys the NURBS object (which was created
with `gluNewNurbsRenderer') and frees any memory it uses.  Once
`gluDeleteNurbsRenderer' has been called, NURB cannot be used again.")

(define-glu-procedures
  ((gluDeleteQuadric (quad GLUquadric*) -> void))
  "Destroy a quadrics object.

QUAD
     Specifies the quadrics object to be destroyed.

`gluDeleteQuadric' destroys the quadrics object (created with
`gluNewQuadric') and frees any memory it uses.  Once `gluDeleteQuadric'
has been called, QUAD cannot be used again.")

(define-glu-procedures
  ((gluDeleteTess (tess GLUtesselator*) -> void))
  "Destroy a tessellation object.

TESS
     Specifies the tessellation object to destroy.

`gluDeleteTess' destroys the indicated tessellation object (which was
created with `gluNewTess') and frees any memory that it used.")

(define-glu-procedures
  ((gluDisk
     (quad GLUquadric*)
     (inner GLdouble)
     (outer GLdouble)
     (slices GLint)
     (loops GLint)
     ->
     void))
  "Draw a disk.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

INNER
     Specifies the inner radius of the disk (may be 0).

OUTER
     Specifies the outer radius of the disk.

SLICES
     Specifies the number of subdivisions around the Z axis.

LOOPS
     Specifies the number of concentric rings about the origin into
     which the disk is subdivided.

`gluDisk' renders a disk on the Z = 0 plane.  The disk has a radius of
OUTER and contains a concentric circular hole with a radius of INNER.  If
INNER is 0, then no hole is generated.  The disk is subdivided around
the Z axis into slices (like pizza slices) and also about the Z axis
into rings (as specified by SLICES and LOOPS, respectively).

With respect to orientation, the +Z side of the disk is considered to be
``outside'' (see `gluQuadricOrientation').  This means that if the
orientation is set to `GLU_OUTSIDE', then any normals generated point
along the +Z axis.  Otherwise, they point along the \\-Z axis.

If texturing has been turned on (with `gluQuadricTexture'), texture
coordinates are generated linearly such that where R=OUTER , the value
at (R, 0, 0) is (1, 0.5), at (0, R, 0) it is (0.5, 1), at (\\-R, 0, 0) it
is (0, 0.5), and at (0, \\-R, 0) it is (0.5, 0).")

(define-glu-procedures
  ((gluErrorString
     (error GLenum)
     ->
     const-GLubyte-*))
  "Produce an error string from a GL or GLU error code.

ERROR
     Specifies a GL or GLU error code.

`gluErrorString' produces an error string from a GL or GLU error code.
The string is in ISO Latin 1 format.  For example,
`gluErrorString'(`GLU_OUT_OF_MEMORY') returns the string OUT OF MEMORY.

The standard GLU error codes are `GLU_INVALID_ENUM',
`GLU_INVALID_VALUE', and `GLU_OUT_OF_MEMORY'.  Certain other GLU
functions can return specialized error codes through callbacks.  See the
`glGetError' reference page for the list of GL error codes.

`NULL' is returned if ERROR is not a valid GL or GLU error code.")

(define-glu-procedures
  ((gluGetNurbsProperty
     (nurb GLUnurbs*)
     (property GLenum)
     (data GLfloat*)
     ->
     void))
  "Get a NURBS property.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

PROPERTY
     Specifies the property whose value is to be fetched.  Valid values
     are `GLU_CULLING', `GLU_SAMPLING_TOLERANCE', `GLU_DISPLAY_MODE',
     `GLU_AUTO_LOAD_MATRIX', `GLU_PARAMETRIC_TOLERANCE',
     `GLU_SAMPLING_METHOD', `GLU_U_STEP', `GLU_V_STEP', and
     `GLU_NURBS_MODE'.

DATA
     Specifies a pointer to the location into which the value of the
     named property is written.

`gluGetNurbsProperty' retrieves properties stored in a NURBS object.
These properties affect the way that NURBS curves and surfaces are
rendered.  See the `gluNurbsProperty' reference page for information
about what the properties are and what they do.")

(define-glu-procedures
  ((gluGetString (name GLenum) -> const-GLubyte-*))
  "Return a string describing the GLU version or GLU extensions .

NAME
     Specifies a symbolic constant, one of `GLU_VERSION', or
     `GLU_EXTENSIONS'.

`gluGetString' returns a pointer to a static string describing the GLU
version or the GLU extensions that are supported.

The version number is one of the following forms:

MAJOR_NUMBER.MINOR_NUMBERMAJOR_NUMBER.MINOR_NUMBER.RELEASE_NUMBER.

The version string is of the following form:

VERSION NUMBER<SPACE>VENDOR-SPECIFIC INFORMATION

Vendor-specific information is optional.  Its format and contents depend
on the implementation.

The standard GLU contains a basic set of features and capabilities.  If
a company or group of companies wish to support other features, these
may be included as extensions to the GLU.  If NAME is `GLU_EXTENSIONS',
then `gluGetString' returns a space-separated list of names of supported
GLU extensions.  (Extension names never contain spaces.)

All strings are null-terminated.

NULL is returned if NAME is not `GLU_VERSION' or `GLU_EXTENSIONS'.")

(define-glu-procedures
  ((gluGetTessProperty
     (tess GLUtesselator*)
     (which GLenum)
     (data GLdouble*)
     ->
     void))
  "Get a tessellation object property.

TESS
     Specifies the tessellation object (created with `gluNewTess').

WHICH
     Specifies the property whose value is to be fetched.  Valid values
     are `GLU_TESS_WINDING_RULE', `GLU_TESS_BOUNDARY_ONLY', and
     `GLU_TESS_TOLERANCE'.

DATA
     Specifies a pointer to the location into which the value of the
     named property is written.

`gluGetTessProperty' retrieves properties stored in a tessellation
object.  These properties affect the way that tessellation objects are
interpreted and rendered.  See the `gluTessProperty' reference page for
information about the properties and what they do.")

(define-glu-procedures
  ((gluLoadSamplingMatrices
     (nurb GLUnurbs*)
     (model const-GLfloat-*)
     (perspective const-GLfloat-*)
     (view const-GLint-*)
     ->
     void))
  "Load NURBS sampling and culling matrices.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

MODEL
     Specifies a modelview matrix (as from a `glGetFloatv' call).

PERSPECTIVE
     Specifies a projection matrix (as from a `glGetFloatv' call).

VIEW
     Specifies a viewport (as from a `glGetIntegerv' call).

`gluLoadSamplingMatrices' uses MODEL, PERSPECTIVE, and VIEW to recompute
the sampling and culling matrices stored in NURB.  The sampling matrix
determines how finely a NURBS curve or surface must be tessellated to
satisfy the sampling tolerance (as determined by the
`GLU_SAMPLING_TOLERANCE' property).  The culling matrix is used in
deciding if a NURBS curve or surface should be culled before rendering
(when the `GLU_CULLING' property is turned on).

`gluLoadSamplingMatrices' is necessary only if the
`GLU_AUTO_LOAD_MATRIX' property is turned off (see `gluNurbsProperty').
Although it can be convenient to leave the `GLU_AUTO_LOAD_MATRIX'
property turned on, there can be a performance penalty for doing so.  (A
round trip to the GL server is needed to fetch the current values of the
modelview matrix, projection matrix, and viewport.)")

(define-glu-procedures
  ((gluLookAt
     (eyeX GLdouble)
     (eyeY GLdouble)
     (eyeZ GLdouble)
     (centerX GLdouble)
     (centerY GLdouble)
     (centerZ GLdouble)
     (upX GLdouble)
     (upY GLdouble)
     (upZ GLdouble)
     ->
     void))
  "Define a viewing transformation.

EYEX
     EYEY

     EYEZ

     Specifies the position of the eye point.

CENTERX
     CENTERY

     CENTERZ

     Specifies the position of the reference point.

UPX
     UPY

     UPZ

     Specifies the direction of the UP vector.

`gluLookAt' creates a viewing matrix derived from an eye point, a
reference point indicating the center of the scene, and an UP vector.

The matrix maps the reference point to the negative Z axis and the eye
point to the origin.  When a typical projection matrix is used, the
center of the scene therefore maps to the center of the viewport.
Similarly, the direction described by the UP vector projected onto the
viewing plane is mapped to the positive Y axis so that it points upward
in the viewport.  The UP vector must not be parallel to the line of
sight from the eye point to the reference point.

Let

F=((CENTERX-EYEX), (CENTERY-EYEY), (CENTERZ-EYEZ),)



Let UP be the vector (UPX,UPYUPZ) .

Then normalize as follows: F=F/∥F,∥,

UP^″=UP/∥UP,∥,



Finally, let S=F×UP^″ , and U=S×F .



M is then constructed as follows: M=((S\u2061[0,] S\u2061[1,] S\u2061[2,] 0), (U\u2061[0,]
U\u2061[1,] U\u2061[2,] 0), (-F\u2061[0,] -F\u2061[1,] -F\u2061[2,] 0), (0 0 0 1),)

and `gluLookAt' is equivalent to

     
     glMultMatrixf(M);
     glTranslated(-eyex, -eyey, -eyez);")

(define-glu-procedures
  ((gluNewNurbsRenderer -> GLUnurbs*))
  "Create a NURBS object.

`gluNewNurbsRenderer' creates and returns a pointer to a new NURBS
object.  This object must be referred to when calling NURBS rendering
and control functions.  A return value of 0 means that there is not
enough memory to allocate the object.")

(define-glu-procedures
  ((gluNewQuadric -> GLUquadric*))
  "Create a quadrics object.

`gluNewQuadric' creates and returns a pointer to a new quadrics object.
This object must be referred to when calling quadrics rendering and
control functions.  A return value of 0 means that there is not enough
memory to allocate the object.")

(define-glu-procedures
  ((gluNewTess -> GLUtesselator*))
  "Create a tessellation object.

`gluNewTess' creates and returns a pointer to a new tessellation object.
This object must be referred to when calling tessellation functions.  A
return value of 0 means that there is not enough memory to allocate the
object.")

(define-glu-procedures
  ((gluNextContour
     (tess GLUtesselator*)
     (type GLenum)
     ->
     void))
  "Mark the beginning of another contour.

TESS
     Specifies the tessellation object (created with `gluNewTess').

TYPE
     Specifies the type of the contour being defined.  Valid values are
     `GLU_EXTERIOR', `GLU_INTERIOR', `GLU_UNKNOWN', `GLU_CCW', and
     `GLU_CW'.

`gluNextContour' is used in describing polygons with multiple contours.
After the first contour has been described through a series of
`gluTessVertex' calls, a `gluNextContour' call indicates that the
previous contour is complete and that the next contour is about to
begin.  Another series of `gluTessVertex' calls is then used to describe
the new contour.  This process can be repeated until all contours have
been described.

TYPE defines what type of contour follows.  The legal contour types are
as follows:

`GLU_EXTERIOR'
     An exterior contour defines an exterior boundary of the polygon.

`GLU_INTERIOR'
     An interior contour defines an interior boundary of the polygon
     (such as a hole).

`GLU_UNKNOWN'
     An unknown contour is analyzed by the library to determine if it is
     interior or exterior.

`GLU_CCW',
`GLU_CW'
     The first `GLU_CCW' or `GLU_CW' contour defined is considered to be
     exterior.  All other contours are considered to be exterior if they
     are oriented in the same direction (clockwise or counterclockwise)
     as the first contour, and interior if they are not.

If one contour is of type `GLU_CCW' or `GLU_CW', then all contours must
be of the same type (if they are not, then all `GLU_CCW' and `GLU_CW'
contours will be changed to `GLU_UNKNOWN').

Note that there is no real difference between the `GLU_CCW' and `GLU_CW'
contour types.

Before the first contour is described, `gluNextContour' can be called to
define the type of the first contour.  If `gluNextContour' is not called
before the first contour, then the first contour is marked
`GLU_EXTERIOR'.

This command is obsolete and is provided for backward compatibility
only.  Calls to `gluNextContour' are mapped to `gluTessEndContour'
followed by `gluTessBeginContour'.")

(define-glu-procedures
  ((gluNurbsCallbackDataEXT
     (nurb GLUnurbs*)
     (userData GLvoid*)
     ->
     void))
  "Set a user data pointer.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

USERDATA
     Specifies a pointer to the user's data.

`gluNurbsCallbackDataEXT' is used to pass a pointer to the application's
data to NURBS tessellator.  A copy of this pointer will be passed by the
tessellator in the NURBS callback functions (set by `gluNurbsCallback').")

(define-glu-procedures
  ((gluNurbsCallbackData
     (nurb GLUnurbs*)
     (userData GLvoid*)
     ->
     void))
  "Set a user data pointer.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

USERDATA
     Specifies a pointer to the user's data.

`gluNurbsCallbackData' is used to pass a pointer to the application's
data to NURBS tessellator.  A copy of this pointer will be passed by the
tessellator in the NURBS callback functions (set by `gluNurbsCallback').")

(define-glu-procedures
  ((gluNurbsCallback
     (nurb GLUnurbs*)
     (which GLenum)
     (CallBackFunc _GLUfuncptr)
     ->
     void))
  "Define a callback for a NURBS object.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

WHICH
     Specifies the callback being defined.  Valid values are
     `GLU_NURBS_BEGIN', `GLU_NURBS_VERTEX', `GLU_NURBS_NORMAL',
     `GLU_NURBS_COLOR', `GLU_NURBS_TEXTURE_COORD', `GLU_NURBS_END',
     `GLU_NURBS_BEGIN_DATA', `GLU_NURBS_VERTEX_DATA',
     `GLU_NURBS_NORMAL_DATA', `GLU_NURBS_COLOR_DATA',
     `GLU_NURBS_TEXTURE_COORD_DATA', `GLU_NURBS_END_DATA', and
     `GLU_NURBS_ERROR'.

CALLBACKFUNC
     Specifies the function that the callback calls.

`gluNurbsCallback' is used to define a callback to be used by a NURBS
object.  If the specified callback is already defined, then it is
replaced.  If CALLBACKFUNC is NULL, then this callback will not get
invoked and the related data, if any, will be lost.

Except the error callback, these callbacks are used by NURBS tessellator
(when `GLU_NURBS_MODE' is set to be `GLU_NURBS_TESSELLATOR') to return
back the OpenGL polygon primitives resulting from the tessellation.  Note
that there are two versions of each callback: one with a user data
pointer and one without.  If both versions for a particular callback are
specified then the callback with the user data pointer will be used.
Note that ``userData'' is a copy of the pointer that was specified at
the last call to `gluNurbsCallbackData'.

The error callback function is effective no matter which value that
`GLU_NURBS_MODE' is set to.  All other callback functions are effective
only when `GLU_NURBS_MODE' is set to `GLU_NURBS_TESSELLATOR'.

The legal callbacks are as follows:

`GLU_NURBS_BEGIN'


     The begin callback indicates the start of a primitive.  The
     function takes a single argument of type GLenum, which can be one
     of `GLU_LINES', `GLU_LINE_STRIP', `GLU_TRIANGLE_FAN',
     `GLU_TRIANGLE_STRIP', `GLU_TRIANGLES', or `GLU_QUAD_STRIP'.  The
     default begin callback function is NULL.  The function prototype
     for this callback looks like:

`GLU_NURBS_BEGIN_DATA'


     The same as the `GLU_NURBS_BEGIN' callback except that it takes an
     additional pointer argument.  This pointer is a copy of the pointer
     that was specified at the last call to `gluNurbsCallbackData'.  The
     default callback function is NULL.  The function prototype for this
     callback function looks like:

`GLU_NURBS_VERTEX'


     The vertex callback indicates a vertex of the primitive.  The
     coordinates of the vertex are stored in the parameter ``vertex''.
     All the generated vertices have dimension 3; that is, homogeneous
     coordinates have been transformed into affine coordinates.  The
     default vertex callback function is NULL.  The function prototype
     for this callback function looks like:

`GLU_NURBS_VERTEX_DATA'


     This is the same as the `GLU_NURBS_VERTEX' callback, except that it
     takes an additional pointer argument.  This pointer is a copy of
     the pointer that was specified at the last call to
     `gluNurbsCallbackData'.  The default callback function is NULL.  The
     function prototype for this callback function looks like:

`GLU_NURBS_NORMAL'


     The normal callback is invoked as the vertex normal is generated.
     The components of the normal are stored in the parameter
     ``normal.'' In the case of a NURBS curve, the callback function is
     effective only when the user provides a normal map
     (`GLU_MAP1_NORMAL').  In the case of a NURBS surface, if a normal
     map (`GLU_MAP2_NORMAL') is provided, then the generated normal is
     computed from the normal map.  If a normal map is not provided,
     then a surface normal is computed in a manner similar to that
     described for evaluators when `GLU_AUTO_NORMAL' is enabled.  The
     default normal callback function is NULL.  The function prototype
     for this callback function looks like:

`GLU_NURBS_NORMAL_DATA'


     The same as the `GLU_NURBS_NORMAL' callback except that it takes an
     additional pointer argument.  This pointer is a copy of the pointer
     that was specified at the last call to `gluNurbsCallbackData'.  The
     default callback function is NULL.  The function prototype for this
     callback function looks like:

`GLU_NURBS_COLOR'


     The color callback is invoked as the color of a vertex is
     generated.  The components of the color are stored in the parameter
     ``color.'' This callback is effective only when the user provides a
     color map (`GLU_MAP1_COLOR_4' or `GLU_MAP2_COLOR_4').  ``color''
     contains four components: R, G, B, A.  The default color callback
     function is NULL.  The prototype for this callback function looks
     like:

`GLU_NURBS_COLOR_DATA'


     The same as the `GLU_NURBS_COLOR' callback except that it takes an
     additional pointer argument.  This pointer is a copy of the pointer
     that was specified at the last call to `gluNurbsCallbackData'.  The
     default callback function is NULL.  The function prototype for this
     callback function looks like:

`GLU_NURBS_TEXTURE_COORD'


     The texture callback is invoked as the texture coordinates of a
     vertex are generated.  These coordinates are stored in the
     parameter ``texCoord.'' The number of texture coordinates can be 1,
     2, 3, or 4 depending on which type of texture map is specified
     (`GLU_MAP1_TEXTURE_COORD_1', `GLU_MAP1_TEXTURE_COORD_2',
     `GLU_MAP1_TEXTURE_COORD_3', `GLU_MAP1_TEXTURE_COORD_4',
     `GLU_MAP2_TEXTURE_COORD_1', `GLU_MAP2_TEXTURE_COORD_2',
     `GLU_MAP2_TEXTURE_COORD_3', `GLU_MAP2_TEXTURE_COORD_4').  If no
     texture map is specified, this callback function will not be
     called.  The default texture callback function is NULL.  The
     function prototype for this callback function looks like:

`GLU_NURBS_TEXTURE_COORD_DATA'


     This is the same as the `GLU_NURBS_TEXTURE_COORD' callback, except
     that it takes an additional pointer argument.  This pointer is a
     copy of the pointer that was specified at the last call to
     `gluNurbsCallbackData'.  The default callback function is NULL.  The
     function prototype for this callback function looks like:

`GLU_NURBS_END'


     The end callback is invoked at the end of a primitive.  The default
     end callback function is NULL.  The function prototype for this
     callback function looks like:

`GLU_NURBS_END_DATA'


     This is the same as the `GLU_NURBS_END' callback, except that it
     takes an additional pointer argument.  This pointer is a copy of
     the pointer that was specified at the last call to
     `gluNurbsCallbackData'.  The default callback function is NULL.  The
     function prototype for this callback function looks like:

`GLU_NURBS_ERROR'


     The error function is called when an error is encountered.  Its
     single argument is of type GLenum, and it indicates the specific
     error that occurred.  There are 37 errors unique to NURBS, named
     `GLU_NURBS_ERROR1' through `GLU_NURBS_ERROR37'.  Character strings
     describing these errors can be retrieved with `gluErrorString'.

     
     void begin( GLenum type ); 

     
     void beginData(GLenum type, void *userData); 

     
     void vertex( GLfloat *vertex ); 

     
     void vertexData( GLfloat *vertex, void *userData ); 

     
     void normal( GLfloat *normal ); 

     
     void normalData( GLfloat *normal, void *userData ); 

     
     void color( GLfloat *color ); 

     
     void colorData( GLfloat *color, void *userData ); 

     
     void texCoord( GLfloat *texCoord ); 

     
     void texCoordData( GLfloat *texCoord, void *userData ); 

     
     void end( void ); 

     
     void endData( void  *userData );")

(define-glu-procedures
  ((gluNurbsCurve
     (nurb GLUnurbs*)
     (knotCount GLint)
     (knots GLfloat-*)
     (stride GLint)
     (control GLfloat-*)
     (order GLint)
     (type GLenum)
     ->
     void))
  "Define the shape of a NURBS curve.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

KNOTCOUNT
     Specifies the number of knots in KNOTS.  KNOTCOUNT equals the
     number of control points plus the order.

KNOTS
     Specifies an array of KNOTCOUNT nondecreasing knot values.

STRIDE
     Specifies the offset (as a number of single-precision
     floating-point values) between successive curve control points.

CONTROL
     Specifies a pointer to an array of control points.  The coordinates
     must agree with TYPE, specified below.

ORDER
     Specifies the order of the NURBS curve.  ORDER equals degree + 1,
     hence a cubic curve has an order of 4.

TYPE
     Specifies the type of the curve.  If this curve is defined within a
     `gluBeginCurve'/`gluEndCurve' pair, then the type can be any of the
     valid one-dimensional evaluator types (such as `GLU_MAP1_VERTEX_3'
     or `GLU_MAP1_COLOR_4').  Between a `gluBeginTrim'/`gluEndTrim'
     pair, the only valid types are `GLU_MAP1_TRIM_2' and
     `GLU_MAP1_TRIM_3'.

Use `gluNurbsCurve' to describe a NURBS curve.

When `gluNurbsCurve' appears between a `gluBeginCurve'/`gluEndCurve'
pair, it is used to describe a curve to be rendered.  Positional,
texture, and color coordinates are associated by presenting each as a
separate `gluNurbsCurve' between a `gluBeginCurve'/`gluEndCurve' pair.
No more than one call to `gluNurbsCurve' for each of color, position,
and texture data can be made within a single
`gluBeginCurve'/`gluEndCurve' pair.  Exactly one call must be made to
describe the position of the curve (a TYPE of `GLU_MAP1_VERTEX_3' or
`GLU_MAP1_VERTEX_4').

When `gluNurbsCurve' appears between a `gluBeginTrim'/`gluEndTrim' pair,
it is used to describe a trimming curve on a NURBS surface.  If TYPE is
`GLU_MAP1_TRIM_2', then it describes a curve in two-dimensional (U and
V) parameter space.  If it is `GLU_MAP1_TRIM_3', then it describes a
curve in two-dimensional homogeneous (U, V, and W) parameter space.  See
the `gluBeginTrim' reference page for more discussion about trimming
curves.")

(define-glu-procedures
  ((gluNurbsProperty
     (nurb GLUnurbs*)
     (property GLenum)
     (value GLfloat)
     ->
     void))
  "Set a NURBS property.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

PROPERTY
     Specifies the property to be set.  Valid values are
     `GLU_SAMPLING_TOLERANCE', `GLU_DISPLAY_MODE', `GLU_CULLING',
     `GLU_AUTO_LOAD_MATRIX', `GLU_PARAMETRIC_TOLERANCE',
     `GLU_SAMPLING_METHOD', `GLU_U_STEP', `GLU_V_STEP', or
     `GLU_NURBS_MODE'.

VALUE
     Specifies the value of the indicated property.  It may be a numeric
     value or one of `GLU_OUTLINE_POLYGON', `GLU_FILL',
     `GLU_OUTLINE_PATCH', `GLU_TRUE', `GLU_FALSE', `GLU_PATH_LENGTH',
     `GLU_PARAMETRIC_ERROR', `GLU_DOMAIN_DISTANCE',
     `GLU_NURBS_RENDERER', or `GLU_NURBS_TESSELLATOR'.

`gluNurbsProperty' is used to control properties stored in a NURBS
object.  These properties affect the way that a NURBS curve is rendered.
The accepted values for PROPERTY are as follows:

`GLU_NURBS_MODE'
     VALUE should be set to be either `GLU_NURBS_RENDERER' or
     `GLU_NURBS_TESSELLATOR'.  When set to `GLU_NURBS_RENDERER', NURBS
     objects are tessellated into OpenGL primitives and sent to the
     pipeline for rendering.  When set to `GLU_NURBS_TESSELLATOR', NURBS
     objects are tessellated into OpenGL primitives but the vertices,
     normals, colors, and/or textures are retrieved back through a
     callback interface (see `gluNurbsCallback').  This allows the user
     to cache the tessellated results for further processing.  The
     initial value is `GLU_NURBS_RENDERER'.

`GLU_SAMPLING_METHOD'
     Specifies how a NURBS surface should be tessellated.  VALUE may be
     one of `GLU_PATH_LENGTH', `GLU_PARAMETRIC_ERROR',
     `GLU_DOMAIN_DISTANCE', `GLU_OBJECT_PATH_LENGTH', or
     `GLU_OBJECT_PARAMETRIC_ERROR'.  When set to `GLU_PATH_LENGTH', the
     surface is rendered so that the maximum length, in pixels, of the
     edges of the tessellation polygons is no greater than what is
     specified by `GLU_SAMPLING_TOLERANCE'.

     `GLU_PARAMETRIC_ERROR' specifies that the surface is rendered in
     such a way that the value specified by `GLU_PARAMETRIC_TOLERANCE'
     describes the maximum distance, in pixels, between the tessellation
     polygons and the surfaces they approximate.

     `GLU_DOMAIN_DISTANCE' allows users to specify, in parametric
     coordinates, how many sample points per unit length are taken in U,
     V direction.

     `GLU_OBJECT_PATH_LENGTH' is similar to `GLU_PATH_LENGTH' except
     that it is view independent; that is, the surface is rendered so
     that the maximum length, in object space, of edges of the
     tessellation polygons is no greater than what is specified by
     `GLU_SAMPLING_TOLERANCE'.

     `GLU_OBJECT_PARAMETRIC_ERROR' is similar to `GLU_PARAMETRIC_ERROR'
     except that it is view independent; that is, the surface is
     rendered in such a way that the value specified by
     `GLU_PARAMETRIC_TOLERANCE' describes the maximum distance, in
     object space, between the tessellation polygons and the surfaces
     they approximate.

     The initial value of `GLU_SAMPLING_METHOD' is `GLU_PATH_LENGTH'.

`GLU_SAMPLING_TOLERANCE'
     Specifies the maximum length, in pixels or in object space length
     unit, to use when the sampling method is set to `GLU_PATH_LENGTH'
     or `GLU_OBJECT_PATH_LENGTH'.  The NURBS code is conservative when
     rendering a curve or surface, so the actual length can be somewhat
     shorter.  The initial value is 50.0 pixels.

`GLU_PARAMETRIC_TOLERANCE'
     Specifies the maximum distance, in pixels or in object space length
     unit, to use when the sampling method is `GLU_PARAMETRIC_ERROR' or
     `GLU_OBJECT_PARAMETRIC_ERROR'.  The initial value is 0.5.

`GLU_U_STEP'
     Specifies the number of sample points per unit length taken along
     the U axis in parametric coordinates.  It is needed when
     `GLU_SAMPLING_METHOD' is set to `GLU_DOMAIN_DISTANCE'.  The initial
     value is 100.

`GLU_V_STEP'
     Specifies the number of sample points per unit length taken along
     the V axis in parametric coordinate.  It is needed when
     `GLU_SAMPLING_METHOD' is set to `GLU_DOMAIN_DISTANCE'.  The initial
     value is 100.

`GLU_DISPLAY_MODE'
     VALUE can be set to `GLU_OUTLINE_POLYGON', `GLU_FILL', or
     `GLU_OUTLINE_PATCH'.  When `GLU_NURBS_MODE' is set to be
     `GLU_NURBS_RENDERER', VALUE defines how a NURBS surface should be
     rendered.  When VALUE is set to `GLU_FILL', the surface is rendered
     as a set of polygons.  When VALUE is set to `GLU_OUTLINE_POLYGON',
     the NURBS library draws only the outlines of the polygons created
     by tessellation.  When VALUE is set to `GLU_OUTLINE_PATCH' just the
     outlines of patches and trim curves defined by the user are drawn.

     When `GLU_NURBS_MODE' is set to be `GLU_NURBS_TESSELLATOR', VALUE
     defines how a NURBS surface should be tessellated.  When
     `GLU_DISPLAY_MODE' is set to `GLU_FILL' or `GLU_OUTLINE_POLYGON',
     the NURBS surface is tessellated into OpenGL triangle primitives
     that can be retrieved back through callback functions.  If
     `GLU_DISPLAY_MODE' is set to `GLU_OUTLINE_PATCH', only the outlines
     of the patches and trim curves are generated as a sequence of line
     strips that can be retrieved back through callback functions.

     The initial value is `GLU_FILL'.

`GLU_CULLING'
     VALUE is a boolean value that, when set to `GLU_TRUE', indicates
     that a NURBS curve should be discarded prior to tessellation if its
     control points lie outside the current viewport.  The initial value
     is `GLU_FALSE'.

`GLU_AUTO_LOAD_MATRIX'
     VALUE is a boolean value.  When set to `GLU_TRUE', the NURBS code
     downloads the projection matrix, the modelview matrix, and the
     viewport from the GL server to compute sampling and culling
     matrices for each NURBS curve that is rendered.  Sampling and
     culling matrices are required to determine the tessellation of a
     NURBS surface into line segments or polygons and to cull a NURBS
     surface if it lies outside the viewport.

     If this mode is set to `GLU_FALSE', then the program needs to
     provide a projection matrix, a modelview matrix, and a viewport for
     the NURBS renderer to use to construct sampling and culling
     matrices.  This can be done with the `gluLoadSamplingMatrices'
     function.  This mode is initially set to `GLU_TRUE'.  Changing it
     from `GLU_TRUE' to `GLU_FALSE' does not affect the sampling and
     culling matrices until `gluLoadSamplingMatrices' is called.")

(define-glu-procedures
  ((gluNurbsSurface
     (nurb GLUnurbs*)
     (sKnotCount GLint)
     (sKnots GLfloat*)
     (tKnotCount GLint)
     (tKnots GLfloat*)
     (sStride GLint)
     (tStride GLint)
     (control GLfloat*)
     (sOrder GLint)
     (tOrder GLint)
     (type GLenum)
     ->
     void))
  "Define the shape of a NURBS surface.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

SKNOTCOUNT
     Specifies the number of knots in the parametric U direction.

SKNOTS
     Specifies an array of SKNOTCOUNT nondecreasing knot values in the
     parametric U direction.

TKNOTCOUNT
     Specifies the number of knots in the parametric V direction.

TKNOTS
     Specifies an array of TKNOTCOUNT nondecreasing knot values in the
     parametric V direction.

SSTRIDE
     Specifies the offset (as a number of single-precision
     floating-point values) between successive control points in the
     parametric U direction in CONTROL.

TSTRIDE
     Specifies the offset (in single-precision floating-point values)
     between successive control points in the parametric V direction in
     CONTROL.

CONTROL
     Specifies an array containing control points for the NURBS surface.
     The offsets between successive control points in the parametric U
     and V directions are given by SSTRIDE and TSTRIDE.

SORDER
     Specifies the order of the NURBS surface in the parametric U
     direction.  The order is one more than the degree, hence a surface
     that is cubic in U has a U order of 4.

TORDER
     Specifies the order of the NURBS surface in the parametric V
     direction.  The order is one more than the degree, hence a surface
     that is cubic in V has a V order of 4.

TYPE
     Specifies type of the surface.  TYPE can be any of the valid
     two-dimensional evaluator types (such as `GLU_MAP2_VERTEX_3' or
     `GLU_MAP2_COLOR_4').

Use `gluNurbsSurface' within a NURBS (Non-Uniform Rational B-Spline)
surface definition to describe the shape of a NURBS surface (before any
trimming).  To mark the beginning of a NURBS surface definition, use the
`gluBeginSurface' command.  To mark the end of a NURBS surface
definition, use the `gluEndSurface' command.  Call `gluNurbsSurface'
within a NURBS surface definition only.

Positional, texture, and color coordinates are associated with a surface
by presenting each as a separate `gluNurbsSurface' between a
`gluBeginSurface'/`gluEndSurface' pair.  No more than one call to
`gluNurbsSurface' for each of color, position, and texture data can be
made within a single `gluBeginSurface'/`gluEndSurface' pair.  Exactly
one call must be made to describe the position of the surface (a TYPE of
`GLU_MAP2_VERTEX_3' or `GLU_MAP2_VERTEX_4').

A NURBS surface can be trimmed by using the commands `gluNurbsCurve' and
`gluPwlCurve' between calls to `gluBeginTrim' and `gluEndTrim'.

Note that a `gluNurbsSurface' with SKNOTCOUNT knots in the U direction
and TKNOTCOUNT knots in the V direction with orders SORDER and TORDER
must have (SKNOTCOUNT - SORDER) TIMES (TKNOTCOUNT - TORDER) control
points.")

(define-glu-procedures
  ((gluOrtho2D
     (left GLdouble)
     (right GLdouble)
     (bottom GLdouble)
     (top GLdouble)
     ->
     void))
  "Define a 2D orthographic projection matrix.

LEFT
     RIGHT

     Specify the coordinates for the left and right vertical clipping
     planes.

BOTTOM
     TOP

     Specify the coordinates for the bottom and top horizontal clipping
     planes.

`gluOrtho2D' sets up a two-dimensional orthographic viewing region.  This
is equivalent to calling `glOrtho' with NEAR=-1 and FAR=1 .")

(define-glu-procedures
  ((gluPartialDisk
     (quad GLUquadric*)
     (inner GLdouble)
     (outer GLdouble)
     (slices GLint)
     (loops GLint)
     (start GLdouble)
     (sweep GLdouble)
     ->
     void))
  "Draw an arc of a disk.

QUAD
     Specifies a quadrics object (created with `gluNewQuadric').

INNER
     Specifies the inner radius of the partial disk (can be 0).

OUTER
     Specifies the outer radius of the partial disk.

SLICES
     Specifies the number of subdivisions around the Z axis.

LOOPS
     Specifies the number of concentric rings about the origin into
     which the partial disk is subdivided.

START
     Specifies the starting angle, in degrees, of the disk portion.

SWEEP
     Specifies the sweep angle, in degrees, of the disk portion.

`gluPartialDisk' renders a partial disk on the Z=0 plane.  A partial
disk is similar to a full disk, except that only the subset of the disk
from START through START + SWEEP is included (where 0 degrees is along
the +\\f2y\\f axis, 90 degrees along the +X axis, 180 degrees along the
\\-Y axis, and 270 degrees along the \\-X axis).

The partial disk has a radius of OUTER and contains a concentric
circular hole with a radius of INNER.  If INNER is 0, then no hole is
generated.  The partial disk is subdivided around the Z axis into slices
(like pizza slices) and also about the Z axis into rings (as specified
by SLICES and LOOPS, respectively).

With respect to orientation, the +Z side of the partial disk is
considered to be outside (see `gluQuadricOrientation').  This means that
if the orientation is set to `GLU_OUTSIDE', then any normals generated
point along the +Z axis.  Otherwise, they point along the \\-Z axis.

If texturing is turned on (with `gluQuadricTexture'), texture
coordinates are generated linearly such that where R=OUTER , the value
at (R, 0, 0) is (1.0, 0.5), at (0, R, 0) it is (0.5, 1.0), at (\\-R, 0,
0) it is (0.0, 0.5), and at (0, \\-R, 0) it is (0.5, 0.0).")

(define-glu-procedures
  ((gluPerspective
     (fovy GLdouble)
     (aspect GLdouble)
     (zNear GLdouble)
     (zFar GLdouble)
     ->
     void))
  "Set up a perspective projection matrix.

FOVY
     Specifies the field of view angle, in degrees, in the Y direction.

ASPECT
     Specifies the aspect ratio that determines the field of view in the
     X direction.  The aspect ratio is the ratio of X (width) to Y
     (height).

ZNEAR
     Specifies the distance from the viewer to the near clipping plane
     (always positive).

ZFAR
     Specifies the distance from the viewer to the far clipping plane
     (always positive).

`gluPerspective' specifies a viewing frustum into the world coordinate
system.  In general, the aspect ratio in `gluPerspective' should match
the aspect ratio of the associated viewport.  For example, ASPECT=2.0
means the viewer's angle of view is twice as wide in X as it is in Y.  If
the viewport is twice as wide as it is tall, it displays the image
without distortion.

The matrix generated by `gluPerspective' is multipled by the current
matrix, just as if `glMultMatrix' were called with the generated matrix.
To load the perspective matrix onto the current matrix stack instead,
precede the call to `gluPerspective' with a call to `glLoadIdentity'.

Given F defined as follows:

F=COTANGENT\u2061(FOVY/2,) The generated matrix is

((F/ASPECT 0 0 0), (0 F 0 0), (0 0 ZFAR+ZNEAR,/ZNEAR-ZFAR,
2×ZFAR×ZNEAR,/ZNEAR-ZFAR,), (0 0 -1 0),)")

(define-glu-procedures
  ((gluPickMatrix
     (x GLdouble)
     (y GLdouble)
     (delX GLdouble)
     (delY GLdouble)
     (viewport GLint-*)
     ->
     void))
  "Define a picking region.

X
     Y

     Specify the center of a picking region in window coordinates.

DELX
     DELY

     Specify the width and height, respectively, of the picking region
     in window coordinates.

VIEWPORT
     Specifies the current viewport (as from a `glGetIntegerv' call).

`gluPickMatrix' creates a projection matrix that can be used to restrict
drawing to a small region of the viewport.  This is typically useful to
determine what objects are being drawn near the cursor.  Use
`gluPickMatrix' to restrict drawing to a small region around the cursor.
Then, enter selection mode (with `glRenderMode') and rerender the scene.
All primitives that would have been drawn near the cursor are identified
and stored in the selection buffer.

The matrix created by `gluPickMatrix' is multiplied by the current
matrix just as if `glMultMatrix' is called with the generated matrix.  To
effectively use the generated pick matrix for picking, first call
`glLoadIdentity' to load an identity matrix onto the perspective matrix
stack.  Then call `gluPickMatrix', and, finally, call a command (such as
`gluPerspective') to multiply the perspective matrix by the pick matrix.

When using `gluPickMatrix' to pick NURBS, be careful to turn off the
NURBS property `GLU_AUTO_LOAD_MATRIX'.  If `GLU_AUTO_LOAD_MATRIX' is not
turned off, then any NURBS surface rendered is subdivided differently
with the pick matrix than the way it was subdivided without the pick
matrix.")

(define-glu-procedures
  ((gluProject
     (objX GLdouble)
     (objY GLdouble)
     (objZ GLdouble)
     (model const-GLdouble-*)
     (proj const-GLdouble-*)
     (view const-GLint-*)
     (winX GLdouble*)
     (winY GLdouble*)
     (winZ GLdouble*)
     ->
     GLint))
  "Map object coordinates to window coordinates.

OBJX
     OBJY

     OBJZ

     Specify the object coordinates.

MODEL
     Specifies the current modelview matrix (as from a `glGetDoublev'
     call).

PROJ
     Specifies the current projection matrix (as from a `glGetDoublev'
     call).

VIEW
     Specifies the current viewport (as from a `glGetIntegerv' call).

WINX
     WINY

     WINZ

     Return the computed window coordinates.

`gluProject' transforms the specified object coordinates into window
coordinates using MODEL, PROJ, and VIEW.  The result is stored in WINX,
WINY, and WINZ.  A return value of `GLU_TRUE' indicates success, a
return value of `GLU_FALSE' indicates failure.

To compute the coordinates, let V=(OBJX,OBJYOBJZ1.0) represented as a
matrix with 4 rows and 1 column.  Then `gluProject' computes V^″ as
follows:

V^″=P×M×V

where P is the current projection matrix PROJ and M is the current
modelview matrix MODEL (both represented as 4×4 matrices in column-major
order).

The window coordinates are then computed as follows:

WINX=VIEW\u2061(0,)+VIEW\u2061(2,)×(V^″\u2061(0,)+1,)/2
WINY=VIEW\u2061(1,)+VIEW\u2061(3,)×(V^″\u2061(1,)+1,)/2 WINZ=(V^″\u2061(2,)+1,)/2")

(define-glu-procedures
  ((gluPwlCurve
     (nurb GLUnurbs*)
     (count GLint)
     (data GLfloat*)
     (stride GLint)
     (type GLenum)
     ->
     void))
  "Describe a piecewise linear NURBS trimming curve.

NURB
     Specifies the NURBS object (created with `gluNewNurbsRenderer').

COUNT
     Specifies the number of points on the curve.

DATA
     Specifies an array containing the curve points.

STRIDE
     Specifies the offset (a number of single-precision floating-point
     values) between points on the curve.

TYPE
     Specifies the type of curve.  Must be either `GLU_MAP1_TRIM_2' or
     `GLU_MAP1_TRIM_3'.

`gluPwlCurve' describes a piecewise linear trimming curve for a NURBS
surface.  A piecewise linear curve consists of a list of coordinates of
points in the parameter space for the NURBS surface to be trimmed.  These
points are connected with line segments to form a curve.  If the curve
is an approximation to a curve that is not piecewise linear, the points
should be close enough in parameter space that the resulting path
appears curved at the resolution used in the application.

If TYPE is `GLU_MAP1_TRIM_2', then it describes a curve in
two-dimensional (U and V) parameter space.  If it is `GLU_MAP1_TRIM_3',
then it describes a curve in two-dimensional homogeneous (U, V, and W)
parameter space.  See the `gluBeginTrim' reference page for more
information about trimming curves.")

(define-glu-procedures
  ((gluQuadricCallback
     (quad GLUquadric*)
     (which GLenum)
     (CallBackFunc _GLUfuncptr)
     ->
     void))
  "Define a callback for a quadrics object.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

WHICH
     Specifies the callback being defined.  The only valid value is
     `GLU_ERROR'.

CALLBACKFUNC
     Specifies the function to be called.

`gluQuadricCallback' is used to define a new callback to be used by a
quadrics object.  If the specified callback is already defined, then it
is replaced.  If CALLBACKFUNC is NULL, then any existing callback is
erased.

The one legal callback is `GLU_ERROR':

`GLU_ERROR'
     The function is called when an error is encountered.  Its single
     argument is of type GLenum, and it indicates the specific error
     that occurred.  Character strings describing these errors can be
     retrieved with the `gluErrorString' call.")

(define-glu-procedures
  ((gluQuadricDrawStyle
     (quad GLUquadric*)
     (draw GLenum)
     ->
     void))
  "Specify the draw style desired for quadrics.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

DRAW
     Specifies the desired draw style.  Valid values are `GLU_FILL',
     `GLU_LINE', `GLU_SILHOUETTE', and `GLU_POINT'.

`gluQuadricDrawStyle' specifies the draw style for quadrics rendered
with QUAD.  The legal values are as follows:

`GLU_FILL'
     Quadrics are rendered with polygon primitives.  The polygons are
     drawn in a counterclockwise fashion with respect to their normals
     (as defined with `gluQuadricOrientation').

`GLU_LINE'
     Quadrics are rendered as a set of lines.

`GLU_SILHOUETTE'
     Quadrics are rendered as a set of lines, except that edges
     separating coplanar faces will not be drawn.

`GLU_POINT'
     Quadrics are rendered as a set of points.")

(define-glu-procedures
  ((gluQuadricNormals
     (quad GLUquadric*)
     (normal GLenum)
     ->
     void))
  "Specify what kind of normals are desired for quadrics.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

NORMAL
     Specifies the desired type of normals.  Valid values are
     `GLU_NONE', `GLU_FLAT', and `GLU_SMOOTH'.

`gluQuadricNormals' specifies what kind of normals are desired for
quadrics rendered with QUAD.  The legal values are as follows:

`GLU_NONE'
     No normals are generated.

`GLU_FLAT'
     One normal is generated for every facet of a quadric.

`GLU_SMOOTH'
     One normal is generated for every vertex of a quadric.  This is the
     initial value.")

(define-glu-procedures
  ((gluQuadricOrientation
     (quad GLUquadric*)
     (orientation GLenum)
     ->
     void))
  "Specify inside/outside orientation for quadrics.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

ORIENTATION
     Specifies the desired orientation.  Valid values are `GLU_OUTSIDE'
     and `GLU_INSIDE'.

`gluQuadricOrientation' specifies what kind of orientation is desired
for quadrics rendered with QUAD.  The ORIENTATION values are as follows:

`GLU_OUTSIDE'
     Quadrics are drawn with normals pointing outward (the initial
     value).

`GLU_INSIDE'
     Quadrics are drawn with normals pointing inward.

Note that the interpretation of OUTWARD and INWARD depends on the
quadric being drawn.")

(define-glu-procedures
  ((gluQuadricTexture
     (quad GLUquadric*)
     (texture GLboolean)
     ->
     void))
  "Specify if texturing is desired for quadrics.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

TEXTURE
     Specifies a flag indicating if texture coordinates should be
     generated.

`gluQuadricTexture' specifies if texture coordinates should be generated
for quadrics rendered with QUAD.  If the value of TEXTURE is `GLU_TRUE',
then texture coordinates are generated, and if TEXTURE is `GLU_FALSE',
they are not.  The initial value is `GLU_FALSE'.

The manner in which texture coordinates are generated depends upon the
specific quadric rendered.")

(define-glu-procedures
  ((gluScaleImage
     (format GLenum)
     (wIn GLsizei)
     (hIn GLsizei)
     (typeIn GLenum)
     (dataIn const-void-*)
     (wOut GLsizei)
     (hOut GLsizei)
     (typeOut GLenum)
     (dataOut GLvoid*)
     ->
     GLint))
  "Scale an image to an arbitrary size.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are valid: `GLU_COLOR_INDEX', `GLU_STENCIL_INDEX',
     `GLU_DEPTH_COMPONENT', `GLU_RED', `GLU_GREEN', `GLU_BLUE',
     `GLU_ALPHA', `GLU_RGB', `GLU_RGBA', `GLU_BGR', `GLU_BGRA',
     `GLU_LUMINANCE', and `GLU_LUMINANCE_ALPHA'.

WIN
     HIN

     Specify in pixels the width and height, respectively, of the source
     image.

TYPEIN
     Specifies the data type for DATAIN.  Must be one of
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

DATAIN
     Specifies a pointer to the source image.

WOUT
     HOUT

     Specify the width and height, respectively, in pixels of the
     destination image.

TYPEOUT
     Specifies the data type for DATAOUT.  Must be one of
     `GLU_UNSIGNED_BYTE', `GLU_BYTE', `GLU_BITMAP',
     `GLU_UNSIGNED_SHORT', `GLU_SHORT', `GLU_UNSIGNED_INT', `GLU_INT',
     `GLU_FLOAT', `GLU_UNSIGNED_BYTE_3_3_2',
     `GLU_UNSIGNED_BYTE_2_3_3_REV', `GLU_UNSIGNED_SHORT_5_6_5',
     `GLU_UNSIGNED_SHORT_5_6_5_REV', `GLU_UNSIGNED_SHORT_4_4_4_4',
     `GLU_UNSIGNED_SHORT_4_4_4_4_REV', `GLU_UNSIGNED_SHORT_5_5_5_1',
     `GLU_UNSIGNED_SHORT_1_5_5_5_REV', `GLU_UNSIGNED_INT_8_8_8_8',
     `GLU_UNSIGNED_INT_8_8_8_8_REV', `GLU_UNSIGNED_INT_10_10_10_2', or
     `GLU_UNSIGNED_INT_2_10_10_10_REV'.

DATAOUT
     Specifies a pointer to the destination image.

`gluScaleImage' scales a pixel image using the appropriate pixel store
modes to unpack data from the source image and pack data into the
destination image.

When shrinking an image, `gluScaleImage' uses a box filter to sample the
source image and create pixels for the destination image.  When
magnifying an image, the pixels from the source image are linearly
interpolated to create the destination image.

A return value of zero indicates success, otherwise a GLU error code is
returned (see `gluErrorString').

See the `glReadPixels' reference page for a description of the
acceptable values for the FORMAT, TYPEIN, and TYPEOUT parameters.

`GLU_INVALID_VALUE' is returned if WIN, HIN, WOUT, or HOUT is negative.

`GLU_INVALID_ENUM' is returned if FORMAT, TYPEIN, or TYPEOUT is not
legal.

`GLU_INVALID_OPERATION' is returned if TYPEIN or TYPEOUT is
`GLU_UNSIGNED_BYTE_3_3_2' or `GLU_UNSIGNED_BYTE_2_3_3_REV' and FORMAT is
not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPEIN or TYPEOUT is
`GLU_UNSIGNED_SHORT_5_6_5' or `GLU_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GLU_RGB'.

`GLU_INVALID_OPERATION' is returned if TYPEIN or TYPEOUT is
`GLU_UNSIGNED_SHORT_4_4_4_4' or `GLU_UNSIGNED_SHORT_4_4_4_4_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPEIN or TYPEOUT is
`GLU_UNSIGNED_SHORT_5_5_5_1' or `GLU_UNSIGNED_SHORT_1_5_5_5_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPEIN or TYPEOUT is
`GLU_UNSIGNED_INT_8_8_8_8' or `GLU_UNSIGNED_INT_8_8_8_8_REV' and FORMAT
is neither `GLU_RGBA' nor `GLU_BGRA'.

`GLU_INVALID_OPERATION' is returned if TYPEIN or TYPEOUT is
`GLU_UNSIGNED_INT_10_10_10_2' or `GLU_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GLU_RGBA' nor `GLU_BGRA'.")

(define-glu-procedures
  ((gluSphere
     (quad GLUquadric*)
     (radius GLdouble)
     (slices GLint)
     (stacks GLint)
     ->
     void))
  "Draw a sphere.

QUAD
     Specifies the quadrics object (created with `gluNewQuadric').

RADIUS
     Specifies the radius of the sphere.

SLICES
     Specifies the number of subdivisions around the Z axis (similar to
     lines of longitude).

STACKS
     Specifies the number of subdivisions along the Z axis (similar to
     lines of latitude).

`gluSphere' draws a sphere of the given radius centered around the
origin.  The sphere is subdivided around the Z axis into slices and
along the Z axis into stacks (similar to lines of longitude and
latitude).

If the orientation is set to `GLU_OUTSIDE' (with
`gluQuadricOrientation'), then any normals generated point away from the
center of the sphere.  Otherwise, they point toward the center of the
sphere.

If texturing is turned on (with `gluQuadricTexture'), then texture
coordinates are generated so that T ranges from 0.0 at Z=-RADIUS to 1.0
at Z=RADIUS (T increases linearly along longitudinal lines), and S
ranges from 0.0 at the +Y axis, to 0.25 at the +X axis, to 0.5 at the
\\-Y axis, to 0.75 at the \\-X axis, and back to 1.0 at the +Y axis.")

(define-glu-procedures
  ((gluTessBeginContour
     (tess GLUtesselator*)
     ->
     void)
   (gluTessEndContour (tess GLUtesselator*) -> void))
  "Delimit a contour description.

TESS
     Specifies the tessellation object (created with `gluNewTess').

`gluTessBeginContour' and `gluTessEndContour' delimit the definition of
a polygon contour.  Within each
`gluTessBeginContour'/`gluTessEndContour' pair, there can be zero or
more calls to `gluTessVertex'.  The vertices specify a closed contour
(the last vertex of each contour is automatically linked to the first).
See the `gluTessVertex' reference page for more details.
`gluTessBeginContour' can only be called between `gluTessBeginPolygon'
and `gluTessEndPolygon'.")

(define-glu-procedures
  ((gluTessBeginPolygon
     (tess GLUtesselator*)
     (data GLvoid*)
     ->
     void))
  "Delimit a polygon description.

TESS
     Specifies the tessellation object (created with `gluNewTess').

DATA
     Specifies a pointer to user polygon data.

`gluTessBeginPolygon' and `gluTessEndPolygon' delimit the definition of
a convex, concave or self-intersecting polygon.  Within each
`gluTessBeginPolygon'/`gluTessEndPolygon' pair, there must be one or
more calls to `gluTessBeginContour'/`gluTessEndContour'.  Within each
contour, there are zero or more calls to `gluTessVertex'.  The vertices
specify a closed contour (the last vertex of each contour is
automatically linked to the first).  See the `gluTessVertex',
`gluTessBeginContour', and `gluTessEndContour' reference pages for more
details.

DATA is a pointer to a user-defined data structure.  If the appropriate
callback(s) are specified (see `gluTessCallback'), then this pointer is
returned to the callback function(s).  Thus, it is a convenient way to
store per-polygon information.

Once `gluTessEndPolygon' is called, the polygon is tessellated, and the
resulting triangles are described through callbacks.  See
`gluTessCallback' for descriptions of the callback functions.")

(define-glu-procedures
  ((gluTessCallback
     (tess GLUtesselator*)
     (which GLenum)
     (CallBackFunc _GLUfuncptr)
     ->
     void))
  "Define a callback for a tessellation object.

TESS
     Specifies the tessellation object (created with `gluNewTess').

WHICH
     Specifies the callback being defined.  The following values are
     valid: `GLU_TESS_BEGIN', `GLU_TESS_BEGIN_DATA',
     `GLU_TESS_EDGE_FLAG', `GLU_TESS_EDGE_FLAG_DATA', `GLU_TESS_VERTEX',
     `GLU_TESS_VERTEX_DATA', `GLU_TESS_END', `GLU_TESS_END_DATA',
     `GLU_TESS_COMBINE', `GLU_TESS_COMBINE_DATA', `GLU_TESS_ERROR', and
     `GLU_TESS_ERROR_DATA'.

CALLBACKFUNC
     Specifies the function to be called.

`gluTessCallback' is used to indicate a callback to be used by a
tessellation object.  If the specified callback is already defined, then
it is replaced.  If CALLBACKFUNC is NULL, then the existing callback
becomes undefined.

These callbacks are used by the tessellation object to describe how a
polygon specified by the user is broken into triangles.  Note that there
are two versions of each callback: one with user-specified polygon data
and one without.  If both versions of a particular callback are
specified, then the callback with user-specified polygon data will be
used.  Note that the POLYGON_DATA parameter used by some of the
functions is a copy of the pointer that was specified when
`gluTessBeginPolygon' was called.  The legal callbacks are as follows:

`GLU_TESS_BEGIN'
     The begin callback is invoked like `glBegin' to indicate the start
     of a (triangle) primitive.  The function takes a single argument of
     type GLenum.  If the `GLU_TESS_BOUNDARY_ONLY' property is set to
     `GLU_FALSE', then the argument is set to either `GLU_TRIANGLE_FAN',
     `GLU_TRIANGLE_STRIP', or `GLU_TRIANGLES'.  If the
     `GLU_TESS_BOUNDARY_ONLY' property is set to `GLU_TRUE', then the
     argument will be set to `GLU_LINE_LOOP'.  The function prototype
     for this callback is:

`GLU_TESS_BEGIN_DATA'
     The same as the `GLU_TESS_BEGIN' callback except that it takes an
     additional pointer argument.  This pointer is identical to the
     opaque pointer provided when `gluTessBeginPolygon' was called.  The
     function prototype for this callback is:

`GLU_TESS_EDGE_FLAG'
     The edge flag callback is similar to `glEdgeFlag'.  The function
     takes a single boolean flag that indicates which edges lie on the
     polygon boundary.  If the flag is `GLU_TRUE', then each vertex that
     follows begins an edge that lies on the polygon boundary, that is,
     an edge that separates an interior region from an exterior one.  If
     the flag is `GLU_FALSE', then each vertex that follows begins an
     edge that lies in the polygon interior.  The edge flag callback (if
     defined) is invoked before the first vertex callback.

     Since triangle fans and triangle strips do not support edge flags,
     the begin callback is not called with `GLU_TRIANGLE_FAN' or
     `GLU_TRIANGLE_STRIP' if a non-NULL edge flag callback is provided.
     (If the callback is initialized to NULL, there is no impact on
     performance).  Instead, the fans and strips are converted to
     independent triangles.  The function prototype for this callback
     is:

`GLU_TESS_EDGE_FLAG_DATA'
     The same as the `GLU_TESS_EDGE_FLAG' callback except that it takes
     an additional pointer argument.  This pointer is identical to the
     opaque pointer provided when `gluTessBeginPolygon' was called.  The
     function prototype for this callback is:

`GLU_TESS_VERTEX'
     The vertex callback is invoked between the begin and end callbacks.
     It is similar to `glVertex', and it defines the vertices of the
     triangles created by the tessellation process.  The function takes
     a pointer as its only argument.  This pointer is identical to the
     opaque pointer provided by the user when the vertex was described
     (see `gluTessVertex').  The function prototype for this callback
     is:

`GLU_TESS_VERTEX_DATA'
     The same as the `GLU_TESS_VERTEX' callback except that it takes an
     additional pointer argument.  This pointer is identical to the
     opaque pointer provided when `gluTessBeginPolygon' was called.  The
     function prototype for this callback is:

`GLU_TESS_END'
     The end callback serves the same purpose as `glEnd'.  It indicates
     the end of a primitive and it takes no arguments.  The function
     prototype for this callback is:

`GLU_TESS_END_DATA'
     The same as the `GLU_TESS_END' callback except that it takes an
     additional pointer argument.  This pointer is identical to the
     opaque pointer provided when `gluTessBeginPolygon' was called.  The
     function prototype for this callback is:

`GLU_TESS_COMBINE'
     The combine callback is called to create a new vertex when the
     tessellation detects an intersection or wishes to merge features.
     The function takes four arguments: an array of three elements each
     of type GLdouble, an array of four pointers, an array of four
     elements each of type GLfloat, and a pointer to a pointer.  The
     prototype is:

     The vertex is defined as a linear combination of up to four
     existing vertices, stored in VERTEX_DATA.  The coefficients of the
     linear combination are given by WEIGHT; these weights always add up
     to 1.  All vertex pointers are valid even when some of the weights
     are 0.  COORDS gives the location of the new vertex.

     The user must allocate another vertex, interpolate parameters using
     VERTEX_DATA and WEIGHT, and return the new vertex pointer in
     OUTDATA.  This handle is supplied during rendering callbacks.  The
     user is responsible for freeing the memory some time after
     `gluTessEndPolygon' is called.

     For example, if the polygon lies in an arbitrary plane in 3-space,
     and a color is associated with each vertex, the `GLU_TESS_COMBINE'
     callback might look like this:

     If the tessellation detects an intersection, then the
     `GLU_TESS_COMBINE' or `GLU_TESS_COMBINE_DATA' callback (see below)
     must be defined, and it must write a non-NULL pointer into DATAOUT.
     Otherwise the `GLU_TESS_NEED_COMBINE_CALLBACK' error occurs, and no
     output is generated.

`GLU_TESS_COMBINE_DATA'
     The same as the `GLU_TESS_COMBINE' callback except that it takes an
     additional pointer argument.  This pointer is identical to the
     opaque pointer provided when `gluTessBeginPolygon' was called.  The
     function prototype for this callback is:

`GLU_TESS_ERROR'
     The error callback is called when an error is encountered.  The one
     argument is of type GLenum; it indicates the specific error that
     occurred and will be set to one of
     `GLU_TESS_MISSING_BEGIN_POLYGON', `GLU_TESS_MISSING_END_POLYGON',
     `GLU_TESS_MISSING_BEGIN_CONTOUR', `GLU_TESS_MISSING_END_CONTOUR',
     `GLU_TESS_COORD_TOO_LARGE', `GLU_TESS_NEED_COMBINE_CALLBACK', or
     `GLU_OUT_OF_MEMORY'.  Character strings describing these errors can
     be retrieved with the `gluErrorString' call.  The function
     prototype for this callback is:

     The GLU library will recover from the first four errors by
     inserting the missing call(s).  `GLU_TESS_COORD_TOO_LARGE'
     indicates that some vertex coordinate exceeded the predefined
     constant `GLU_TESS_MAX_COORD' in absolute value, and that the value
     has been clamped.  (Coordinate values must be small enough so that
     two can be multiplied together without overflow.)
     `GLU_TESS_NEED_COMBINE_CALLBACK' indicates that the tessellation
     detected an intersection between two edges in the input data, and
     the `GLU_TESS_COMBINE' or `GLU_TESS_COMBINE_DATA' callback was not
     provided.  No output is generated.  `GLU_OUT_OF_MEMORY' indicates
     that there is not enough memory so no output is generated.

`GLU_TESS_ERROR_DATA'
     The same as the `GLU_TESS_ERROR' callback except that it takes an
     additional pointer argument.  This pointer is identical to the
     opaque pointer provided when `gluTessBeginPolygon' was called.  The
     function prototype for this callback is:

     
     void begin( GLenum type ); 

     
     void beginData( GLenum type, void *polygon_data ); 

     
     void edgeFlag( GLboolean flag ); 

     
     void edgeFlagData( GLboolean flag, void *polygon_data ); 

     
     void vertex( void *vertex_data ); 

     
     void vertexData( void *vertex_data, void *polygon_data ); 

     
     void end( void ); 

     
     void endData( void *polygon_data ); 

     
     void combine( GLdouble coords[3], void *vertex_data[4], 
                   GLfloat weight[4], void **outData ); 

     
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
     } 

     
     void combineData( GLdouble coords[3], void *vertex_data[4], 
                       GLfloat weight[4], void **outData, 
                       void *polygon_data ); 

     
     void error( GLenum errno ); 

     
     void errorData( GLenum errno, void *polygon_data );")

(define-glu-procedures
  ((gluTessEndPolygon (tess GLUtesselator*) -> void))
  "Delimit a polygon description.

TESS
     Specifies the tessellation object (created with `gluNewTess').

`gluTessBeginPolygon' and `gluTessEndPolygon' delimit the definition of
a convex, concave, or self-intersecting polygon.  Within each
`gluTessBeginPolygon'/`gluTessEndPolygon' pair, there must be one or
more calls to `gluTessBeginContour'/`gluTessEndContour'.  Within each
contour, there are zero or more calls to `gluTessVertex'.  The vertices
specify a closed contour (the last vertex of each contour is
automatically linked to the first).  See the `gluTessVertex',
`gluTessBeginContour', and `gluTessEndContour' reference pages for more
details.

Once `gluTessEndPolygon' is called, the polygon is tessellated, and the
resulting triangles are described through callbacks.  See
`gluTessCallback' for descriptions of the callback functions.")

(define-glu-procedures
  ((gluTessNormal
     (tess GLUtesselator*)
     (valueX GLdouble)
     (valueY GLdouble)
     (valueZ GLdouble)
     ->
     void))
  "Specify a normal for a polygon.

TESS
     Specifies the tessellation object (created with `gluNewTess').

VALUEX
     Specifies the first component of the normal.

VALUEY
     Specifies the second component of the normal.

VALUEZ
     Specifies the third component of the normal.

`gluTessNormal' describes a normal for a polygon that the program is
defining.  All input data will be projected onto a plane perpendicular
to one of the three coordinate axes before tessellation and all output
triangles will be oriented CCW with respect to the normal (CW
orientation can be obtained by reversing the sign of the supplied
normal).  For example, if you know that all polygons lie in the x-y
plane, call `gluTessNormal'(tess, 0.0, 0.0, 1.0) before rendering any
polygons.

If the supplied normal is (0.0, 0.0, 0.0) (the initial value), the
normal is determined as follows.  The direction of the normal, up to its
sign, is found by fitting a plane to the vertices, without regard to how
the vertices are connected.  It is expected that the input data lies
approximately in the plane; otherwise, projection perpendicular to one
of the three coordinate axes may substantially change the geometry.  The
sign of the normal is chosen so that the sum of the signed areas of all
input contours is nonnegative (where a CCW contour has positive area).

The supplied normal persists until it is changed by another call to
`gluTessNormal'.")

(define-glu-procedures
  ((gluTessProperty
     (tess GLUtesselator*)
     (which GLenum)
     (data GLdouble)
     ->
     void))
  "Set a tessellation object property.

TESS
     Specifies the tessellation object (created with `gluNewTess').

WHICH
     Specifies the property to be set.  Valid values are
     `GLU_TESS_WINDING_RULE', `GLU_TESS_BOUNDARY_ONLY', and
     `GLU_TESS_TOLERANCE'.

DATA
     Specifies the value of the indicated property.

`gluTessProperty' is used to control properties stored in a tessellation
object.  These properties affect the way that the polygons are
interpreted and rendered.  The legal values for WHICH are as follows:

`GLU_TESS_WINDING_RULE'
     Determines which parts of the polygon are on the ``interior''.  DATA
     may be set to one of `GLU_TESS_WINDING_ODD',
     `GLU_TESS_WINDING_NONZERO', `GLU_TESS_WINDING_POSITIVE',
     `GLU_TESS_WINDING_NEGATIVE', or `GLU_TESS_WINDING_ABS_GEQ_TWO'.

     To understand how the winding rule works, consider that the input
     contours partition the plane into regions.  The winding rule
     determines which of these regions are inside the polygon.

     For a single contour C, the winding number of a point x is simply
     the signed number of revolutions we make around x as we travel once
     around C (where CCW is positive).  When there are several contours,
     the individual winding numbers are summed.  This procedure
     associates a signed integer value with each point x in the plane.
     Note that the winding number is the same for all points in a single
     region.

     The winding rule classifies a region as ``inside'' if its winding
     number belongs to the chosen category (odd, nonzero, positive,
     negative, or absolute value of at least two).  The previous GLU
     tessellator (prior to GLU 1.2) used the ``odd'' rule.  The
     ``nonzero'' rule is another common way to define the interior.  The
     other three rules are useful for polygon CSG operations.

`GLU_TESS_BOUNDARY_ONLY'
     Is a boolean value (``value'' should be set to GL_TRUE or
     GL_FALSE).  When set to GL_TRUE, a set of closed contours
     separating the polygon interior and exterior are returned instead
     of a tessellation.  Exterior contours are oriented CCW with respect
     to the normal; interior contours are oriented CW.  The
     `GLU_TESS_BEGIN' and `GLU_TESS_BEGIN_DATA' callbacks use the type
     GL_LINE_LOOP for each contour.

`GLU_TESS_TOLERANCE'
     Specifies a tolerance for merging features to reduce the size of
     the output.  For example, two vertices that are very close to each
     other might be replaced by a single vertex.  The tolerance is
     multiplied by the largest coordinate magnitude of any input vertex;
     this specifies the maximum distance that any feature can move as
     the result of a single merge operation.  If a single feature takes
     part in several merge operations, the total distance moved could be
     larger.

     Feature merging is completely optional; the tolerance is only a
     hint.  The implementation is free to merge in some cases and not in
     others, or to never merge features at all.  The initial tolerance
     is 0.

     The current implementation merges vertices only if they are exactly
     coincident, regardless of the current tolerance.  A vertex is
     spliced into an edge only if the implementation is unable to
     distinguish which side of the edge the vertex lies on.  Two edges
     are merged only when both endpoints are identical.")

(define-glu-procedures
  ((gluTessVertex
     (tess GLUtesselator*)
     (location GLdouble-*)
     (data GLvoid*)
     ->
     void))
  "Specify a vertex on a polygon.

TESS
     Specifies the tessellation object (created with `gluNewTess').

LOCATION
     Specifies the location of the vertex.

DATA
     Specifies an opaque pointer passed back to the program with the
     vertex callback (as specified by `gluTessCallback').

`gluTessVertex' describes a vertex on a polygon that the program
defines.  Successive `gluTessVertex' calls describe a closed contour.
For example, to describe a quadrilateral, `gluTessVertex' should be
called four times.  `gluTessVertex' can only be called between
`gluTessBeginContour' and `gluTessEndContour'.

DATA normally points to a structure containing the vertex location, as
well as other per-vertex attributes such as color and normal.  This
pointer is passed back to the user through the `GLU_TESS_VERTEX' or
`GLU_TESS_VERTEX_DATA' callback after tessellation (see the
`gluTessCallback' reference page).")

(define-glu-procedures
  ((gluUnProject4
     (winX GLdouble)
     (winY GLdouble)
     (winZ GLdouble)
     (clipW GLdouble)
     (model const-GLdouble-*)
     (proj const-GLdouble-*)
     (view const-GLint-*)
     (nearVal GLdouble)
     (farVal GLdouble)
     (objX GLdouble*)
     (objY GLdouble*)
     (objZ GLdouble*)
     (objW GLdouble*)
     ->
     GLint))
  "Map window and clip coordinates to object coordinates.

WINX
     WINY

     WINZ

     Specify the window coordinates to be mapped.

CLIPW
     Specify the clip w coordinate to be mapped.

MODEL
     Specifies the modelview matrix (as from a `glGetDoublev' call).

PROJ
     Specifies the projection matrix (as from a `glGetDoublev' call).

VIEW
     Specifies the viewport (as from a `glGetIntegerv' call).

NEARVAL
     FARVAL

     Specifies the near and far planes (as from a `glGetDoublev' call).

OBJX
     OBJY

     OBJZ

     OBJW

     Returns the computed object coordinates.

`gluUnProject4' maps the specified window coordinatesi: WINX, WINY, and
WINZ and its clip w coordinate CLIPW into object coordinates
(OBJX,OBJYOBJZOBJW) using MODEL, PROJ, and VIEW.  CLIPW can be other
than 1 as for vertices in `glFeedbackBuffer' when data type
`GLU_4D_COLOR_TEXTURE' is returned.  This also handles the case where
the NEARVAL and FARVAL planes are different from the default, 0 and 1,
respectively.  A return value of `GLU_TRUE' indicates success; a return
value of `GLU_FALSE' indicates failure.

To compute the coordinates (OBJX,OBJYOBJZOBJW) , `gluUnProject4'
multiplies the normalized device coordinates by the inverse of MODEL *
PROJ as follows:

((OBJX), (OBJY), (OBJZ),
(OBJW),)=INV\u2061(P\u2062M,)\u2062((2\u2061(WINX-VIEW\u2061[0,],),/VIEW\u2061[2,],-1),
(2\u2061(WINY-VIEW\u2061[1,],),/VIEW\u2061[3,],-1),
(2\u2061(WINZ-NEARVAL,),/(FARVAL-NEARVAL,),-1), (CLIPW),)

INV denotes matrix inversion.

`gluUnProject4' is equivalent to `gluUnProject' when CLIPW is 1, NEARVAL
is 0, and FARVAL is 1.")

(define-glu-procedures
  ((gluUnProject
     (winX GLdouble)
     (winY GLdouble)
     (winZ GLdouble)
     (model const-GLdouble-*)
     (proj const-GLdouble-*)
     (view const-GLint-*)
     (objX GLdouble*)
     (objY GLdouble*)
     (objZ GLdouble*)
     ->
     GLint))
  "Map window coordinates to object coordinates.

WINX
     WINY

     WINZ

     Specify the window coordinates to be mapped.

MODEL
     Specifies the modelview matrix (as from a `glGetDoublev' call).

PROJ
     Specifies the projection matrix (as from a `glGetDoublev' call).

VIEW
     Specifies the viewport (as from a `glGetIntegerv' call).

OBJX
     OBJY

     OBJZ

     Returns the computed object coordinates.

`gluUnProject' maps the specified window coordinates into object
coordinates using MODEL, PROJ, and VIEW.  The result is stored in OBJX,
OBJY, and OBJZ.  A return value of `GLU_TRUE' indicates success; a
return value of `GLU_FALSE' indicates failure.

To compute the coordinates (OBJX,OBJYOBJZ) , `gluUnProject' multiplies
the normalized device coordinates by the inverse of MODEL * PROJ as
follows:

((OBJX), (OBJY), (OBJZ),
(W),)=INV\u2061(P\u2062M,)\u2062((2\u2061(WINX-VIEW\u2061[0,],),/VIEW\u2061[2,],-1),
(2\u2061(WINY-VIEW\u2061[1,],),/VIEW\u2061[3,],-1), (2\u2061(WINZ,)-1), (1),) INV denotes
matrix inversion.  W is an unused variable, included for consistent
matrix notation.")

