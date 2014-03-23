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
;;; Copyright (C) 2003-2005 3Dlabs Inc.  Ltd.  This material may be
;;; distributed subject to the terms and conditions set forth in the Open
;;; Publication License, v 1.0, 8 June 1999.  http://opencontent.org/openpub/
;;; (http://opencontent.org/openpub/).
;;; 
;;; Copyright (C) 2005 Addison-Wesley.  This material may be distributed
;;; subject to the terms and conditions set forth in the Open Publication
;;; License, v 1.0, 8 June 1999.  http://opencontent.org/openpub/
;;; (http://opencontent.org/openpub/).
;;; 
;;; Copyright (C) 2006 Khronos Group.  This material may be distributed
;;; subject to the terms and conditions set forth in the Open Publication
;;; License, v 1.0, 8 June 1999.  http://opencontent.org/openpub/
;;; (http://opencontent.org/openpub/).
;;;
;;; Automatically generated; you probably don't want to edit this.  To
;;; update, run "make update" in the top-level build tree.
;;;

(define-module
  (gl low-level)
  #:use-module
  (gl runtime)
  #:use-module
  (gl types)
  #:export
  (glAccum
    glActiveTexture
    glAlphaFunc
    glAreTexturesResident
    glArrayElement
    glAttachShader
    glBeginQuery
    glEndQuery
    glBegin
    glEnd
    glBindAttribLocation
    glBindBuffer
    glBindTexture
    glBitmap
    glBlendColor
    glBlendEquationSeparate
    glBlendEquation
    glBlendFuncSeparate
    glBlendFunc
    glBufferData
    glBufferSubData
    glCallLists
    glCallList
    glClearAccum
    glClearColor
    glClearDepth
    glClearIndex
    glClearStencil
    glClear
    glClientActiveTexture
    glClipPlane
    glColorMask
    glColorMaterial
    glColorPointer
    glColorSubTable
    glColorTableParameterfv
    glColorTableParameteriv
    glColorTable
    glColor3b
    glColor3s
    glColor3i
    glColor3f
    glColor3d
    glColor3ub
    glColor3us
    glColor3ui
    glColor4b
    glColor4s
    glColor4i
    glColor4f
    glColor4d
    glColor4ub
    glColor4us
    glColor4ui
    glColor3bv
    glColor3sv
    glColor3iv
    glColor3fv
    glColor3dv
    glColor3ubv
    glColor3usv
    glColor3uiv
    glColor4bv
    glColor4sv
    glColor4iv
    glColor4fv
    glColor4dv
    glColor4ubv
    glColor4usv
    glColor4uiv
    glCompileShader
    glCompressedTexImage1D
    glCompressedTexImage2D
    glCompressedTexImage3D
    glCompressedTexSubImage1D
    glCompressedTexSubImage2D
    glCompressedTexSubImage3D
    glConvolutionFilter1D
    glConvolutionFilter2D
    glConvolutionParameterf
    glConvolutionParameteri
    glConvolutionParameterfv
    glConvolutionParameteriv
    glCopyColorSubTable
    glCopyColorTable
    glCopyConvolutionFilter1D
    glCopyConvolutionFilter2D
    glCopyPixels
    glCopyTexImage1D
    glCopyTexImage2D
    glCopyTexSubImage1D
    glCopyTexSubImage2D
    glCopyTexSubImage3D
    glCreateProgram
    glCreateShader
    glCullFace
    glDeleteBuffers
    glDeleteLists
    glDeleteProgram
    glDeleteQueries
    glDeleteShader
    glDeleteTextures
    glDepthFunc
    glDepthMask
    glDepthRange
    glDetachShader
    glDrawArrays
    glDrawBuffers
    glDrawBuffer
    glDrawElements
    glDrawPixels
    glDrawRangeElements
    glEdgeFlagPointer
    glEdgeFlag
    glEdgeFlagv
    glEnableClientState
    glDisableClientState
    glEnableVertexAttribArray
    glDisableVertexAttribArray
    glEnable
    glDisable
    glEvalCoord1f
    glEvalCoord1d
    glEvalCoord2f
    glEvalCoord2d
    glEvalCoord1fv
    glEvalCoord1dv
    glEvalCoord2fv
    glEvalCoord2dv
    glEvalMesh1
    glEvalMesh2
    glEvalPoint1
    glEvalPoint2
    glFeedbackBuffer
    glFinish
    glFlush
    glFogCoordPointer
    glFogCoordd
    glFogCoordf
    glFogCoorddv
    glFogCoordfv
    glFogf
    glFogi
    glFogfv
    glFogiv
    glFrontFace
    glFrustum
    glGenBuffers
    glGenLists
    glGenQueries
    glGenTextures
    glGetActiveAttrib
    glGetActiveUniform
    glGetAttachedShaders
    glGetAttribLocation
    glGetBufferParameteriv
    glGetBufferPointerv
    glGetBufferSubData
    glGetClipPlane
    glGetColorTableParameterfv
    glGetColorTableParameteriv
    glGetColorTable
    glGetCompressedTexImage
    glGetConvolutionFilter
    glGetConvolutionParameterfv
    glGetConvolutionParameteriv
    glGetError
    glGetHistogramParameterfv
    glGetHistogramParameteriv
    glGetHistogram
    glGetLightfv
    glGetLightiv
    glGetMapdv
    glGetMapfv
    glGetMapiv
    glGetMaterialfv
    glGetMaterialiv
    glGetMinmaxParameterfv
    glGetMinmaxParameteriv
    glGetMinmax
    glGetPixelMapfv
    glGetPixelMapuiv
    glGetPixelMapusv
    glGetPointerv
    glGetPolygonStipple
    glGetProgramInfoLog
    glGetProgramiv
    glGetQueryiv
    glGetQueryObjectiv
    glGetQueryObjectuiv
    glGetSeparableFilter
    glGetShaderInfoLog
    glGetShaderSource
    glGetShaderiv
    glGetString
    glGetTexEnvfv
    glGetTexEnviv
    glGetTexGendv
    glGetTexGenfv
    glGetTexGeniv
    glGetTexImage
    glGetTexLevelParameterfv
    glGetTexLevelParameteriv
    glGetTexParameterfv
    glGetTexParameteriv
    glGetUniformLocation
    glGetUniformfv
    glGetUniformiv
    glGetVertexAttribPointerv
    glGetVertexAttribdv
    glGetVertexAttribfv
    glGetVertexAttribiv
    glGetBooleanv
    glGetDoublev
    glGetFloatv
    glGetIntegerv
    glHint
    glHistogram
    glIndexMask
    glIndexPointer
    glIndexs
    glIndexi
    glIndexf
    glIndexd
    glIndexub
    glIndexsv
    glIndexiv
    glIndexfv
    glIndexdv
    glIndexubv
    glInitNames
    glInterleavedArrays
    glIsBuffer
    glIsEnabled
    glIsList
    glIsProgram
    glIsQuery
    glIsShader
    glIsTexture
    glLightModelf
    glLightModeli
    glLightModelfv
    glLightModeliv
    glLightf
    glLighti
    glLightfv
    glLightiv
    glLineStipple
    glLineWidth
    glLinkProgram
    glListBase
    glLoadIdentity
    glLoadMatrixd
    glLoadMatrixf
    glLoadName
    glLoadTransposeMatrixd
    glLoadTransposeMatrixf
    glLogicOp
    glMap1f
    glMap1d
    glMap2f
    glMap2d
    glMapBuffer
    glUnmapBuffer
    glMapGrid1d
    glMapGrid1f
    glMapGrid2d
    glMapGrid2f
    glMaterialf
    glMateriali
    glMaterialfv
    glMaterialiv
    glMatrixMode
    glMinmax
    glMultiDrawArrays
    glMultiDrawElements
    glMultiTexCoord1s
    glMultiTexCoord1i
    glMultiTexCoord1f
    glMultiTexCoord1d
    glMultiTexCoord2s
    glMultiTexCoord2i
    glMultiTexCoord2f
    glMultiTexCoord2d
    glMultiTexCoord3s
    glMultiTexCoord3i
    glMultiTexCoord3f
    glMultiTexCoord3d
    glMultiTexCoord4s
    glMultiTexCoord4i
    glMultiTexCoord4f
    glMultiTexCoord4d
    glMultiTexCoord1sv
    glMultiTexCoord1iv
    glMultiTexCoord1fv
    glMultiTexCoord1dv
    glMultiTexCoord2sv
    glMultiTexCoord2iv
    glMultiTexCoord2fv
    glMultiTexCoord2dv
    glMultiTexCoord3sv
    glMultiTexCoord3iv
    glMultiTexCoord3fv
    glMultiTexCoord3dv
    glMultiTexCoord4sv
    glMultiTexCoord4iv
    glMultiTexCoord4fv
    glMultiTexCoord4dv
    glMultMatrixd
    glMultMatrixf
    glMultTransposeMatrixd
    glMultTransposeMatrixf
    glNewList
    glEndList
    glNormalPointer
    glNormal3b
    glNormal3d
    glNormal3f
    glNormal3i
    glNormal3s
    glNormal3bv
    glNormal3dv
    glNormal3fv
    glNormal3iv
    glNormal3sv
    glOrtho
    glPassThrough
    glPixelMapfv
    glPixelMapuiv
    glPixelMapusv
    glPixelStoref
    glPixelStorei
    glPixelTransferf
    glPixelTransferi
    glPixelZoom
    glPointParameterf
    glPointParameteri
    glPointParameterfv
    glPointParameteriv
    glPointSize
    glPolygonMode
    glPolygonOffset
    glPolygonStipple
    glPrioritizeTextures
    glPushAttrib
    glPopAttrib
    glPushClientAttrib
    glPopClientAttrib
    glPushMatrix
    glPopMatrix
    glPushName
    glPopName
    glRasterPos2s
    glRasterPos2i
    glRasterPos2f
    glRasterPos2d
    glRasterPos3s
    glRasterPos3i
    glRasterPos3f
    glRasterPos3d
    glRasterPos4s
    glRasterPos4i
    glRasterPos4f
    glRasterPos4d
    glRasterPos2sv
    glRasterPos2iv
    glRasterPos2fv
    glRasterPos2dv
    glRasterPos3sv
    glRasterPos3iv
    glRasterPos3fv
    glRasterPos3dv
    glRasterPos4sv
    glRasterPos4iv
    glRasterPos4fv
    glRasterPos4dv
    glReadBuffer
    glReadPixels
    glRectd
    glRectf
    glRecti
    glRects
    glRectdv
    glRectfv
    glRectiv
    glRectsv
    glRenderMode
    glResetHistogram
    glResetMinmax
    glRotated
    glRotatef
    glSampleCoverage
    glScaled
    glScalef
    glScissor
    glSecondaryColorPointer
    glSecondaryColor3b
    glSecondaryColor3s
    glSecondaryColor3i
    glSecondaryColor3f
    glSecondaryColor3d
    glSecondaryColor3ub
    glSecondaryColor3us
    glSecondaryColor3ui
    glSecondaryColor3bv
    glSecondaryColor3sv
    glSecondaryColor3iv
    glSecondaryColor3fv
    glSecondaryColor3dv
    glSecondaryColor3ubv
    glSecondaryColor3usv
    glSecondaryColor3uiv
    glSelectBuffer
    glSeparableFilter2D
    glShadeModel
    glShaderSource
    glStencilFuncSeparate
    glStencilFunc
    glStencilMaskSeparate
    glStencilMask
    glStencilOpSeparate
    glStencilOp
    glTexCoordPointer
    glTexCoord1s
    glTexCoord1i
    glTexCoord1f
    glTexCoord1d
    glTexCoord2s
    glTexCoord2i
    glTexCoord2f
    glTexCoord2d
    glTexCoord3s
    glTexCoord3i
    glTexCoord3f
    glTexCoord3d
    glTexCoord4s
    glTexCoord4i
    glTexCoord4f
    glTexCoord4d
    glTexCoord1sv
    glTexCoord1iv
    glTexCoord1fv
    glTexCoord1dv
    glTexCoord2sv
    glTexCoord2iv
    glTexCoord2fv
    glTexCoord2dv
    glTexCoord3sv
    glTexCoord3iv
    glTexCoord3fv
    glTexCoord3dv
    glTexCoord4sv
    glTexCoord4iv
    glTexCoord4fv
    glTexCoord4dv
    glTexEnvf
    glTexEnvi
    glTexEnvfv
    glTexEnviv
    glTexGeni
    glTexGenf
    glTexGend
    glTexGeniv
    glTexGenfv
    glTexGendv
    glTexImage1D
    glTexImage2D
    glTexImage3D
    glTexParameterf
    glTexParameteri
    glTexParameterfv
    glTexParameteriv
    glTexSubImage1D
    glTexSubImage2D
    glTexSubImage3D
    glTranslated
    glTranslatef
    glUniform1f
    glUniform2f
    glUniform3f
    glUniform4f
    glUniform1i
    glUniform2i
    glUniform3i
    glUniform4i
    glUniform1fv
    glUniform2fv
    glUniform3fv
    glUniform4fv
    glUniform1iv
    glUniform2iv
    glUniform3iv
    glUniform4iv
    glUniformMatrix2fv
    glUniformMatrix3fv
    glUniformMatrix4fv
    glUniformMatrix2x3fv
    glUniformMatrix3x2fv
    glUniformMatrix2x4fv
    glUniformMatrix4x2fv
    glUniformMatrix3x4fv
    glUniformMatrix4x3fv
    glUseProgram
    glValidateProgram
    glVertexAttribPointer
    glVertexAttrib1f
    glVertexAttrib1s
    glVertexAttrib1d
    glVertexAttrib2f
    glVertexAttrib2s
    glVertexAttrib2d
    glVertexAttrib3f
    glVertexAttrib3s
    glVertexAttrib3d
    glVertexAttrib4f
    glVertexAttrib4s
    glVertexAttrib4d
    glVertexAttrib4Nub
    glVertexAttrib1fv
    glVertexAttrib1sv
    glVertexAttrib1dv
    glVertexAttrib2fv
    glVertexAttrib2sv
    glVertexAttrib2dv
    glVertexAttrib3fv
    glVertexAttrib3sv
    glVertexAttrib3dv
    glVertexAttrib4fv
    glVertexAttrib4sv
    glVertexAttrib4dv
    glVertexAttrib4iv
    glVertexAttrib4bv
    glVertexAttrib4ubv
    glVertexAttrib4usv
    glVertexAttrib4uiv
    glVertexAttrib4Nbv
    glVertexAttrib4Nsv
    glVertexAttrib4Niv
    glVertexAttrib4Nubv
    glVertexAttrib4Nusv
    glVertexAttrib4Nuiv
    glVertexPointer
    glVertex2s
    glVertex2i
    glVertex2f
    glVertex2d
    glVertex3s
    glVertex3i
    glVertex3f
    glVertex3d
    glVertex4s
    glVertex4i
    glVertex4f
    glVertex4d
    glVertex2sv
    glVertex2iv
    glVertex2fv
    glVertex2dv
    glVertex3sv
    glVertex3iv
    glVertex3fv
    glVertex3dv
    glVertex4sv
    glVertex4iv
    glVertex4fv
    glVertex4dv
    glViewport
    glWindowPos2s
    glWindowPos2i
    glWindowPos2f
    glWindowPos2d
    glWindowPos3s
    glWindowPos3i
    glWindowPos3f
    glWindowPos3d
    glWindowPos2sv
    glWindowPos2iv
    glWindowPos2fv
    glWindowPos2dv
    glWindowPos3sv
    glWindowPos3iv
    glWindowPos3fv
    glWindowPos3dv))

(define-gl-procedures
  ((glAccum (op GLenum) (value GLfloat) -> void))
  "Operate on the accumulation buffer.

OP
     Specifies the accumulation buffer operation.  Symbolic constants
     `GL_ACCUM', `GL_LOAD', `GL_ADD', `GL_MULT', and `GL_RETURN' are
     accepted.

VALUE
     Specifies a floating-point value used in the accumulation buffer
     operation.  OP determines how VALUE is used.

The accumulation buffer is an extended-range color buffer.  Images are
not rendered into it.  Rather, images rendered into one of the color
buffers are added to the contents of the accumulation buffer after
rendering.  Effects such as antialiasing (of points, lines, and
polygons), motion blur, and depth of field can be created by
accumulating images generated with different transformation matrices.

Each pixel in the accumulation buffer consists of red, green, blue, and
alpha values.  The number of bits per component in the accumulation
buffer depends on the implementation.  You can examine this number by
calling `glGetIntegerv' four times, with arguments `GL_ACCUM_RED_BITS',
`GL_ACCUM_GREEN_BITS', `GL_ACCUM_BLUE_BITS', and `GL_ACCUM_ALPHA_BITS'.
Regardless of the number of bits per component, the range of values
stored by each component is [-1,1] .  The accumulation buffer pixels are
mapped one-to-one with frame buffer pixels.

`glAccum' operates on the accumulation buffer.  The first argument, OP,
is a symbolic constant that selects an accumulation buffer operation.
The second argument, VALUE, is a floating-point value to be used in that
operation.  Five operations are specified: `GL_ACCUM', `GL_LOAD',
`GL_ADD', `GL_MULT', and `GL_RETURN'.

All accumulation buffer operations are limited to the area of the
current scissor box and applied identically to the red, green, blue, and
alpha components of each pixel.  If a `glAccum' operation results in a
value outside the range [-1,1] , the contents of an accumulation buffer
pixel component are undefined.

The operations are as follows:

`GL_ACCUM'
     Obtains R, G, B, and A values from the buffer currently selected
     for reading (see `glReadBuffer').  Each component value is divided
     by 2^N-1 , where N is the number of bits allocated to each color
     component in the currently selected buffer.  The result is a
     floating-point value in the range [0,1] , which is multiplied by
     VALUE and added to the corresponding pixel component in the
     accumulation buffer, thereby updating the accumulation buffer.

`GL_LOAD'
     Similar to `GL_ACCUM', except that the current value in the
     accumulation buffer is not used in the calculation of the new
     value.  That is, the R, G, B, and A values from the currently
     selected buffer are divided by 2^N-1 , multiplied by VALUE, and
     then stored in the corresponding accumulation buffer cell,
     overwriting the current value.

`GL_ADD'
     Adds VALUE to each R, G, B, and A in the accumulation buffer.

`GL_MULT'
     Multiplies each R, G, B, and A in the accumulation buffer by VALUE
     and returns the scaled component to its corresponding accumulation
     buffer location.

`GL_RETURN'
     Transfers accumulation buffer values to the color buffer or buffers
     currently selected for writing.  Each R, G, B, and A component is
     multiplied by VALUE, then multiplied by 2^N-1 , clamped to the
     range [0,2^N-1] , and stored in the corresponding display buffer
     cell.  The only fragment operations that are applied to this
     transfer are pixel ownership, scissor, dithering, and color
     writemasks.

To clear the accumulation buffer, call `glClearAccum' with R, G, B, and
A values to set it to, then call `glClear' with the accumulation buffer
enabled.

`GL_INVALID_ENUM' is generated if OP is not an accepted value.

`GL_INVALID_OPERATION' is generated if there is no accumulation buffer.

`GL_INVALID_OPERATION' is generated if `glAccum' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glActiveTexture (texture GLenum) -> void))
  "Select active texture unit.

TEXTURE
     Specifies which texture unit to make active.  The number of texture
     units is implementation dependent, but must be at least two.
     TEXTURE must be one of `GL_TEXTURE' I , where i ranges from 0 to
     the larger of (`GL_MAX_TEXTURE_COORDS' - 1) and
     (`GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS' - 1).  The initial value is
     `GL_TEXTURE0'.

`glActiveTexture' selects which texture unit subsequent texture state
calls will affect.  The number of texture units an implementation
supports is implementation dependent, but must be at least 2.

Vertex arrays are client-side GL resources, which are selected by the
`glClientActiveTexture' routine.

`GL_INVALID_ENUM' is generated if TEXTURE is not one of `GL_TEXTURE'I ,
where i ranges from 0 to the larger of (`GL_MAX_TEXTURE_COORDS' - 1) and
(`GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS' - 1).")

(define-gl-procedures
  ((glAlphaFunc
     (func GLenum)
     (ref GLclampf)
     ->
     void))
  "Specify the alpha test function.

FUNC
     Specifies the alpha comparison function.  Symbolic constants
     `GL_NEVER', `GL_LESS', `GL_EQUAL', `GL_LEQUAL', `GL_GREATER',
     `GL_NOTEQUAL', `GL_GEQUAL', and `GL_ALWAYS' are accepted.  The
     initial value is `GL_ALWAYS'.

REF
     Specifies the reference value that incoming alpha values are
     compared to.  This value is clamped to the range [0,1] , where 0
     represents the lowest possible alpha value and 1 the highest
     possible value.  The initial reference value is 0.

The alpha test discards fragments depending on the outcome of a
comparison between an incoming fragment's alpha value and a constant
reference value.  `glAlphaFunc' specifies the reference value and the
comparison function.  The comparison is performed only if alpha testing
is enabled.  By default, it is not enabled.  (See `glEnable' and
`glDisable' of `GL_ALPHA_TEST'.)

FUNC and REF specify the conditions under which the pixel is drawn.  The
incoming alpha value is compared to REF using the function specified by
FUNC.  If the value passes the comparison, the incoming fragment is
drawn if it also passes subsequent stencil and depth buffer tests.  If
the value fails the comparison, no change is made to the frame buffer at
that pixel location.  The comparison functions are as follows:

`GL_NEVER'
     Never passes.

`GL_LESS'
     Passes if the incoming alpha value is less than the reference
     value.

`GL_EQUAL'
     Passes if the incoming alpha value is equal to the reference value.

`GL_LEQUAL'
     Passes if the incoming alpha value is less than or equal to the
     reference value.

`GL_GREATER'
     Passes if the incoming alpha value is greater than the reference
     value.

`GL_NOTEQUAL'
     Passes if the incoming alpha value is not equal to the reference
     value.

`GL_GEQUAL'
     Passes if the incoming alpha value is greater than or equal to the
     reference value.

`GL_ALWAYS'
     Always passes (initial value).

`glAlphaFunc' operates on all pixel write operations, including those
resulting from the scan conversion of points, lines, polygons, and
bitmaps, and from pixel draw and copy operations.  `glAlphaFunc' does
not affect screen clear operations.

`GL_INVALID_ENUM' is generated if FUNC is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glAlphaFunc' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glAreTexturesResident
     (n GLsizei)
     (textures const-GLuint-*)
     (residences GLboolean-*)
     ->
     GLboolean))
  "Determine if textures are loaded in texture memory.

N
     Specifies the number of textures to be queried.

TEXTURES
     Specifies an array containing the names of the textures to be
     queried.

RESIDENCES
     Specifies an array in which the texture residence status is
     returned.  The residence status of a texture named by an element of
     TEXTURES is returned in the corresponding element of RESIDENCES.

GL establishes a ``working set'' of textures that are resident in
texture memory.  These textures can be bound to a texture target much
more efficiently than textures that are not resident.

`glAreTexturesResident' queries the texture residence status of the N
textures named by the elements of TEXTURES.  If all the named textures
are resident, `glAreTexturesResident' returns `GL_TRUE', and the
contents of RESIDENCES are undisturbed.  If not all the named textures
are resident, `glAreTexturesResident' returns `GL_FALSE', and detailed
status is returned in the N elements of RESIDENCES.  If an element of
RESIDENCES is `GL_TRUE', then the texture named by the corresponding
element of TEXTURES is resident.

The residence status of a single bound texture may also be queried by
calling `glGetTexParameter' with the TARGET argument set to the target
to which the texture is bound, and the PNAME argument set to
`GL_TEXTURE_RESIDENT'.  This is the only way that the residence status
of a default texture can be queried.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_VALUE' is generated if any element in TEXTURES is 0 or does
not name a texture.  In that case, the function returns `GL_FALSE' and
the contents of RESIDENCES is indeterminate.

`GL_INVALID_OPERATION' is generated if `glAreTexturesResident' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glArrayElement (i GLint) -> void))
  "Render a vertex using the specified vertex array element.

I
     Specifies an index into the enabled vertex data arrays.

`glArrayElement' commands are used within `glBegin'/`glEnd' pairs to
specify vertex and attribute data for point, line, and polygon
primitives.  If `GL_VERTEX_ARRAY' is enabled when `glArrayElement' is
called, a single vertex is drawn, using vertex and attribute data taken
from location I of the enabled arrays.  If `GL_VERTEX_ARRAY' is not
enabled, no drawing occurs but the attributes corresponding to the
enabled arrays are modified.

Use `glArrayElement' to construct primitives by indexing vertex data,
rather than by streaming through arrays of data in first-to-last order.
Because each call specifies only a single vertex, it is possible to
explicitly specify per-primitive attributes such as a single normal for
each triangle.

Changes made to array data between the execution of `glBegin' and the
corresponding execution of `glEnd' may affect calls to `glArrayElement'
that are made within the same `glBegin'/`glEnd' period in nonsequential
ways.  That is, a call to `glArrayElement' that precedes a change to
array data may access the changed data, and a call that follows a change
to array data may access original data.

`GL_INVALID_VALUE' may be generated if I is negative.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to an enabled array and the buffer object's data store is
currently mapped.")

(define-gl-procedures
  ((glAttachShader
     (program GLuint)
     (shader GLuint)
     ->
     void))
  "Attaches a shader object to a program object.

PROGRAM
     Specifies the program object to which a shader object will be
     attached.

SHADER
     Specifies the shader object that is to be attached.

In order to create an executable, there must be a way to specify the
list of things that will be linked together.  Program objects provide
this mechanism.  Shaders that are to be linked together in a program
object must first be attached to that program object.  `glAttachShader'
attaches the shader object specified by SHADER to the program object
specified by PROGRAM.  This indicates that SHADER will be included in
link operations that will be performed on PROGRAM.

All operations that can be performed on a shader object are valid
whether or not the shader object is attached to a program object.  It is
permissible to attach a shader object to a program object before source
code has been loaded into the shader object or before the shader object
has been compiled.  It is permissible to attach multiple shader objects
of the same type because each may contain a portion of the complete
shader.  It is also permissible to attach a shader object to more than
one program object.  If a shader object is deleted while it is attached
to a program object, it will be flagged for deletion, and deletion will
not occur until `glDetachShader' is called to detach it from all program
objects to which it is attached.

`GL_INVALID_VALUE' is generated if either PROGRAM or SHADER is not a
value generated by OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if SHADER is not a shader object.

`GL_INVALID_OPERATION' is generated if SHADER is already attached to
PROGRAM.

`GL_INVALID_OPERATION' is generated if `glAttachShader' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glBeginQuery
     (target GLenum)
     (id GLuint)
     ->
     void)
   (glEndQuery (target GLenum) -> void))
  "Delimit the boundaries of a query object.

TARGET
     Specifies the target type of query object established between
     `glBeginQuery' and the subsequent `glEndQuery'.  The symbolic
     constant must be `GL_SAMPLES_PASSED'.

ID
     Specifies the name of a query object.

`glBeginQuery' and `glEndQuery' delimit the boundaries of a query
object.  If a query object with name ID does not yet exist it is
created.

When `glBeginQuery' is executed, the query object's samples-passed
counter is reset to 0.  Subsequent rendering will increment the counter
once for every sample that passes the depth test.  When `glEndQuery' is
executed, the samples-passed counter is assigned to the query object's
result value.  This value can be queried by calling `glGetQueryObject'
with PNAME`GL_QUERY_RESULT'.

Querying the `GL_QUERY_RESULT' implicitly flushes the GL pipeline until
the rendering delimited by the query object has completed and the result
is available.  `GL_QUERY_RESULT_AVAILABLE' can be queried to determine
if the result is immediately available or if the rendering is not yet
complete.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_SAMPLES_PASSED'.

`GL_INVALID_OPERATION' is generated if `glBeginQuery' is executed while
a query object of the same TARGET is already active.

`GL_INVALID_OPERATION' is generated if `glEndQuery' is executed when a
query object of the same TARGET is not active.

`GL_INVALID_OPERATION' is generated if ID is 0.

`GL_INVALID_OPERATION' is generated if ID is the name of an already
active query object.

`GL_INVALID_OPERATION' is generated if `glBeginQuery' or `glEndQuery' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glBegin (mode GLenum) -> void) (glEnd -> void))
  "Delimit the vertices of a primitive or a group of like primitives.

MODE
     Specifies the primitive or primitives that will be created from
     vertices presented between `glBegin' and the subsequent `glEnd'.
     Ten symbolic constants are accepted: `GL_POINTS', `GL_LINES',
     `GL_LINE_STRIP', `GL_LINE_LOOP', `GL_TRIANGLES',
     `GL_TRIANGLE_STRIP', `GL_TRIANGLE_FAN', `GL_QUADS',
     `GL_QUAD_STRIP', and `GL_POLYGON'.

`glBegin' and `glEnd' delimit the vertices that define a primitive or a
group of like primitives.  `glBegin' accepts a single argument that
specifies in which of ten ways the vertices are interpreted.  Taking N
as an integer count starting at one, and N as the total number of
vertices specified, the interpretations are as follows:

`GL_POINTS'
     Treats each vertex as a single point.  Vertex N defines point N .  N
     points are drawn.

`GL_LINES'
     Treats each pair of vertices as an independent line segment.
     Vertices 2\u2062N-1 and 2\u2062N define line N .  N/2 lines are drawn.

`GL_LINE_STRIP'
     Draws a connected group of line segments from the first vertex to
     the last.  Vertices N and N+1 define line N .  N-1 lines are drawn.

`GL_LINE_LOOP'
     Draws a connected group of line segments from the first vertex to
     the last, then back to the first.  Vertices N and N+1 define line N
     .  The last line, however, is defined by vertices N and 1 .  N
     lines are drawn.

`GL_TRIANGLES'
     Treats each triplet of vertices as an independent triangle.
     Vertices 3\u2062N-2 , 3\u2062N-1 , and 3\u2062N define triangle N .  N/3 triangles
     are drawn.

`GL_TRIANGLE_STRIP'
     Draws a connected group of triangles.  One triangle is defined for
     each vertex presented after the first two vertices.  For odd N ,
     vertices N , N+1 , and N+2 define triangle N .  For even N ,
     vertices N+1 , N , and N+2 define triangle N .  N-2 triangles are
     drawn.

`GL_TRIANGLE_FAN'
     Draws a connected group of triangles.  One triangle is defined for
     each vertex presented after the first two vertices.  Vertices 1 ,
     N+1 , and N+2 define triangle N .  N-2 triangles are drawn.

`GL_QUADS'
     Treats each group of four vertices as an independent quadrilateral.
     Vertices 4\u2062N-3 , 4\u2062N-2 , 4\u2062N-1 , and 4\u2062N define quadrilateral N .
     N/4 quadrilaterals are drawn.

`GL_QUAD_STRIP'
     Draws a connected group of quadrilaterals.  One quadrilateral is
     defined for each pair of vertices presented after the first pair.
     Vertices 2\u2062N-1 , 2\u2062N , 2\u2062N+2 , and 2\u2062N+1 define quadrilateral N .
     N/2-1 quadrilaterals are drawn.  Note that the order in which
     vertices are used to construct a quadrilateral from strip data is
     different from that used with independent data.

`GL_POLYGON'
     Draws a single, convex polygon.  Vertices 1 through N define this
     polygon.

Only a subset of GL commands can be used between `glBegin' and `glEnd'.
The commands are `glVertex', `glColor', `glSecondaryColor', `glIndex',
`glNormal', `glFogCoord', `glTexCoord', `glMultiTexCoord',
`glVertexAttrib', `glEvalCoord', `glEvalPoint', `glArrayElement',
`glMaterial', and `glEdgeFlag'.  Also, it is acceptable to use
`glCallList' or `glCallLists' to execute display lists that include only
the preceding commands.  If any other GL command is executed between
`glBegin' and `glEnd', the error flag is set and the command is ignored.

Regardless of the value chosen for MODE, there is no limit to the number
of vertices that can be defined between `glBegin' and `glEnd'.  Lines,
triangles, quadrilaterals, and polygons that are incompletely specified
are not drawn.  Incomplete specification results when either too few
vertices are provided to specify even a single primitive or when an
incorrect multiple of vertices is specified.  The incomplete primitive
is ignored; the rest are drawn.

The minimum specification of vertices for each primitive is as follows:
1 for a point, 2 for a line, 3 for a triangle, 4 for a quadrilateral,
and 3 for a polygon.  Modes that require a certain multiple of vertices
are `GL_LINES' (2), `GL_TRIANGLES' (3), `GL_QUADS' (4), and
`GL_QUAD_STRIP' (2).

`GL_INVALID_ENUM' is generated if MODE is set to an unaccepted value.

`GL_INVALID_OPERATION' is generated if `glBegin' is executed between a
`glBegin' and the corresponding execution of `glEnd'.

`GL_INVALID_OPERATION' is generated if `glEnd' is executed without being
preceded by a `glBegin'.

`GL_INVALID_OPERATION' is generated if a command other than `glVertex',
`glColor', `glSecondaryColor', `glIndex', `glNormal', `glFogCoord',
`glTexCoord', `glMultiTexCoord', `glVertexAttrib', `glEvalCoord',
`glEvalPoint', `glArrayElement', `glMaterial', `glEdgeFlag',
`glCallList', or `glCallLists' is executed between the execution of
`glBegin' and the corresponding execution `glEnd'.

Execution of `glEnableClientState', `glDisableClientState',
`glEdgeFlagPointer', `glFogCoordPointer', `glTexCoordPointer',
`glColorPointer', `glSecondaryColorPointer', `glIndexPointer',
`glNormalPointer', `glVertexPointer', `glVertexAttribPointer',
`glInterleavedArrays', or `glPixelStore' is not allowed after a call to
`glBegin' and before the corresponding call to `glEnd', but an error may
or may not be generated.")

(define-gl-procedures
  ((glBindAttribLocation
     (program GLuint)
     (index GLuint)
     (name const-GLchar-*)
     ->
     void))
  "Associates a generic vertex attribute index with a named attribute
variable.

PROGRAM
     Specifies the handle of the program object in which the association
     is to be made.

INDEX
     Specifies the index of the generic vertex attribute to be bound.

NAME
     Specifies a null terminated string containing the name of the
     vertex shader attribute variable to which INDEX is to be bound.

`glBindAttribLocation' is used to associate a user-defined attribute
variable in the program object specified by PROGRAM with a generic
vertex attribute index.  The name of the user-defined attribute variable
is passed as a null terminated string in NAME.  The generic vertex
attribute index to be bound to this variable is specified by INDEX.  When
PROGRAM is made part of current state, values provided via the generic
vertex attribute INDEX will modify the value of the user-defined
attribute variable specified by NAME.

If NAME refers to a matrix attribute variable, INDEX refers to the first
column of the matrix.  Other matrix columns are then automatically bound
to locations INDEX+1 for a matrix of type mat2; INDEX+1 and INDEX+2 for
a matrix of type mat3; and INDEX+1, INDEX+2, and INDEX+3 for a matrix of
type mat4.

This command makes it possible for vertex shaders to use descriptive
names for attribute variables rather than generic variables that are
numbered from 0 to `GL_MAX_VERTEX_ATTRIBS' -1.  The values sent to each
generic attribute index are part of current state, just like standard
vertex attributes such as color, normal, and vertex position.  If a
different program object is made current by calling `glUseProgram', the
generic vertex attributes are tracked in such a way that the same values
will be observed by attributes in the new program object that are also
bound to INDEX.

Attribute variable name-to-generic attribute index bindings for a
program object can be explicitly assigned at any time by calling
`glBindAttribLocation'.  Attribute bindings do not go into effect until
`glLinkProgram' is called.  After a program object has been linked
successfully, the index values for generic attributes remain fixed (and
their values can be queried) until the next link command occurs.

Applications are not allowed to bind any of the standard OpenGL vertex
attributes using this command, as they are bound automatically when
needed.  Any attribute binding that occurs after the program object has
been linked will not take effect until the next time the program object
is linked.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to
`GL_MAX_VERTEX_ATTRIBS'.

`GL_INVALID_OPERATION' is generated if NAME starts with the reserved
prefix \"gl_\".

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if `glBindAttribLocation' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glBindBuffer
     (target GLenum)
     (buffer GLuint)
     ->
     void))
  "Bind a named buffer object.

TARGET
     Specifies the target to which the buffer object is bound.  The
     symbolic constant must be `GL_ARRAY_BUFFER',
     `GL_ELEMENT_ARRAY_BUFFER', `GL_PIXEL_PACK_BUFFER', or
     `GL_PIXEL_UNPACK_BUFFER'.

BUFFER
     Specifies the name of a buffer object.

`glBindBuffer' lets you create or use a named buffer object.  Calling
`glBindBuffer' with TARGET set to `GL_ARRAY_BUFFER',
`GL_ELEMENT_ARRAY_BUFFER', `GL_PIXEL_PACK_BUFFER' or
`GL_PIXEL_UNPACK_BUFFER' and BUFFER set to the name of the new buffer
object binds the buffer object name to the target.  When a buffer object
is bound to a target, the previous binding for that target is
automatically broken.

Buffer object names are unsigned integers.  The value zero is reserved,
but there is no default buffer object for each buffer object target.
Instead, BUFFER set to zero effectively unbinds any buffer object
previously bound, and restores client memory usage for that buffer
object target.  Buffer object names and the corresponding buffer object
contents are local to the shared display-list space (see
`glXCreateContext') of the current GL rendering context; two rendering
contexts share buffer object names only if they also share display
lists.

You may use `glGenBuffers' to generate a set of new buffer object names.

The state of a buffer object immediately after it is first bound is an
unmapped zero-sized memory buffer with `GL_READ_WRITE' access and
`GL_STATIC_DRAW' usage.

While a non-zero buffer object name is bound, GL operations on the
target to which it is bound affect the bound buffer object, and queries
of the target to which it is bound return state from the bound buffer
object.  While buffer object name zero is bound, as in the initial
state, attempts to modify or query state on the target to which it is
bound generates an `GL_INVALID_OPERATION' error.

When vertex array pointer state is changed, for example by a call to
`glNormalPointer', the current buffer object binding
(`GL_ARRAY_BUFFER_BINDING') is copied into the corresponding client
state for the vertex array type being changed, for example
`GL_NORMAL_ARRAY_BUFFER_BINDING'.  While a non-zero buffer object is
bound to the `GL_ARRAY_BUFFER' target, the vertex array pointer
parameter that is traditionally interpreted as a pointer to client-side
memory is instead interpreted as an offset within the buffer object
measured in basic machine units.

While a non-zero buffer object is bound to the `GL_ELEMENT_ARRAY_BUFFER'
target, the indices parameter of `glDrawElements',
`glDrawRangeElements', or `glMultiDrawElements' that is traditionally
interpreted as a pointer to client-side memory is instead interpreted as
an offset within the buffer object measured in basic machine units.

While a non-zero buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target, the following commands are affected: `glGetCompressedTexImage',
`glGetConvolutionFilter', `glGetHistogram', `glGetMinmax',
`glGetPixelMap', `glGetPolygonStipple', `glGetSeparableFilter',
`glGetTexImage', and `glReadPixels'.  The pointer parameter that is
traditionally interpreted as a pointer to client-side memory where the
pixels are to be packed is instead interpreted as an offset within the
buffer object measured in basic machine units.

While a non-zero buffer object is bound to the `GL_PIXEL_UNPACK_BUFFER'
target, the following commands are affected: `glBitmap',
`glColorSubTable', `glColorTable', `glCompressedTexImage1D',
`glCompressedTexImage2D', `glCompressedTexImage3D',
`glCompressedTexSubImage1D', `glCompressedTexSubImage2D',
`glCompressedTexSubImage3D', `glConvolutionFilter1D',
`glConvolutionFilter2D', `glDrawPixels', `glPixelMap',
`glPolygonStipple', `glSeparableFilter2D', `glTexImage1D',
`glTexImage2D', `glTexImage3D', `glTexSubImage1D', `glTexSubImage2D',
and `glTexSubImage3D'.  The pointer parameter that is traditionally
interpreted as a pointer to client-side memory from which the pixels are
to be unpacked is instead interpreted as an offset within the buffer
object measured in basic machine units.

A buffer object binding created with `glBindBuffer' remains active until
a different buffer object name is bound to the same target, or until the
bound buffer object is deleted with `glDeleteBuffers'.

Once created, a named buffer object may be re-bound to any target as
often as needed.  However, the GL implementation may make choices about
how to optimize the storage of a buffer object based on its initial
binding target.

`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if `glBindBuffer' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glBindTexture
     (target GLenum)
     (texture GLuint)
     ->
     void))
  "Bind a named texture to a texturing target.

TARGET
     Specifies the target to which the texture is bound.  Must be either
     `GL_TEXTURE_1D', `GL_TEXTURE_2D', `GL_TEXTURE_3D', or
     `GL_TEXTURE_CUBE_MAP'.

TEXTURE
     Specifies the name of a texture.

`glBindTexture' lets you create or use a named texture.  Calling
`glBindTexture' with TARGET set to `GL_TEXTURE_1D', `GL_TEXTURE_2D',
`GL_TEXTURE_3D' or `GL_TEXTURE_CUBE_MAP' and TEXTURE set to the name of
the new texture binds the texture name to the target.  When a texture is
bound to a target, the previous binding for that target is automatically
broken.

Texture names are unsigned integers.  The value zero is reserved to
represent the default texture for each texture target.  Texture names
and the corresponding texture contents are local to the shared
display-list space (see `glXCreateContext') of the current GL rendering
context; two rendering contexts share texture names only if they also
share display lists.

You may use `glGenTextures' to generate a set of new texture names.

When a texture is first bound, it assumes the specified target: A
texture first bound to `GL_TEXTURE_1D' becomes one-dimensional texture,
a texture first bound to `GL_TEXTURE_2D' becomes two-dimensional
texture, a texture first bound to `GL_TEXTURE_3D' becomes
three-dimensional texture, and a texture first bound to
`GL_TEXTURE_CUBE_MAP' becomes a cube-mapped texture.  The state of a
one-dimensional texture immediately after it is first bound is
equivalent to the state of the default `GL_TEXTURE_1D' at GL
initialization, and similarly for two- and three-dimensional textures
and cube-mapped textures.

While a texture is bound, GL operations on the target to which it is
bound affect the bound texture, and queries of the target to which it is
bound return state from the bound texture.  If texture mapping is active
on the target to which a texture is bound, the bound texture is used.  In
effect, the texture targets become aliases for the textures currently
bound to them, and the texture name zero refers to the default textures
that were bound to them at initialization.

A texture binding created with `glBindTexture' remains active until a
different texture is bound to the same target, or until the bound
texture is deleted with `glDeleteTextures'.

Once created, a named texture may be re-bound to its same original
target as often as needed.  It is usually much faster to use
`glBindTexture' to bind an existing named texture to one of the texture
targets than it is to reload the texture image using `glTexImage1D',
`glTexImage2D', or `glTexImage3D'.  For additional control over
performance, use `glPrioritizeTextures'.

`glBindTexture' is included in display lists.

`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if TEXTURE was previously created
with a target that doesn't match that of TARGET.

`GL_INVALID_OPERATION' is generated if `glBindTexture' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glBitmap
     (width GLsizei)
     (height GLsizei)
     (xorig GLfloat)
     (yorig GLfloat)
     (xmove GLfloat)
     (ymove GLfloat)
     (bitmap const-GLubyte-*)
     ->
     void))
  "Draw a bitmap.

WIDTH
     HEIGHT

     Specify the pixel width and height of the bitmap image.

XORIG
     YORIG

     Specify the location of the origin in the bitmap image.  The origin
     is measured from the lower left corner of the bitmap, with right
     and up being the positive axes.

XMOVE
     YMOVE

     Specify the X and Y offsets to be added to the current raster
     position after the bitmap is drawn.

BITMAP
     Specifies the address of the bitmap image.

A bitmap is a binary image.  When drawn, the bitmap is positioned
relative to the current raster position, and frame buffer pixels
corresponding to 1's in the bitmap are written using the current raster
color or index.  Frame buffer pixels corresponding to 0's in the bitmap
are not modified.

`glBitmap' takes seven arguments.  The first pair specifies the width
and height of the bitmap image.  The second pair specifies the location
of the bitmap origin relative to the lower left corner of the bitmap
image.  The third pair of arguments specifies X and Y offsets to be
added to the current raster position after the bitmap has been drawn.
The final argument is a pointer to the bitmap image itself.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a bitmap
image is specified, BITMAP is treated as a byte offset into the buffer
object's data store.

The bitmap image is interpreted like image data for the `glDrawPixels'
command, with WIDTH and HEIGHT corresponding to the width and height
arguments of that command, and with TYPE set to `GL_BITMAP' and FORMAT
set to `GL_COLOR_INDEX'.  Modes specified using `glPixelStore' affect
the interpretation of bitmap image data; modes specified using
`glPixelTransfer' do not.

If the current raster position is invalid, `glBitmap' is ignored.
Otherwise, the lower left corner of the bitmap image is positioned at
the window coordinates

X_W=⌊X_R-X_O,⌋

Y_W=⌊Y_R-Y_O,⌋

where (X_R,Y_R) is the raster position and (X_O,Y_O) is the bitmap
origin.  Fragments are then generated for each pixel corresponding to a
1 (one) in the bitmap image.  These fragments are generated using the
current raster Z coordinate, color or color index, and current raster
texture coordinates.  They are then treated just as if they had been
generated by a point, line, or polygon, including texture mapping,
fogging, and all per-fragment operations such as alpha and depth
testing.

After the bitmap has been drawn, the X and Y coordinates of the current
raster position are offset by XMOVE and YMOVE.  No change is made to the
Z coordinate of the current raster position, or to the current raster
color, texture coordinates, or index.

`GL_INVALID_VALUE' is generated if WIDTH or HEIGHT is negative.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glBitmap' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glBlendColor
     (red GLclampf)
     (green GLclampf)
     (blue GLclampf)
     (alpha GLclampf)
     ->
     void))
  "Set the blend color.

RED
     GREEN

     BLUE

     ALPHA

     specify the components of `GL_BLEND_COLOR'

The `GL_BLEND_COLOR' may be used to calculate the source and destination
blending factors.  The color components are clamped to the range [0,1]
before being stored.  See `glBlendFunc' for a complete description of
the blending operations.  Initially the `GL_BLEND_COLOR' is set to (0,
0, 0, 0).

`GL_INVALID_OPERATION' is generated if `glBlendColor' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glBlendEquationSeparate
     (modeRGB GLenum)
     (modeAlpha GLenum)
     ->
     void))
  "Set the RGB blend equation and the alpha blend equation separately.

MODERGB
     specifies the RGB blend equation, how the red, green, and blue
     components of the source and destination colors are combined.  It
     must be `GL_FUNC_ADD', `GL_FUNC_SUBTRACT',
     `GL_FUNC_REVERSE_SUBTRACT', `GL_MIN', `GL_MAX'.

MODEALPHA
     specifies the alpha blend equation, how the alpha component of the
     source and destination colors are combined.  It must be
     `GL_FUNC_ADD', `GL_FUNC_SUBTRACT', `GL_FUNC_REVERSE_SUBTRACT',
     `GL_MIN', `GL_MAX'.

The blend equations determines how a new pixel (the ''source'' color) is
combined with a pixel already in the framebuffer (the ''destination''
color).  This function specifies one blend equation for the RGB-color
components and one blend equation for the alpha component.

The blend equations use the source and destination blend factors
specified by either `glBlendFunc' or `glBlendFuncSeparate'.  See
`glBlendFunc' or `glBlendFuncSeparate' for a description of the various
blend factors.

In the equations that follow, source and destination color components
are referred to as (R_S,G_SB_SA_S) and (R_D,G_DB_DA_D) , respectively.
The result color is referred to as (R_R,G_RB_RA_R) .  The source and
destination blend factors are denoted (S_R,S_GS_BS_A) and
(D_R,D_GD_BD_A) , respectively.  For these equations all color
components are understood to have values in the range [0,1] .

*Mode*
     *RGB Components*, *Alpha Component*

`GL_FUNC_ADD'
     RR=R_S\u2062S_R+R_D\u2062D_R GR=G_S\u2062S_G+G_D\u2062D_G BR=B_S\u2062S_B+B_D\u2062D_B ,
     AR=A_S\u2062S_A+A_D\u2062D_A

`GL_FUNC_SUBTRACT'
     RR=R_S\u2062S_R-R_D\u2062D_R GR=G_S\u2062S_G-G_D\u2062D_G BR=B_S\u2062S_B-B_D\u2062D_B ,
     AR=A_S\u2062S_A-A_D\u2062D_A

`GL_FUNC_REVERSE_SUBTRACT'
     RR=R_D\u2062D_R-R_S\u2062S_R GR=G_D\u2062D_G-G_S\u2062S_G BR=B_D\u2062D_B-B_S\u2062S_B ,
     AR=A_D\u2062D_A-A_S\u2062S_A

`GL_MIN'
     RR=MIN\u2061(R_S,R_D) GR=MIN\u2061(G_S,G_D) BR=MIN\u2061(B_S,B_D) ,
     AR=MIN\u2061(A_S,A_D)

`GL_MAX'
     RR=MAX\u2061(R_S,R_D) GR=MAX\u2061(G_S,G_D) BR=MAX\u2061(B_S,B_D) ,
     AR=MAX\u2061(A_S,A_D)

The results of these equations are clamped to the range [0,1] .

The `GL_MIN' and `GL_MAX' equations are useful for applications that
analyze image data (image thresholding against a constant color, for
example).  The `GL_FUNC_ADD' equation is useful for antialiasing and
transparency, among other things.

Initially, both the RGB blend equation and the alpha blend equation are
set to `GL_FUNC_ADD'.



`GL_INVALID_ENUM' is generated if either MODERGB or MODEALPHA is not one
of `GL_FUNC_ADD', `GL_FUNC_SUBTRACT', `GL_FUNC_REVERSE_SUBTRACT',
`GL_MAX', or `GL_MIN'.

`GL_INVALID_OPERATION' is generated if `glBlendEquationSeparate' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glBlendEquation (mode GLenum) -> void))
  "Specify the equation used for both the RGB blend equation and the Alpha
blend equation.

MODE
     specifies how source and destination colors are combined.  It must
     be `GL_FUNC_ADD', `GL_FUNC_SUBTRACT', `GL_FUNC_REVERSE_SUBTRACT',
     `GL_MIN', `GL_MAX'.

The blend equations determine how a new pixel (the ''source'' color) is
combined with a pixel already in the framebuffer (the ''destination''
color).  This function sets both the RGB blend equation and the alpha
blend equation to a single equation.

These equations use the source and destination blend factors specified
by either `glBlendFunc' or `glBlendFuncSeparate'.  See `glBlendFunc' or
`glBlendFuncSeparate' for a description of the various blend factors.

In the equations that follow, source and destination color components
are referred to as (R_S,G_SB_SA_S) and (R_D,G_DB_DA_D) , respectively.
The result color is referred to as (R_R,G_RB_RA_R) .  The source and
destination blend factors are denoted (S_R,S_GS_BS_A) and
(D_R,D_GD_BD_A) , respectively.  For these equations all color
components are understood to have values in the range [0,1] .

*Mode*
     *RGB Components*, *Alpha Component*

`GL_FUNC_ADD'
     RR=R_S\u2062S_R+R_D\u2062D_R GR=G_S\u2062S_G+G_D\u2062D_G BR=B_S\u2062S_B+B_D\u2062D_B ,
     AR=A_S\u2062S_A+A_D\u2062D_A

`GL_FUNC_SUBTRACT'
     RR=R_S\u2062S_R-R_D\u2062D_R GR=G_S\u2062S_G-G_D\u2062D_G BR=B_S\u2062S_B-B_D\u2062D_B ,
     AR=A_S\u2062S_A-A_D\u2062D_A

`GL_FUNC_REVERSE_SUBTRACT'
     RR=R_D\u2062D_R-R_S\u2062S_R GR=G_D\u2062D_G-G_S\u2062S_G BR=B_D\u2062D_B-B_S\u2062S_B ,
     AR=A_D\u2062D_A-A_S\u2062S_A

`GL_MIN'
     RR=MIN\u2061(R_S,R_D) GR=MIN\u2061(G_S,G_D) BR=MIN\u2061(B_S,B_D) ,
     AR=MIN\u2061(A_S,A_D)

`GL_MAX'
     RR=MAX\u2061(R_S,R_D) GR=MAX\u2061(G_S,G_D) BR=MAX\u2061(B_S,B_D) ,
     AR=MAX\u2061(A_S,A_D)

The results of these equations are clamped to the range [0,1] .

The `GL_MIN' and `GL_MAX' equations are useful for applications that
analyze image data (image thresholding against a constant color, for
example).  The `GL_FUNC_ADD' equation is useful for antialiasing and
transparency, among other things.

Initially, both the RGB blend equation and the alpha blend equation are
set to `GL_FUNC_ADD'.



`GL_INVALID_ENUM' is generated if MODE is not one of `GL_FUNC_ADD',
`GL_FUNC_SUBTRACT', `GL_FUNC_REVERSE_SUBTRACT', `GL_MAX', or `GL_MIN'.

`GL_INVALID_OPERATION' is generated if `glBlendEquation' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glBlendFuncSeparate
     (srcRGB GLenum)
     (dstRGB GLenum)
     (srcAlpha GLenum)
     (dstAlpha GLenum)
     ->
     void))
  "Specify pixel arithmetic for RGB and alpha components separately.

SRCRGB
     Specifies how the red, green, and blue blending factors are
     computed.  The following symbolic constants are accepted:
     `GL_ZERO', `GL_ONE', `GL_SRC_COLOR', `GL_ONE_MINUS_SRC_COLOR',
     `GL_DST_COLOR', `GL_ONE_MINUS_DST_COLOR', `GL_SRC_ALPHA',
     `GL_ONE_MINUS_SRC_ALPHA', `GL_DST_ALPHA', `GL_ONE_MINUS_DST_ALPHA',
     `GL_CONSTANT_COLOR', `GL_ONE_MINUS_CONSTANT_COLOR',
     `GL_CONSTANT_ALPHA', `GL_ONE_MINUS_CONSTANT_ALPHA', and
     `GL_SRC_ALPHA_SATURATE'.  The initial value is `GL_ONE'.

DSTRGB
     Specifies how the red, green, and blue destination blending factors
     are computed.  The following symbolic constants are accepted:
     `GL_ZERO', `GL_ONE', `GL_SRC_COLOR', `GL_ONE_MINUS_SRC_COLOR',
     `GL_DST_COLOR', `GL_ONE_MINUS_DST_COLOR', `GL_SRC_ALPHA',
     `GL_ONE_MINUS_SRC_ALPHA', `GL_DST_ALPHA', `GL_ONE_MINUS_DST_ALPHA'.
     `GL_CONSTANT_COLOR', `GL_ONE_MINUS_CONSTANT_COLOR',
     `GL_CONSTANT_ALPHA', and `GL_ONE_MINUS_CONSTANT_ALPHA'.  The
     initial value is `GL_ZERO'.

SRCALPHA
     Specified how the alpha source blending factor is computed.  The
     same symbolic constants are accepted as for SRCRGB.  The initial
     value is `GL_ONE'.

DSTALPHA
     Specified how the alpha destination blending factor is computed.
     The same symbolic constants are accepted as for DSTRGB.  The
     initial value is `GL_ZERO'.

In RGBA mode, pixels can be drawn using a function that blends the
incoming (source) RGBA values with the RGBA values that are already in
the frame buffer (the destination values).  Blending is initially
disabled.  Use `glEnable' and `glDisable' with argument `GL_BLEND' to
enable and disable blending.

`glBlendFuncSeparate' defines the operation of blending when it is
enabled.  SRCRGB specifies which method is used to scale the source
RGB-color components.  DSTRGB specifies which method is used to scale
the destination RGB-color components.  Likewise, SRCALPHA specifies
which method is used to scale the source alpha color component, and
DSTALPHA specifies which method is used to scale the destination alpha
component.  The possible methods are described in the following table.
Each method defines four scale factors, one each for red, green, blue,
and alpha.

In the table and in subsequent equations, source and destination color
components are referred to as (R_S,G_SB_SA_S) and (R_D,G_DB_DA_D) .  The
color specified by `glBlendColor' is referred to as (R_C,G_CB_CA_C) .
They are understood to have integer values between 0 and (K_R,K_GK_BK_A)
, where

K_C=2^M_C,-1

and (M_R,M_GM_BM_A) is the number of red, green, blue, and alpha
bitplanes.

Source and destination scale factors are referred to as (S_R,S_GS_BS_A)
and (D_R,D_GD_BD_A) .  All scale factors have range [0,1] .



*Parameter*
     *RGB Factor*, *Alpha Factor*

`GL_ZERO'
     (0,00) , 0

`GL_ONE'
     (1,11) , 1

`GL_SRC_COLOR'
     (R_S/K_R,G_S/K_GB_S/K_B) , A_S/K_A

`GL_ONE_MINUS_SRC_COLOR'
     (1,111)-(R_S/K_R,G_S/K_GB_S/K_B) , 1-A_S/K_A

`GL_DST_COLOR'
     (R_D/K_R,G_D/K_GB_D/K_B) , A_D/K_A

`GL_ONE_MINUS_DST_COLOR'
     (1,11)-(R_D/K_R,G_D/K_GB_D/K_B) , 1-A_D/K_A

`GL_SRC_ALPHA'
     (A_S/K_A,A_S/K_AA_S/K_A) , A_S/K_A

`GL_ONE_MINUS_SRC_ALPHA'
     (1,11)-(A_S/K_A,A_S/K_AA_S/K_A) , 1-A_S/K_A

`GL_DST_ALPHA'
     (A_D/K_A,A_D/K_AA_D/K_A) , A_D/K_A

`GL_ONE_MINUS_DST_ALPHA'
     (1,11)-(A_D/K_A,A_D/K_AA_D/K_A) , 1-A_D/K_A

`GL_CONSTANT_COLOR'
     (R_C,G_CB_C) , A_C

`GL_ONE_MINUS_CONSTANT_COLOR'
     (1,11)-(R_C,G_CB_C) , 1-A_C

`GL_CONSTANT_ALPHA'
     (A_C,A_CA_C) , A_C

`GL_ONE_MINUS_CONSTANT_ALPHA'
     (1,11)-(A_C,A_CA_C) , 1-A_C

`GL_SRC_ALPHA_SATURATE'
     (I,II) , 1

In the table,

I=MIN\u2061(A_S,1-A_D,)

To determine the blended RGBA values of a pixel when drawing in RGBA
mode, the system uses the following equations:

R_D=MIN\u2061(K_R,R_S\u2062S_R+R_D\u2062D_R) G_D=MIN\u2061(K_G,G_S\u2062S_G+G_D\u2062D_G)
B_D=MIN\u2061(K_B,B_S\u2062S_B+B_D\u2062D_B) A_D=MIN\u2061(K_A,A_S\u2062S_A+A_D\u2062D_A)

Despite the apparent precision of the above equations, blending
arithmetic is not exactly specified, because blending operates with
imprecise integer color values.  However, a blend factor that should be
equal to 1 is guaranteed not to modify its multiplicand, and a blend
factor equal to 0 reduces its multiplicand to 0.  For example, when
SRCRGB is `GL_SRC_ALPHA', DSTRGB is `GL_ONE_MINUS_SRC_ALPHA', and A_S is
equal to K_A , the equations reduce to simple replacement:

R_D=R_S G_D=G_S B_D=B_S A_D=A_S



`GL_INVALID_ENUM' is generated if either SRCRGB or DSTRGB is not an
accepted value.

`GL_INVALID_OPERATION' is generated if `glBlendFuncSeparate' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glBlendFunc
     (sfactor GLenum)
     (dfactor GLenum)
     ->
     void))
  "Specify pixel arithmetic.

SFACTOR
     Specifies how the red, green, blue, and alpha source blending
     factors are computed.  The following symbolic constants are
     accepted: `GL_ZERO', `GL_ONE', `GL_SRC_COLOR',
     `GL_ONE_MINUS_SRC_COLOR', `GL_DST_COLOR', `GL_ONE_MINUS_DST_COLOR',
     `GL_SRC_ALPHA', `GL_ONE_MINUS_SRC_ALPHA', `GL_DST_ALPHA',
     `GL_ONE_MINUS_DST_ALPHA', `GL_CONSTANT_COLOR',
     `GL_ONE_MINUS_CONSTANT_COLOR', `GL_CONSTANT_ALPHA',
     `GL_ONE_MINUS_CONSTANT_ALPHA', and `GL_SRC_ALPHA_SATURATE'.  The
     initial value is `GL_ONE'.

DFACTOR
     Specifies how the red, green, blue, and alpha destination blending
     factors are computed.  The following symbolic constants are
     accepted: `GL_ZERO', `GL_ONE', `GL_SRC_COLOR',
     `GL_ONE_MINUS_SRC_COLOR', `GL_DST_COLOR', `GL_ONE_MINUS_DST_COLOR',
     `GL_SRC_ALPHA', `GL_ONE_MINUS_SRC_ALPHA', `GL_DST_ALPHA',
     `GL_ONE_MINUS_DST_ALPHA'.  `GL_CONSTANT_COLOR',
     `GL_ONE_MINUS_CONSTANT_COLOR', `GL_CONSTANT_ALPHA', and
     `GL_ONE_MINUS_CONSTANT_ALPHA'.  The initial value is `GL_ZERO'.

In RGBA mode, pixels can be drawn using a function that blends the
incoming (source) RGBA values with the RGBA values that are already in
the frame buffer (the destination values).  Blending is initially
disabled.  Use `glEnable' and `glDisable' with argument `GL_BLEND' to
enable and disable blending.

`glBlendFunc' defines the operation of blending when it is enabled.
SFACTOR specifies which method is used to scale the source color
components.  DFACTOR specifies which method is used to scale the
destination color components.  The possible methods are described in the
following table.  Each method defines four scale factors, one each for
red, green, blue, and alpha.  In the table and in subsequent equations,
source and destination color components are referred to as
(R_S,G_SB_SA_S) and (R_D,G_DB_DA_D) .  The color specified by
`glBlendColor' is referred to as (R_C,G_CB_CA_C) .  They are understood
to have integer values between 0 and (K_R,K_GK_BK_A) , where

K_C=2^M_C,-1

and (M_R,M_GM_BM_A) is the number of red, green, blue, and alpha
bitplanes.

Source and destination scale factors are referred to as (S_R,S_GS_BS_A)
and (D_R,D_GD_BD_A) .  The scale factors described in the table, denoted
(F_R,F_GF_BF_A) , represent either source or destination factors.  All
scale factors have range [0,1] .



*Parameter*
     * (F_R,F_GF_BF_A) *

`GL_ZERO'
     (0,000)

`GL_ONE'
     (1,111)

`GL_SRC_COLOR'
     (R_S/K_R,G_S/K_GB_S/K_BA_S/K_A)

`GL_ONE_MINUS_SRC_COLOR'
     (1,111)-(R_S/K_R,G_S/K_GB_S/K_BA_S/K_A)

`GL_DST_COLOR'
     (R_D/K_R,G_D/K_GB_D/K_BA_D/K_A)

`GL_ONE_MINUS_DST_COLOR'
     (1,111)-(R_D/K_R,G_D/K_GB_D/K_BA_D/K_A)

`GL_SRC_ALPHA'
     (A_S/K_A,A_S/K_AA_S/K_AA_S/K_A)

`GL_ONE_MINUS_SRC_ALPHA'
     (1,111)-(A_S/K_A,A_S/K_AA_S/K_AA_S/K_A)

`GL_DST_ALPHA'
     (A_D/K_A,A_D/K_AA_D/K_AA_D/K_A)

`GL_ONE_MINUS_DST_ALPHA'
     (1,111)-(A_D/K_A,A_D/K_AA_D/K_AA_D/K_A)

`GL_CONSTANT_COLOR'
     (R_C,G_CB_CA_C)

`GL_ONE_MINUS_CONSTANT_COLOR'
     (1,111)-(R_C,G_CB_CA_C)

`GL_CONSTANT_ALPHA'
     (A_C,A_CA_CA_C)

`GL_ONE_MINUS_CONSTANT_ALPHA'
     (1,111)-(A_C,A_CA_CA_C)

`GL_SRC_ALPHA_SATURATE'
     (I,II1)

In the table,

I=MIN\u2061(A_S,K_A-A_D)/K_A

To determine the blended RGBA values of a pixel when drawing in RGBA
mode, the system uses the following equations:

R_D=MIN\u2061(K_R,R_S\u2062S_R+R_D\u2062D_R) G_D=MIN\u2061(K_G,G_S\u2062S_G+G_D\u2062D_G)
B_D=MIN\u2061(K_B,B_S\u2062S_B+B_D\u2062D_B) A_D=MIN\u2061(K_A,A_S\u2062S_A+A_D\u2062D_A)

Despite the apparent precision of the above equations, blending
arithmetic is not exactly specified, because blending operates with
imprecise integer color values.  However, a blend factor that should be
equal to 1 is guaranteed not to modify its multiplicand, and a blend
factor equal to 0 reduces its multiplicand to 0.  For example, when
SFACTOR is `GL_SRC_ALPHA', DFACTOR is `GL_ONE_MINUS_SRC_ALPHA', and A_S
is equal to K_A , the equations reduce to simple replacement:

R_D=R_S G_D=G_S B_D=B_S A_D=A_S



`GL_INVALID_ENUM' is generated if either SFACTOR or DFACTOR is not an
accepted value.

`GL_INVALID_OPERATION' is generated if `glBlendFunc' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glBufferData
     (target GLenum)
     (size GLsizeiptr)
     (data const-GLvoid-*)
     (usage GLenum)
     ->
     void))
  "Creates and initializes a buffer object's data store.

TARGET
     Specifies the target buffer object.  The symbolic constant must be
     `GL_ARRAY_BUFFER', `GL_ELEMENT_ARRAY_BUFFER',
     `GL_PIXEL_PACK_BUFFER', or `GL_PIXEL_UNPACK_BUFFER'.

SIZE
     Specifies the size in bytes of the buffer object's new data store.

DATA
     Specifies a pointer to data that will be copied into the data store
     for initialization, or `NULL' if no data is to be copied.

USAGE
     Specifies the expected usage pattern of the data store.  The
     symbolic constant must be `GL_STREAM_DRAW', `GL_STREAM_READ',
     `GL_STREAM_COPY', `GL_STATIC_DRAW', `GL_STATIC_READ',
     `GL_STATIC_COPY', `GL_DYNAMIC_DRAW', `GL_DYNAMIC_READ', or
     `GL_DYNAMIC_COPY'.

`glBufferData' creates a new data store for the buffer object currently
bound to TARGET.  Any pre-existing data store is deleted.  The new data
store is created with the specified SIZE in bytes and USAGE.  If DATA is
not `NULL', the data store is initialized with data from this pointer.
In its initial state, the new data store is not mapped, it has a `NULL'
mapped pointer, and its mapped access is `GL_READ_WRITE'.

USAGE is a hint to the GL implementation as to how a buffer object's
data store will be accessed.  This enables the GL implementation to make
more intelligent decisions that may significantly impact buffer object
performance.  It does not, however, constrain the actual usage of the
data store.  USAGE can be broken down into two parts: first, the
frequency of access (modification and usage), and second, the nature of
that access.  The frequency of access may be one of these:

STREAM
     The data store contents will be modified once and used at most a
     few times.

STATIC
     The data store contents will be modified once and used many times.

DYNAMIC
     The data store contents will be modified repeatedly and used many
     times.

The nature of access may be one of these:

DRAW
     The data store contents are modified by the application, and used
     as the source for GL drawing and image specification commands.

READ
     The data store contents are modified by reading data from the GL,
     and used to return that data when queried by the application.

COPY
     The data store contents are modified by reading data from the GL,
     and used as the source for GL drawing and image specification
     commands.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_ARRAY_BUFFER',
`GL_ELEMENT_ARRAY_BUFFER', `GL_PIXEL_PACK_BUFFER', or
`GL_PIXEL_UNPACK_BUFFER'.

`GL_INVALID_ENUM' is generated if USAGE is not `GL_STREAM_DRAW',
`GL_STREAM_READ', `GL_STREAM_COPY', `GL_STATIC_DRAW', `GL_STATIC_READ',
`GL_STATIC_COPY', `GL_DYNAMIC_DRAW', `GL_DYNAMIC_READ', or
`GL_DYNAMIC_COPY'.

`GL_INVALID_VALUE' is generated if SIZE is negative.

`GL_INVALID_OPERATION' is generated if the reserved buffer object name 0
is bound to TARGET.

`GL_OUT_OF_MEMORY' is generated if the GL is unable to create a data
store with the specified SIZE.

`GL_INVALID_OPERATION' is generated if `glBufferData' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glBufferSubData
     (target GLenum)
     (offset GLintptr)
     (size GLsizeiptr)
     (data const-GLvoid-*)
     ->
     void))
  "Updates a subset of a buffer object's data store.

TARGET
     Specifies the target buffer object.  The symbolic constant must be
     `GL_ARRAY_BUFFER', `GL_ELEMENT_ARRAY_BUFFER',
     `GL_PIXEL_PACK_BUFFER', or `GL_PIXEL_UNPACK_BUFFER'.

OFFSET
     Specifies the offset into the buffer object's data store where data
     replacement will begin, measured in bytes.

SIZE
     Specifies the size in bytes of the data store region being
     replaced.

DATA
     Specifies a pointer to the new data that will be copied into the
     data store.

`glBufferSubData' redefines some or all of the data store for the buffer
object currently bound to TARGET.  Data starting at byte offset OFFSET
and extending for SIZE bytes is copied to the data store from the memory
pointed to by DATA.  An error is thrown if OFFSET and SIZE together
define a range beyond the bounds of the buffer object's data store.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_ARRAY_BUFFER',
`GL_ELEMENT_ARRAY_BUFFER', `GL_PIXEL_PACK_BUFFER', or
`GL_PIXEL_UNPACK_BUFFER'.

`GL_INVALID_VALUE' is generated if OFFSET or SIZE is negative, or if
together they define a region of memory that extends beyond the buffer
object's allocated data store.

`GL_INVALID_OPERATION' is generated if the reserved buffer object name 0
is bound to TARGET.

`GL_INVALID_OPERATION' is generated if the buffer object being updated
is mapped.

`GL_INVALID_OPERATION' is generated if `glBufferSubData' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCallLists
     (n GLsizei)
     (type GLenum)
     (lists const-GLvoid-*)
     ->
     void))
  "Execute a list of display lists.

N
     Specifies the number of display lists to be executed.

TYPE
     Specifies the type of values in LISTS.  Symbolic constants
     `GL_BYTE', `GL_UNSIGNED_BYTE', `GL_SHORT', `GL_UNSIGNED_SHORT',
     `GL_INT', `GL_UNSIGNED_INT', `GL_FLOAT', `GL_2_BYTES',
     `GL_3_BYTES', and `GL_4_BYTES' are accepted.

LISTS
     Specifies the address of an array of name offsets in the display
     list.  The pointer type is void because the offsets can be bytes,
     shorts, ints, or floats, depending on the value of TYPE.

`glCallLists' causes each display list in the list of names passed as
LISTS to be executed.  As a result, the commands saved in each display
list are executed in order, just as if they were called without using a
display list.  Names of display lists that have not been defined are
ignored.

`glCallLists' provides an efficient means for executing more than one
display list.  TYPE allows lists with various name formats to be
accepted.  The formats are as follows:

`GL_BYTE'
     LISTS is treated as an array of signed bytes, each in the range
     -128 through 127.

`GL_UNSIGNED_BYTE'
     LISTS is treated as an array of unsigned bytes, each in the range 0
     through 255.

`GL_SHORT'
     LISTS is treated as an array of signed two-byte integers, each in
     the range -32768 through 32767.

`GL_UNSIGNED_SHORT'
     LISTS is treated as an array of unsigned two-byte integers, each in
     the range 0 through 65535.

`GL_INT'
     LISTS is treated as an array of signed four-byte integers.

`GL_UNSIGNED_INT'
     LISTS is treated as an array of unsigned four-byte integers.

`GL_FLOAT'
     LISTS is treated as an array of four-byte floating-point values.

`GL_2_BYTES'
     LISTS is treated as an array of unsigned bytes.  Each pair of bytes
     specifies a single display-list name.  The value of the pair is
     computed as 256 times the unsigned value of the first byte plus the
     unsigned value of the second byte.

`GL_3_BYTES'
     LISTS is treated as an array of unsigned bytes.  Each triplet of
     bytes specifies a single display-list name.  The value of the
     triplet is computed as 65536 times the unsigned value of the first
     byte, plus 256 times the unsigned value of the second byte, plus
     the unsigned value of the third byte.

`GL_4_BYTES'
     LISTS is treated as an array of unsigned bytes.  Each quadruplet of
     bytes specifies a single display-list name.  The value of the
     quadruplet is computed as 16777216 times the unsigned value of the
     first byte, plus 65536 times the unsigned value of the second byte,
     plus 256 times the unsigned value of the third byte, plus the
     unsigned value of the fourth byte.

The list of display-list names is not null-terminated.  Rather, N
specifies how many names are to be taken from LISTS.

An additional level of indirection is made available with the
`glListBase' command, which specifies an unsigned offset that is added
to each display-list name specified in LISTS before that display list is
executed.

`glCallLists' can appear inside a display list.  To avoid the
possibility of infinite recursion resulting from display lists calling
one another, a limit is placed on the nesting level of display lists
during display-list execution.  This limit must be at least 64, and it
depends on the implementation.

GL state is not saved and restored across a call to `glCallLists'.  Thus,
changes made to GL state during the execution of the display lists
remain after execution is completed.  Use `glPushAttrib', `glPopAttrib',
`glPushMatrix', and `glPopMatrix' to preserve GL state across
`glCallLists' calls.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_ENUM' is generated if TYPE is not one of `GL_BYTE',
`GL_UNSIGNED_BYTE', `GL_SHORT', `GL_UNSIGNED_SHORT', `GL_INT',
`GL_UNSIGNED_INT', `GL_FLOAT', `GL_2_BYTES', `GL_3_BYTES', `GL_4_BYTES'.")

(define-gl-procedures
  ((glCallList (list GLuint) -> void))
  "Execute a display list.

LIST
     Specifies the integer name of the display list to be executed.

`glCallList' causes the named display list to be executed.  The commands
saved in the display list are executed in order, just as if they were
called without using a display list.  If LIST has not been defined as a
display list, `glCallList' is ignored.

`glCallList' can appear inside a display list.  To avoid the possibility
of infinite recursion resulting from display lists calling one another,
a limit is placed on the nesting level of display lists during
display-list execution.  This limit is at least 64, and it depends on
the implementation.

GL state is not saved and restored across a call to `glCallList'.  Thus,
changes made to GL state during the execution of a display list remain
after execution of the display list is completed.  Use `glPushAttrib',
`glPopAttrib', `glPushMatrix', and `glPopMatrix' to preserve GL state
across `glCallList' calls.")

(define-gl-procedures
  ((glClearAccum
     (red GLfloat)
     (green GLfloat)
     (blue GLfloat)
     (alpha GLfloat)
     ->
     void))
  "Specify clear values for the accumulation buffer.

RED
     GREEN

     BLUE

     ALPHA

     Specify the red, green, blue, and alpha values used when the
     accumulation buffer is cleared.  The initial values are all 0.

`glClearAccum' specifies the red, green, blue, and alpha values used by
`glClear' to clear the accumulation buffer.

Values specified by `glClearAccum' are clamped to the range [-1,1] .

`GL_INVALID_OPERATION' is generated if `glClearAccum' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glClearColor
     (red GLclampf)
     (green GLclampf)
     (blue GLclampf)
     (alpha GLclampf)
     ->
     void))
  "Specify clear values for the color buffers.

RED
     GREEN

     BLUE

     ALPHA

     Specify the red, green, blue, and alpha values used when the color
     buffers are cleared.  The initial values are all 0.

`glClearColor' specifies the red, green, blue, and alpha values used by
`glClear' to clear the color buffers.  Values specified by
`glClearColor' are clamped to the range [0,1] .

`GL_INVALID_OPERATION' is generated if `glClearColor' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glClearDepth (depth GLclampd) -> void))
  "Specify the clear value for the depth buffer.

DEPTH
     Specifies the depth value used when the depth buffer is cleared.
     The initial value is 1.

`glClearDepth' specifies the depth value used by `glClear' to clear the
depth buffer.  Values specified by `glClearDepth' are clamped to the
range [0,1] .

`GL_INVALID_OPERATION' is generated if `glClearDepth' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glClearIndex (c GLfloat) -> void))
  "Specify the clear value for the color index buffers.

C
     Specifies the index used when the color index buffers are cleared.
     The initial value is 0.

`glClearIndex' specifies the index used by `glClear' to clear the color
index buffers.  C is not clamped.  Rather, C is converted to a
fixed-point value with unspecified precision to the right of the binary
point.  The integer part of this value is then masked with 2^M-1 , where
M is the number of bits in a color index stored in the frame buffer.

`GL_INVALID_OPERATION' is generated if `glClearIndex' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glClearStencil (s GLint) -> void))
  "Specify the clear value for the stencil buffer.

S
     Specifies the index used when the stencil buffer is cleared.  The
     initial value is 0.

`glClearStencil' specifies the index used by `glClear' to clear the
stencil buffer.  S is masked with 2^M-1 , where M is the number of bits
in the stencil buffer.

`GL_INVALID_OPERATION' is generated if `glClearStencil' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glClear (mask GLbitfield) -> void))
  "Clear buffers to preset values.

MASK
     Bitwise OR of masks that indicate the buffers to be cleared.  The
     four masks are `GL_COLOR_BUFFER_BIT', `GL_DEPTH_BUFFER_BIT',
     `GL_ACCUM_BUFFER_BIT', and `GL_STENCIL_BUFFER_BIT'.

`glClear' sets the bitplane area of the window to values previously
selected by `glClearColor', `glClearIndex', `glClearDepth',
`glClearStencil', and `glClearAccum'.  Multiple color buffers can be
cleared simultaneously by selecting more than one buffer at a time using
`glDrawBuffer'.

The pixel ownership test, the scissor test, dithering, and the buffer
writemasks affect the operation of `glClear'.  The scissor box bounds
the cleared region.  Alpha function, blend function, logical operation,
stenciling, texture mapping, and depth-buffering are ignored by
`glClear'.

`glClear' takes a single argument that is the bitwise OR of several
values indicating which buffer is to be cleared.

The values are as follows:

`GL_COLOR_BUFFER_BIT'
     Indicates the buffers currently enabled for color writing.

`GL_DEPTH_BUFFER_BIT'
     Indicates the depth buffer.

`GL_ACCUM_BUFFER_BIT'
     Indicates the accumulation buffer.

`GL_STENCIL_BUFFER_BIT'
     Indicates the stencil buffer.

The value to which each buffer is cleared depends on the setting of the
clear value for that buffer.

`GL_INVALID_VALUE' is generated if any bit other than the four defined
bits is set in MASK.

`GL_INVALID_OPERATION' is generated if `glClear' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glClientActiveTexture (texture GLenum) -> void))
  "Select active texture unit.

TEXTURE
     Specifies which texture unit to make active.  The number of texture
     units is implementation dependent, but must be at least two.
     TEXTURE must be one of `GL_TEXTURE' I , where i ranges from 0 to
     the value of `GL_MAX_TEXTURE_COORDS' - 1, which is an
     implementation-dependent value.  The initial value is
     `GL_TEXTURE0'.

`glClientActiveTexture' selects the vertex array client state parameters
to be modified by `glTexCoordPointer', and enabled or disabled with
`glEnableClientState' or `glDisableClientState', respectively, when
called with a parameter of `GL_TEXTURE_COORD_ARRAY'.

`GL_INVALID_ENUM' is generated if TEXTURE is not one of `GL_TEXTURE'I ,
where i ranges from 0 to the value of `GL_MAX_TEXTURE_COORDS' - 1.")

(define-gl-procedures
  ((glClipPlane
     (plane GLenum)
     (equation const-GLdouble-*)
     ->
     void))
  "Specify a plane against which all geometry is clipped.

PLANE
     Specifies which clipping plane is being positioned.  Symbolic names
     of the form `GL_CLIP_PLANE'I, where I is an integer between 0 and
     `GL_MAX_CLIP_PLANES' -1 , are accepted.

EQUATION
     Specifies the address of an array of four double-precision
     floating-point values.  These values are interpreted as a plane
     equation.

Geometry is always clipped against the boundaries of a six-plane frustum
in X, Y, and Z.  `glClipPlane' allows the specification of additional
planes, not necessarily perpendicular to the X, Y, or Z axis, against
which all geometry is clipped.  To determine the maximum number of
additional clipping planes, call `glGetIntegerv' with argument
`GL_MAX_CLIP_PLANES'.  All implementations support at least six such
clipping planes.  Because the resulting clipping region is the
intersection of the defined half-spaces, it is always convex.

`glClipPlane' specifies a half-space using a four-component plane
equation.  When `glClipPlane' is called, EQUATION is transformed by the
inverse of the modelview matrix and stored in the resulting eye
coordinates.  Subsequent changes to the modelview matrix have no effect
on the stored plane-equation components.  If the dot product of the eye
coordinates of a vertex with the stored plane equation components is
positive or zero, the vertex is IN with respect to that clipping plane.
Otherwise, it is OUT.

To enable and disable clipping planes, call `glEnable' and `glDisable'
with the argument `GL_CLIP_PLANE'I, where I is the plane number.

All clipping planes are initially defined as (0, 0, 0, 0) in eye
coordinates and are disabled.

`GL_INVALID_ENUM' is generated if PLANE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glClipPlane' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glColorMask
     (red GLboolean)
     (green GLboolean)
     (blue GLboolean)
     (alpha GLboolean)
     ->
     void))
  "Enable and disable writing of frame buffer color components.

RED
     GREEN

     BLUE

     ALPHA

     Specify whether red, green, blue, and alpha can or cannot be
     written into the frame buffer.  The initial values are all
     `GL_TRUE', indicating that the color components can be written.

`glColorMask' specifies whether the individual color components in the
frame buffer can or cannot be written.  If RED is `GL_FALSE', for
example, no change is made to the red component of any pixel in any of
the color buffers, regardless of the drawing operation attempted.

Changes to individual bits of components cannot be controlled.  Rather,
changes are either enabled or disabled for entire color components.

`GL_INVALID_OPERATION' is generated if `glColorMask' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glColorMaterial
     (face GLenum)
     (mode GLenum)
     ->
     void))
  "Cause a material color to track the current color.

FACE
     Specifies whether front, back, or both front and back material
     parameters should track the current color.  Accepted values are
     `GL_FRONT', `GL_BACK', and `GL_FRONT_AND_BACK'.  The initial value
     is `GL_FRONT_AND_BACK'.

MODE
     Specifies which of several material parameters track the current
     color.  Accepted values are `GL_EMISSION', `GL_AMBIENT',
     `GL_DIFFUSE', `GL_SPECULAR', and `GL_AMBIENT_AND_DIFFUSE'.  The
     initial value is `GL_AMBIENT_AND_DIFFUSE'.

`glColorMaterial' specifies which material parameters track the current
color.  When `GL_COLOR_MATERIAL' is enabled, the material parameter or
parameters specified by MODE, of the material or materials specified by
FACE, track the current color at all times.

To enable and disable `GL_COLOR_MATERIAL', call `glEnable' and
`glDisable' with argument `GL_COLOR_MATERIAL'.  `GL_COLOR_MATERIAL' is
initially disabled.

`GL_INVALID_ENUM' is generated if FACE or MODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glColorMaterial' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glColorPointer
     (size GLint)
     (type GLenum)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of colors.

SIZE
     Specifies the number of components per color.  Must be 3 or 4.  The
     initial value is 4.

TYPE
     Specifies the data type of each color component in the array.
     Symbolic constants `GL_BYTE', `GL_UNSIGNED_BYTE', `GL_SHORT',
     `GL_UNSIGNED_SHORT', `GL_INT', `GL_UNSIGNED_INT', `GL_FLOAT', and
     `GL_DOUBLE' are accepted.  The initial value is `GL_FLOAT'.

STRIDE
     Specifies the byte offset between consecutive colors.  If STRIDE is
     0, the colors are understood to be tightly packed in the array.  The
     initial value is 0.

POINTER
     Specifies a pointer to the first component of the first color
     element in the array.  The initial value is 0.

`glColorPointer' specifies the location and data format of an array of
color components to use when rendering.  SIZE specifies the number of
components per color, and must be 3 or 4.  TYPE specifies the data type
of each color component, and STRIDE specifies the byte stride from one
color to the next, allowing vertices and attributes to be packed into a
single array or stored in separate arrays.  (Single-array storage may be
more efficient on some implementations; see `glInterleavedArrays'.)

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a color array is specified, POINTER is
treated as a byte offset into the buffer object's data store.  Also, the
buffer object binding (`GL_ARRAY_BUFFER_BINDING') is saved as color
vertex array client-side state (`GL_COLOR_ARRAY_BUFFER_BINDING').

When a color array is specified, SIZE, TYPE, STRIDE, and POINTER are
saved as client-side state, in addition to the current vertex array
buffer object binding.

To enable and disable the color array, call `glEnableClientState' and
`glDisableClientState' with the argument `GL_COLOR_ARRAY'.  If enabled,
the color array is used when `glDrawArrays', `glMultiDrawArrays',
`glDrawElements', `glMultiDrawElements', `glDrawRangeElements', or
`glArrayElement' is called.

`GL_INVALID_VALUE' is generated if SIZE is not 3 or 4.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glColorSubTable
     (target GLenum)
     (start GLsizei)
     (count GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Respecify a portion of a color table.

TARGET
     Must be one of `GL_COLOR_TABLE', `GL_POST_CONVOLUTION_COLOR_TABLE',
     or `GL_POST_COLOR_MATRIX_COLOR_TABLE'.

START
     The starting index of the portion of the color table to be
     replaced.

COUNT
     The number of table entries to replace.

FORMAT
     The format of the pixel data in DATA.  The allowable values are
     `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_LUMINANCE',
     `GL_LUMINANCE_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', and `GL_BGRA'.

TYPE
     The type of the pixel data in DATA.  The allowable values are
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_UNSIGNED_SHORT', `GL_SHORT',
     `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2',
     `GL_UNSIGNED_BYTE_2_3_3_REV', `GL_UNSIGNED_SHORT_5_6_5',
     `GL_UNSIGNED_SHORT_5_6_5_REV', `GL_UNSIGNED_SHORT_4_4_4_4',
     `GL_UNSIGNED_SHORT_4_4_4_4_REV', `GL_UNSIGNED_SHORT_5_5_5_1',
     `GL_UNSIGNED_SHORT_1_5_5_5_REV', `GL_UNSIGNED_INT_8_8_8_8',
     `GL_UNSIGNED_INT_8_8_8_8_REV', `GL_UNSIGNED_INT_10_10_10_2', and
     `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Pointer to a one-dimensional array of pixel data that is processed
     to replace the specified region of the color table.

`glColorSubTable' is used to respecify a contiguous portion of a color
table previously defined using `glColorTable'.  The pixels referenced by
DATA replace the portion of the existing table from indices START to
START+COUNT-1 , inclusive.  This region may not include any entries
outside the range of the color table as it was originally specified.  It
is not an error to specify a subtexture with width of 0, but such a
specification has no effect.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a portion of
a color table is respecified, DATA is treated as a byte offset into the
buffer object's data store.

`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if START+COUNT>WIDTH .

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glColorSubTable' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glColorTableParameterfv
     (target GLenum)
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glColorTableParameteriv
     (target GLenum)
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Set color lookup table parameters.

TARGET
     The target color table.  Must be `GL_COLOR_TABLE',
     `GL_POST_CONVOLUTION_COLOR_TABLE', or
     `GL_POST_COLOR_MATRIX_COLOR_TABLE'.

PNAME
     The symbolic name of a texture color lookup table parameter.  Must
     be one of `GL_COLOR_TABLE_SCALE' or `GL_COLOR_TABLE_BIAS'.

PARAMS
     A pointer to an array where the values of the parameters are
     stored.

`glColorTableParameter' is used to specify the scale factors and bias
terms applied to color components when they are loaded into a color
table.  TARGET indicates which color table the scale and bias terms
apply to; it must be set to `GL_COLOR_TABLE',
`GL_POST_CONVOLUTION_COLOR_TABLE', or
`GL_POST_COLOR_MATRIX_COLOR_TABLE'.

PNAME must be `GL_COLOR_TABLE_SCALE' to set the scale factors.  In this
case, PARAMS points to an array of four values, which are the scale
factors for red, green, blue, and alpha, in that order.

PNAME must be `GL_COLOR_TABLE_BIAS' to set the bias terms.  In this
case, PARAMS points to an array of four values, which are the bias terms
for red, green, blue, and alpha, in that order.

The color tables themselves are specified by calling `glColorTable'.

`GL_INVALID_ENUM' is generated if TARGET or PNAME is not an acceptable
value.

`GL_INVALID_OPERATION' is generated if `glColorTableParameter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glColorTable
     (target GLenum)
     (internalformat GLenum)
     (width GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Define a color lookup table.

TARGET
     Must be one of `GL_COLOR_TABLE', `GL_POST_CONVOLUTION_COLOR_TABLE',
     `GL_POST_COLOR_MATRIX_COLOR_TABLE', `GL_PROXY_COLOR_TABLE',
     `GL_PROXY_POST_CONVOLUTION_COLOR_TABLE', or
     `GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE'.

INTERNALFORMAT
     The internal format of the color table.  The allowable values are
     `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8', `GL_ALPHA12', `GL_ALPHA16',
     `GL_LUMINANCE', `GL_LUMINANCE4', `GL_LUMINANCE8', `GL_LUMINANCE12',
     `GL_LUMINANCE16', `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', and `GL_RGBA16'.

WIDTH
     The number of entries in the color lookup table specified by DATA.

FORMAT
     The format of the pixel data in DATA.  The allowable values are
     `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_LUMINANCE',
     `GL_LUMINANCE_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', and `GL_BGRA'.

TYPE
     The type of the pixel data in DATA.  The allowable values are
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_UNSIGNED_SHORT', `GL_SHORT',
     `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2',
     `GL_UNSIGNED_BYTE_2_3_3_REV', `GL_UNSIGNED_SHORT_5_6_5',
     `GL_UNSIGNED_SHORT_5_6_5_REV', `GL_UNSIGNED_SHORT_4_4_4_4',
     `GL_UNSIGNED_SHORT_4_4_4_4_REV', `GL_UNSIGNED_SHORT_5_5_5_1',
     `GL_UNSIGNED_SHORT_1_5_5_5_REV', `GL_UNSIGNED_INT_8_8_8_8',
     `GL_UNSIGNED_INT_8_8_8_8_REV', `GL_UNSIGNED_INT_10_10_10_2', and
     `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Pointer to a one-dimensional array of pixel data that is processed
     to build the color table.

`glColorTable' may be used in two ways: to test the actual size and
color resolution of a lookup table given a particular set of parameters,
or to load the contents of a color lookup table.  Use the targets
`GL_PROXY_*' for the first case and the other targets for the second
case.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a color table
is specified, DATA is treated as a byte offset into the buffer object's
data store.

If TARGET is `GL_COLOR_TABLE', `GL_POST_CONVOLUTION_COLOR_TABLE', or
`GL_POST_COLOR_MATRIX_COLOR_TABLE', `glColorTable' builds a color lookup
table from an array of pixels.  The pixel array specified by WIDTH,
FORMAT, TYPE, and DATA is extracted from memory and processed just as if
`glDrawPixels' were called, but processing stops after the final
expansion to RGBA is completed.

The four scale parameters and the four bias parameters that are defined
for the table are then used to scale and bias the R, G, B, and A
components of each pixel.  (Use `glColorTableParameter' to set these
scale and bias parameters.)

Next, the R, G, B, and A values are clamped to the range [0,1] .  Each
pixel is then converted to the internal format specified by
INTERNALFORMAT.  This conversion simply maps the component values of the
pixel (R, G, B, and A) to the values included in the internal format
(red, green, blue, alpha, luminance, and intensity).  The mapping is as
follows:



*Internal Format*
     *Red*, *Green*, *Blue*, *Alpha*, *Luminance*, *Intensity*

`GL_ALPHA'
     , , , A , ,

`GL_LUMINANCE'
     , , , , R ,

`GL_LUMINANCE_ALPHA'
     , , , A , R ,

`GL_INTENSITY'
     , , , , , R

`GL_RGB'
     R , G , B , , ,

`GL_RGBA'
     R , G , B , A , ,

Finally, the red, green, blue, alpha, luminance, and/or intensity
components of the resulting pixels are stored in the color table.  They
form a one-dimensional table with indices in the range [0,WIDTH-1] .

If TARGET is `GL_PROXY_*', `glColorTable' recomputes and stores the
values of the proxy color table's state variables
`GL_COLOR_TABLE_FORMAT', `GL_COLOR_TABLE_WIDTH',
`GL_COLOR_TABLE_RED_SIZE', `GL_COLOR_TABLE_GREEN_SIZE',
`GL_COLOR_TABLE_BLUE_SIZE', `GL_COLOR_TABLE_ALPHA_SIZE',
`GL_COLOR_TABLE_LUMINANCE_SIZE', and `GL_COLOR_TABLE_INTENSITY_SIZE'.
There is no effect on the image or state of any actual color table.  If
the specified color table is too large to be supported, then all the
proxy state variables listed above are set to zero.  Otherwise, the
color table could be supported by `glColorTable' using the corresponding
non-proxy target, and the proxy state variables are set as if that
target were being defined.

The proxy state variables can be retrieved by calling
`glGetColorTableParameter' with a target of `GL_PROXY_*'.  This allows
the application to decide if a particular `glColorTable' command would
succeed, and to determine what the resulting color table attributes
would be.

If a color table is enabled, and its width is non-zero, then its
contents are used to replace a subset of the components of each RGBA
pixel group, based on the internal format of the table.

Each pixel group has color components (R, G, B, A) that are in the range
[0.0,1.0] .  The color components are rescaled to the size of the color
lookup table to form an index.  Then a subset of the components based on
the internal format of the table are replaced by the table entry
selected by that index.  If the color components and contents of the
table are represented as follows:



*Representation*
     *Meaning*

`r'
     Table index computed from `R'

`g'
     Table index computed from `G'

`b'
     Table index computed from `B'

`a'
     Table index computed from `A'

`L[i]'
     Luminance value at table index `i'

`I[i]'
     Intensity value at table index `i'

`R[i]'
     Red value at table index `i'

`G[i]'
     Green value at table index `i'

`B[i]'
     Blue value at table index `i'

`A[i]'
     Alpha value at table index `i'

then the result of color table lookup is as follows:



**
     *Resulting Texture Components*

*Table Internal Format*
     *R*, *G*, *B*, *A*

`GL_ALPHA'
     `R', `G', `B', `A[a]'

`GL_LUMINANCE'
     `L[r]', `L[g]', `L[b]', `At'

`GL_LUMINANCE_ALPHA'
     `L[r]', `L[g]', `L[b]', `A[a]'

`GL_INTENSITY'
     `I[r]', `I[g]', `I[b]', `I[a]'

`GL_RGB'
     `R[r]', `G[g]', `B[b]', `A'

`GL_RGBA'
     `R[r]', `G[g]', `B[b]', `A[a]'

When `GL_COLOR_TABLE' is enabled, the colors resulting from the pixel
map operation (if it is enabled) are mapped by the color lookup table
before being passed to the convolution operation.  The colors resulting
from the convolution operation are modified by the post convolution
color lookup table when `GL_POST_CONVOLUTION_COLOR_TABLE' is enabled.
These modified colors are then sent to the color matrix operation.
Finally, if `GL_POST_COLOR_MATRIX_COLOR_TABLE' is enabled, the colors
resulting from the color matrix operation are mapped by the post color
matrix color lookup table before being used by the histogram operation.



`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero.

`GL_TABLE_TOO_LARGE' is generated if the requested color table is too
large to be supported by the implementation, and TARGET is not a
`GL_PROXY_*' target.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glColorTable' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glColor3b
     (red GLbyte)
     (green GLbyte)
     (blue GLbyte)
     ->
     void)
   (glColor3s
     (red GLshort)
     (green GLshort)
     (blue GLshort)
     ->
     void)
   (glColor3i
     (red GLint)
     (green GLint)
     (blue GLint)
     ->
     void)
   (glColor3f
     (red GLfloat)
     (green GLfloat)
     (blue GLfloat)
     ->
     void)
   (glColor3d
     (red GLdouble)
     (green GLdouble)
     (blue GLdouble)
     ->
     void)
   (glColor3ub
     (red GLubyte)
     (green GLubyte)
     (blue GLubyte)
     ->
     void)
   (glColor3us
     (red GLushort)
     (green GLushort)
     (blue GLushort)
     ->
     void)
   (glColor3ui
     (red GLuint)
     (green GLuint)
     (blue GLuint)
     ->
     void)
   (glColor4b
     (red GLbyte)
     (green GLbyte)
     (blue GLbyte)
     (alpha GLbyte)
     ->
     void)
   (glColor4s
     (red GLshort)
     (green GLshort)
     (blue GLshort)
     (alpha GLshort)
     ->
     void)
   (glColor4i
     (red GLint)
     (green GLint)
     (blue GLint)
     (alpha GLint)
     ->
     void)
   (glColor4f
     (red GLfloat)
     (green GLfloat)
     (blue GLfloat)
     (alpha GLfloat)
     ->
     void)
   (glColor4d
     (red GLdouble)
     (green GLdouble)
     (blue GLdouble)
     (alpha GLdouble)
     ->
     void)
   (glColor4ub
     (red GLubyte)
     (green GLubyte)
     (blue GLubyte)
     (alpha GLubyte)
     ->
     void)
   (glColor4us
     (red GLushort)
     (green GLushort)
     (blue GLushort)
     (alpha GLushort)
     ->
     void)
   (glColor4ui
     (red GLuint)
     (green GLuint)
     (blue GLuint)
     (alpha GLuint)
     ->
     void)
   (glColor3bv (v const-GLbyte-*) -> void)
   (glColor3sv (v const-GLshort-*) -> void)
   (glColor3iv (v const-GLint-*) -> void)
   (glColor3fv (v const-GLfloat-*) -> void)
   (glColor3dv (v const-GLdouble-*) -> void)
   (glColor3ubv (v const-GLubyte-*) -> void)
   (glColor3usv (v const-GLushort-*) -> void)
   (glColor3uiv (v const-GLuint-*) -> void)
   (glColor4bv (v const-GLbyte-*) -> void)
   (glColor4sv (v const-GLshort-*) -> void)
   (glColor4iv (v const-GLint-*) -> void)
   (glColor4fv (v const-GLfloat-*) -> void)
   (glColor4dv (v const-GLdouble-*) -> void)
   (glColor4ubv (v const-GLubyte-*) -> void)
   (glColor4usv (v const-GLushort-*) -> void)
   (glColor4uiv (v const-GLuint-*) -> void))
  "Set the current color.

RED
     GREEN

     BLUE

     Specify new red, green, and blue values for the current color.

ALPHA
     Specifies a new alpha value for the current color.  Included only
     in the four-argument `glColor4' commands.

The GL stores both a current single-valued color index and a current
four-valued RGBA color.  `glColor' sets a new four-valued RGBA color.
`glColor' has two major variants: `glColor3' and `glColor4'.  `glColor3'
variants specify new red, green, and blue values explicitly and set the
current alpha value to 1.0 (full intensity) implicitly.  `glColor4'
variants specify all four color components explicitly.

`glColor3b', `glColor4b', `glColor3s', `glColor4s', `glColor3i', and
`glColor4i' take three or four signed byte, short, or long integers as
arguments.  When *v* is appended to the name, the color commands can
take a pointer to an array of such values.

Current color values are stored in floating-point format, with
unspecified mantissa and exponent sizes.  Unsigned integer color
components, when specified, are linearly mapped to floating-point values
such that the largest representable value maps to 1.0 (full intensity),
and 0 maps to 0.0 (zero intensity).  Signed integer color components,
when specified, are linearly mapped to floating-point values such that
the most positive representable value maps to 1.0, and the most negative
representable value maps to -1.0 .  (Note that this mapping does not
convert 0 precisely to 0.0.) Floating-point values are mapped directly.

Neither floating-point nor signed integer values are clamped to the
range [0,1] before the current color is updated.  However, color
components are clamped to this range before they are interpolated or
written into a color buffer.")

(define-gl-procedures
  ((glCompileShader (shader GLuint) -> void))
  "Compiles a shader object.

SHADER
     Specifies the shader object to be compiled.

`glCompileShader' compiles the source code strings that have been stored
in the shader object specified by SHADER.

The compilation status will be stored as part of the shader object's
state.  This value will be set to `GL_TRUE' if the shader was compiled
without errors and is ready for use, and `GL_FALSE' otherwise.  It can
be queried by calling `glGetShader' with arguments SHADER and
`GL_COMPILE_STATUS'.

Compilation of a shader can fail for a number of reasons as specified by
the OpenGL Shading Language Specification.  Whether or not the
compilation was successful, information about the compilation can be
obtained from the shader object's information log by calling
`glGetShaderInfoLog'.

`GL_INVALID_VALUE' is generated if SHADER is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if SHADER is not a shader object.

`GL_INVALID_OPERATION' is generated if `glCompileShader' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCompressedTexImage1D
     (target GLenum)
     (level GLint)
     (internalformat GLenum)
     (width GLsizei)
     (border GLint)
     (imageSize GLsizei)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a one-dimensional texture image in a compressed format.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_1D' or
     `GL_PROXY_TEXTURE_1D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

INTERNALFORMAT
     Specifies the format of the compressed image data stored at address
     DATA.

WIDTH
     Specifies the width of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support texture images that are at least 64 texels
     wide.  The height of the 1D texture image is 1.

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

IMAGESIZE
     Specifies the number of unsigned bytes of image data starting at
     the address specified by DATA.

DATA
     Specifies a pointer to the compressed image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable one-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_1D'.

`glCompressedTexImage1D' loads a previously defined, and retrieved,
compressed one-dimensional texture image if TARGET is `GL_TEXTURE_1D'
(see `glTexImage1D').

If TARGET is `GL_PROXY_TEXTURE_1D', no data is read from DATA, but all
of the texture image state is recalculated, checked for consistency, and
checked against the implementation's capabilities.  If the
implementation cannot handle a texture of the requested texture size, it
sets all of the image state to 0, but does not generate an error (see
`glGetError').  To query for an entire mipmap array, use an image array
level greater than or equal to 1.

INTERNALFORMAT must be extension-specified compressed-texture format.
When a texture is loaded with `glTexImage1D' using a generic compressed
texture format (e.g., `GL_COMPRESSED_RGB') the GL selects from one of
its extensions supporting compressed textures.  In order to load the
compressed texture image using `glCompressedTexImage1D', query the
compressed texture image's size and format using
`glGetTexLevelParameter'.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is one of the generic
compressed internal formats: `GL_COMPRESSED_ALPHA',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB', or `GL_COMPRESSED_RGBA'.

`GL_INVALID_VALUE' is generated if IMAGESIZE is not consistent with the
format, dimensions, and contents of the specified compressed image data.

`GL_INVALID_OPERATION' is generated if parameter combinations are not
supported by the specific compressed internal format as specified in the
specific texture compression extension.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glCompressedTexImage1D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

Undefined results, including abnormal program termination, are generated
if DATA is not encoded in a manner consistent with the extension
specification defining the internal compression format.")

(define-gl-procedures
  ((glCompressedTexImage2D
     (target GLenum)
     (level GLint)
     (internalformat GLenum)
     (width GLsizei)
     (height GLsizei)
     (border GLint)
     (imageSize GLsizei)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a two-dimensional texture image in a compressed format.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_2D',
     `GL_PROXY_TEXTURE_2D', `GL_TEXTURE_CUBE_MAP_POSITIVE_X',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_X', `GL_TEXTURE_CUBE_MAP_POSITIVE_Y',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y', `GL_TEXTURE_CUBE_MAP_POSITIVE_Z',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z', or `GL_PROXY_TEXTURE_CUBE_MAP'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

INTERNALFORMAT
     Specifies the format of the compressed image data stored at address
     DATA.

WIDTH
     Specifies the width of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support 2D texture images that are at least 64
     texels wide and cube-mapped texture images that are at least 16
     texels wide.

HEIGHT
     Specifies the height of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be Must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support 2D texture images that are at least 64
     texels high and cube-mapped texture images that are at least 16
     texels high.

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

IMAGESIZE
     Specifies the number of unsigned bytes of image data starting at
     the address specified by DATA.

DATA
     Specifies a pointer to the compressed image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable two-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_2D'.  To enable and disable texturing using
cube-mapped textures, call `glEnable' and `glDisable' with argument
`GL_TEXTURE_CUBE_MAP'.

`glCompressedTexImage2D' loads a previously defined, and retrieved,
compressed two-dimensional texture image if TARGET is `GL_TEXTURE_2D'
(see `glTexImage2D').

If TARGET is `GL_PROXY_TEXTURE_2D', no data is read from DATA, but all
of the texture image state is recalculated, checked for consistency, and
checked against the implementation's capabilities.  If the
implementation cannot handle a texture of the requested texture size, it
sets all of the image state to 0, but does not generate an error (see
`glGetError').  To query for an entire mipmap array, use an image array
level greater than or equal to 1.

INTERNALFORMAT must be an extension-specified compressed-texture format.
When a texture is loaded with `glTexImage2D' using a generic compressed
texture format (e.g., `GL_COMPRESSED_RGB'), the GL selects from one of
its extensions supporting compressed textures.  In order to load the
compressed texture image using `glCompressedTexImage2D', query the
compressed texture image's size and format using
`glGetTexLevelParameter'.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is one of the generic
compressed internal formats: `GL_COMPRESSED_ALPHA',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB', or `GL_COMPRESSED_RGBA'.

`GL_INVALID_VALUE' is generated if IMAGESIZE is not consistent with the
format, dimensions, and contents of the specified compressed image data.

`GL_INVALID_OPERATION' is generated if parameter combinations are not
supported by the specific compressed internal format as specified in the
specific texture compression extension.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glCompressedTexImage2D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

Undefined results, including abnormal program termination, are generated
if DATA is not encoded in a manner consistent with the extension
specification defining the internal compression format.")

(define-gl-procedures
  ((glCompressedTexImage3D
     (target GLenum)
     (level GLint)
     (internalformat GLenum)
     (width GLsizei)
     (height GLsizei)
     (depth GLsizei)
     (border GLint)
     (imageSize GLsizei)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a three-dimensional texture image in a compressed format.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_3D' or
     `GL_PROXY_TEXTURE_3D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

INTERNALFORMAT
     Specifies the format of the compressed image data stored at address
     DATA.

WIDTH
     Specifies the width of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support 3D texture images that are at least 16
     texels wide.

HEIGHT
     Specifies the height of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support 3D texture images that are at least 16
     texels high.

DEPTH
     Specifies the depth of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support 3D texture images that are at least 16
     texels deep.

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

IMAGESIZE
     Specifies the number of unsigned bytes of image data starting at
     the address specified by DATA.

DATA
     Specifies a pointer to the compressed image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable three-dimensional texturing, call `glEnable' and `glDisable'
with argument `GL_TEXTURE_3D'.

`glCompressedTexImage3D' loads a previously defined, and retrieved,
compressed three-dimensional texture image if TARGET is `GL_TEXTURE_3D'
(see `glTexImage3D').

If TARGET is `GL_PROXY_TEXTURE_3D', no data is read from DATA, but all
of the texture image state is recalculated, checked for consistency, and
checked against the implementation's capabilities.  If the
implementation cannot handle a texture of the requested texture size, it
sets all of the image state to 0, but does not generate an error (see
`glGetError').  To query for an entire mipmap array, use an image array
level greater than or equal to 1.

INTERNALFORMAT must be an extension-specified compressed-texture format.
When a texture is loaded with `glTexImage2D' using a generic compressed
texture format (e.g., `GL_COMPRESSED_RGB'), the GL selects from one of
its extensions supporting compressed textures.  In order to load the
compressed texture image using `glCompressedTexImage3D', query the
compressed texture image's size and format using
`glGetTexLevelParameter'.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is one of the generic
compressed internal formats: `GL_COMPRESSED_ALPHA',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB', or `GL_COMPRESSED_RGBA'.

`GL_INVALID_VALUE' is generated if IMAGESIZE is not consistent with the
format, dimensions, and contents of the specified compressed image data.

`GL_INVALID_OPERATION' is generated if parameter combinations are not
supported by the specific compressed internal format as specified in the
specific texture compression extension.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glCompressedTexImage3D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

Undefined results, including abnormal program termination, are generated
if DATA is not encoded in a manner consistent with the extension
specification defining the internal compression format.")

(define-gl-procedures
  ((glCompressedTexSubImage1D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (width GLsizei)
     (format GLenum)
     (imageSize GLsizei)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a one-dimensional texture subimage in a compressed format.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_1D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

WIDTH
     Specifies the width of the texture subimage.

FORMAT
     Specifies the format of the compressed image data stored at address
     DATA.

IMAGESIZE
     Specifies the number of unsigned bytes of image data starting at
     the address specified by DATA.

DATA
     Specifies a pointer to the compressed image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable one-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_1D'.

`glCompressedTexSubImage1D' redefines a contiguous subregion of an
existing one-dimensional texture image.  The texels referenced by DATA
replace the portion of the existing texture array with x indices XOFFSET
and XOFFSET+WIDTH-1 , inclusive.  This region may not include any texels
outside the range of the texture array as it was originally specified.
It is not an error to specify a subtexture with width of 0, but such a
specification has no effect.

FORMAT must be an extension-specified compressed-texture format.  The
FORMAT of the compressed texture image is selected by the GL
implementation that compressed it (see `glTexImage1D'), and should be
queried at the time the texture was compressed with
`glGetTexLevelParameter'.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if FORMAT is one of these generic
compressed internal formats: `GL_COMPRESSED_ALPHA',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB', `GL_COMPRESSED_RGBA',
`GL_COMPRESSED_SLUMINANCE', `GL_COMPRESSED_SLUMINANCE_ALPHA',
`GL_COMPRESSED_SRGB', `GL_COMPRESSED_SRGBA', or
`GL_COMPRESSED_SRGB_ALPHA'.

`GL_INVALID_VALUE' is generated if IMAGESIZE is not consistent with the
format, dimensions, and contents of the specified compressed image data.

`GL_INVALID_OPERATION' is generated if parameter combinations are not
supported by the specific compressed internal format as specified in the
specific texture compression extension.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glCompressedTexSubImage1D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

Undefined results, including abnormal program termination, are generated
if DATA is not encoded in a manner consistent with the extension
specification defining the internal compression format.")

(define-gl-procedures
  ((glCompressedTexSubImage2D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (yoffset GLint)
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (imageSize GLsizei)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a two-dimensional texture subimage in a compressed format.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_2D',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

YOFFSET
     Specifies a texel offset in the y direction within the texture
     array.

WIDTH
     Specifies the width of the texture subimage.

HEIGHT
     Specifies the height of the texture subimage.

FORMAT
     Specifies the format of the compressed image data stored at address
     DATA.

IMAGESIZE
     Specifies the number of unsigned bytes of image data starting at
     the address specified by DATA.

DATA
     Specifies a pointer to the compressed image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable two-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_2D'.  To enable and disable texturing using
cube-mapped texture, call `glEnable' and `glDisable' with argument
`GL_TEXTURE_CUBE_MAP'.

`glCompressedTexSubImage2D' redefines a contiguous subregion of an
existing two-dimensional texture image.  The texels referenced by DATA
replace the portion of the existing texture array with x indices XOFFSET
and XOFFSET+WIDTH-1 , and the y indices YOFFSET and YOFFSET+HEIGHT-1 ,
inclusive.  This region may not include any texels outside the range of
the texture array as it was originally specified.  It is not an error to
specify a subtexture with width of 0, but such a specification has no
effect.

FORMAT must be an extension-specified compressed-texture format.  The
FORMAT of the compressed texture image is selected by the GL
implementation that compressed it (see `glTexImage2D') and should be
queried at the time the texture was compressed with
`glGetTexLevelParameter'.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if FORMAT is one of these generic
compressed internal formats: `GL_COMPRESSED_ALPHA',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB', `GL_COMPRESSED_RGBA',
`GL_COMPRESSED_SLUMINANCE', `GL_COMPRESSED_SLUMINANCE_ALPHA',
`GL_COMPRESSED_SRGB', `GL_COMPRESSED_SRGBA', or
`GL_COMPRESSED_SRGB_ALPHA'.

`GL_INVALID_VALUE' is generated if IMAGESIZE is not consistent with the
format, dimensions, and contents of the specified compressed image data.

`GL_INVALID_OPERATION' is generated if parameter combinations are not
supported by the specific compressed internal format as specified in the
specific texture compression extension.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glCompressedTexSubImage2D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

Undefined results, including abnormal program termination, are generated
if DATA is not encoded in a manner consistent with the extension
specification defining the internal compression format.")

(define-gl-procedures
  ((glCompressedTexSubImage3D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (yoffset GLint)
     (zoffset GLint)
     (width GLsizei)
     (height GLsizei)
     (depth GLsizei)
     (format GLenum)
     (imageSize GLsizei)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a three-dimensional texture subimage in a compressed format.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_3D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

YOFFSET
     Specifies a texel offset in the y direction within the texture
     array.

WIDTH
     Specifies the width of the texture subimage.

HEIGHT
     Specifies the height of the texture subimage.

DEPTH
     Specifies the depth of the texture subimage.

FORMAT
     Specifies the format of the compressed image data stored at address
     DATA.

IMAGESIZE
     Specifies the number of unsigned bytes of image data starting at
     the address specified by DATA.

DATA
     Specifies a pointer to the compressed image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable three-dimensional texturing, call `glEnable' and `glDisable'
with argument `GL_TEXTURE_3D'.

`glCompressedTexSubImage3D' redefines a contiguous subregion of an
existing three-dimensional texture image.  The texels referenced by DATA
replace the portion of the existing texture array with x indices XOFFSET
and XOFFSET+WIDTH-1 , and the y indices YOFFSET and YOFFSET+HEIGHT-1 ,
and the z indices ZOFFSET and ZOFFSET+DEPTH-1 , inclusive.  This region
may not include any texels outside the range of the texture array as it
was originally specified.  It is not an error to specify a subtexture
with width of 0, but such a specification has no effect.

FORMAT must be an extension-specified compressed-texture format.  The
FORMAT of the compressed texture image is selected by the GL
implementation that compressed it (see `glTexImage3D') and should be
queried at the time the texture was compressed with
`glGetTexLevelParameter'.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if FORMAT is one of these generic
compressed internal formats: `GL_COMPRESSED_ALPHA',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB', `GL_COMPRESSED_RGBA',
`GL_COMPRESSED_SLUMINANCE', `GL_COMPRESSED_SLUMINANCE_ALPHA',
`GL_COMPRESSED_SRGB', `GL_COMPRESSED_SRGBA', or
`GL_COMPRESSED_SRGB_ALPHA'.

`GL_INVALID_VALUE' is generated if IMAGESIZE is not consistent with the
format, dimensions, and contents of the specified compressed image data.

`GL_INVALID_OPERATION' is generated if parameter combinations are not
supported by the specific compressed internal format as specified in the
specific texture compression extension.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glCompressedTexSubImage3D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

Undefined results, including abnormal program termination, are generated
if DATA is not encoded in a manner consistent with the extension
specification defining the internal compression format.")

(define-gl-procedures
  ((glConvolutionFilter1D
     (target GLenum)
     (internalformat GLenum)
     (width GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Define a one-dimensional convolution filter.

TARGET
     Must be `GL_CONVOLUTION_1D'.

INTERNALFORMAT
     The internal format of the convolution filter kernel.  The
     allowable values are `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8',
     `GL_ALPHA12', `GL_ALPHA16', `GL_LUMINANCE', `GL_LUMINANCE4',
     `GL_LUMINANCE8', `GL_LUMINANCE12', `GL_LUMINANCE16',
     `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

WIDTH
     The width of the pixel array referenced by DATA.

FORMAT
     The format of the pixel data in DATA.  The allowable values are
     `GL_ALPHA', `GL_LUMINANCE', `GL_LUMINANCE_ALPHA', `GL_INTENSITY',
     `GL_RGB', and `GL_RGBA'.

TYPE
     The type of the pixel data in DATA.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

DATA
     Pointer to a one-dimensional array of pixel data that is processed
     to build the convolution filter kernel.

`glConvolutionFilter1D' builds a one-dimensional convolution filter
kernel from an array of pixels.

The pixel array specified by WIDTH, FORMAT, TYPE, and DATA is extracted
from memory and processed just as if `glDrawPixels' were called, but
processing stops after the final expansion to RGBA is completed.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a convolution
filter is specified, DATA is treated as a byte offset into the buffer
object's data store.

The R, G, B, and A components of each pixel are next scaled by the four
1D `GL_CONVOLUTION_FILTER_SCALE' parameters and biased by the four 1D
`GL_CONVOLUTION_FILTER_BIAS' parameters.  (The scale and bias parameters
are set by `glConvolutionParameter' using the `GL_CONVOLUTION_1D' target
and the names `GL_CONVOLUTION_FILTER_SCALE' and
`GL_CONVOLUTION_FILTER_BIAS'.  The parameters themselves are vectors of
four values that are applied to red, green, blue, and alpha, in that
order.) The R, G, B, and A values are not clamped to [0,1] at any time
during this process.

Each pixel is then converted to the internal format specified by
INTERNALFORMAT.  This conversion simply maps the component values of the
pixel (R, G, B, and A) to the values included in the internal format
(red, green, blue, alpha, luminance, and intensity).  The mapping is as
follows:



*Internal Format*
     *Red*, *Green*, *Blue*, *Alpha*, *Luminance*, *Intensity*

`GL_ALPHA'
     , , , A , ,

`GL_LUMINANCE'
     , , , , R ,

`GL_LUMINANCE_ALPHA'
     , , , A , R ,

`GL_INTENSITY'
     , , , , , R

`GL_RGB'
     R , G , B , , ,

`GL_RGBA'
     R , G , B , A , ,

The red, green, blue, alpha, luminance, and/or intensity components of
the resulting pixels are stored in floating-point rather than integer
format.  They form a one-dimensional filter kernel image indexed with
coordinate I such that I starts at 0 and increases from left to right.
Kernel location I is derived from the Ith pixel, counting from 0.

Note that after a convolution is performed, the resulting color
components are also scaled by their corresponding
`GL_POST_CONVOLUTION_c_SCALE' parameters and biased by their
corresponding `GL_POST_CONVOLUTION_c_BIAS' parameters (where C takes on
the values *RED*, *GREEN*, *BLUE*, and *ALPHA*).  These parameters are
set by `glPixelTransfer'.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_CONVOLUTION_1D'.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_CONVOLUTION_1D' and name
`GL_MAX_CONVOLUTION_WIDTH'.

`GL_INVALID_OPERATION' is generated if FORMAT is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and TYPE is
not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if FORMAT is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
TYPE is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glConvolutionFilter1D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glConvolutionFilter2D
     (target GLenum)
     (internalformat GLenum)
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Define a two-dimensional convolution filter.

TARGET
     Must be `GL_CONVOLUTION_2D'.

INTERNALFORMAT
     The internal format of the convolution filter kernel.  The
     allowable values are `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8',
     `GL_ALPHA12', `GL_ALPHA16', `GL_LUMINANCE', `GL_LUMINANCE4',
     `GL_LUMINANCE8', `GL_LUMINANCE12', `GL_LUMINANCE16',
     `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

WIDTH
     The width of the pixel array referenced by DATA.

HEIGHT
     The height of the pixel array referenced by DATA.

FORMAT
     The format of the pixel data in DATA.  The allowable values are
     `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR',
     `GL_RGBA', `GL_BGRA', `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA'.

TYPE
     The type of the pixel data in DATA.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

DATA
     Pointer to a two-dimensional array of pixel data that is processed
     to build the convolution filter kernel.

`glConvolutionFilter2D' builds a two-dimensional convolution filter
kernel from an array of pixels.

The pixel array specified by WIDTH, HEIGHT, FORMAT, TYPE, and DATA is
extracted from memory and processed just as if `glDrawPixels' were
called, but processing stops after the final expansion to RGBA is
completed.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a convolution
filter is specified, DATA is treated as a byte offset into the buffer
object's data store.

The R, G, B, and A components of each pixel are next scaled by the four
2D `GL_CONVOLUTION_FILTER_SCALE' parameters and biased by the four 2D
`GL_CONVOLUTION_FILTER_BIAS' parameters.  (The scale and bias parameters
are set by `glConvolutionParameter' using the `GL_CONVOLUTION_2D' target
and the names `GL_CONVOLUTION_FILTER_SCALE' and
`GL_CONVOLUTION_FILTER_BIAS'.  The parameters themselves are vectors of
four values that are applied to red, green, blue, and alpha, in that
order.) The R, G, B, and A values are not clamped to [0,1] at any time
during this process.

Each pixel is then converted to the internal format specified by
INTERNALFORMAT.  This conversion simply maps the component values of the
pixel (R, G, B, and A) to the values included in the internal format
(red, green, blue, alpha, luminance, and intensity).  The mapping is as
follows:



*Internal Format*
     *Red*, *Green*, *Blue*, *Alpha*, *Luminance*, *Intensity*

`GL_ALPHA'
     , , , A , ,

`GL_LUMINANCE'
     , , , , R ,

`GL_LUMINANCE_ALPHA'
     , , , A , R ,

`GL_INTENSITY'
     , , , , , R

`GL_RGB'
     R , G , B , , ,

`GL_RGBA'
     R , G , B , A , ,

The red, green, blue, alpha, luminance, and/or intensity components of
the resulting pixels are stored in floating-point rather than integer
format.  They form a two-dimensional filter kernel image indexed with
coordinates I and J such that I starts at zero and increases from left
to right, and J starts at zero and increases from bottom to top.  Kernel
location I,J is derived from the Nth pixel, where N is I+J*WIDTH.

Note that after a convolution is performed, the resulting color
components are also scaled by their corresponding
`GL_POST_CONVOLUTION_c_SCALE' parameters and biased by their
corresponding `GL_POST_CONVOLUTION_c_BIAS' parameters (where C takes on
the values *RED*, *GREEN*, *BLUE*, and *ALPHA*).  These parameters are
set by `glPixelTransfer'.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_CONVOLUTION_2D'.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_CONVOLUTION_2D' and name
`GL_MAX_CONVOLUTION_WIDTH'.

`GL_INVALID_VALUE' is generated if HEIGHT is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_CONVOLUTION_2D' and name
`GL_MAX_CONVOLUTION_HEIGHT'.

`GL_INVALID_OPERATION' is generated if HEIGHT is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if HEIGHT is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glConvolutionFilter2D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glConvolutionParameterf
     (target GLenum)
     (pname GLenum)
     (params GLfloat)
     ->
     void)
   (glConvolutionParameteri
     (target GLenum)
     (pname GLenum)
     (params GLint)
     ->
     void)
   (glConvolutionParameterfv
     (target GLenum)
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glConvolutionParameteriv
     (target GLenum)
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Set convolution parameters.

TARGET
     The target for the convolution parameter.  Must be one of
     `GL_CONVOLUTION_1D', `GL_CONVOLUTION_2D', or `GL_SEPARABLE_2D'.

PNAME
     The parameter to be set.  Must be `GL_CONVOLUTION_BORDER_MODE'.

PARAMS
     The parameter value.  Must be one of `GL_REDUCE',
     `GL_CONSTANT_BORDER', `GL_REPLICATE_BORDER'.



`glConvolutionParameter' sets the value of a convolution parameter.

TARGET selects the convolution filter to be affected:
`GL_CONVOLUTION_1D', `GL_CONVOLUTION_2D', or `GL_SEPARABLE_2D' for the
1D, 2D, or separable 2D filter, respectively.

PNAME selects the parameter to be changed.  `GL_CONVOLUTION_FILTER_SCALE'
and `GL_CONVOLUTION_FILTER_BIAS' affect the definition of the
convolution filter kernel; see `glConvolutionFilter1D',
`glConvolutionFilter2D', and `glSeparableFilter2D' for details.  In
these cases, PARAMSv is an array of four values to be applied to red,
green, blue, and alpha values, respectively.  The initial value for
`GL_CONVOLUTION_FILTER_SCALE' is (1, 1, 1, 1), and the initial value for
`GL_CONVOLUTION_FILTER_BIAS' is (0, 0, 0, 0).

A PNAME value of `GL_CONVOLUTION_BORDER_MODE' controls the convolution
border mode.  The accepted modes are:

`GL_REDUCE'
     The image resulting from convolution is smaller than the source
     image.  If the filter width is WF and height is HF , and the source
     image width is WS and height is HS , then the convolved image width
     will be WS-WF+1 and height will be HS-HF+1 .  (If this reduction
     would generate an image with zero or negative width and/or height,
     the output is simply null, with no error generated.) The
     coordinates of the image resulting from convolution are zero
     through WS-WF in width and zero through HS-HF in height.

`GL_CONSTANT_BORDER'
     The image resulting from convolution is the same size as the source
     image, and processed as if the source image were surrounded by
     pixels with their color specified by the
     `GL_CONVOLUTION_BORDER_COLOR'.

`GL_REPLICATE_BORDER'
     The image resulting from convolution is the same size as the source
     image, and processed as if the outermost pixel on the border of the
     source image were replicated.

`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if PNAME is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if PNAME is `GL_CONVOLUTION_BORDER_MODE'
and PARAMS is not one of `GL_REDUCE', `GL_CONSTANT_BORDER', or
`GL_REPLICATE_BORDER'.

`GL_INVALID_OPERATION' is generated if `glConvolutionParameter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glCopyColorSubTable
     (target GLenum)
     (start GLsizei)
     (x GLint)
     (y GLint)
     (width GLsizei)
     ->
     void))
  "Respecify a portion of a color table.

TARGET
     Must be one of `GL_COLOR_TABLE', `GL_POST_CONVOLUTION_COLOR_TABLE',
     or `GL_POST_COLOR_MATRIX_COLOR_TABLE'.

START
     The starting index of the portion of the color table to be
     replaced.

X
     Y

     The window coordinates of the left corner of the row of pixels to
     be copied.

WIDTH
     The number of table entries to replace.

`glCopyColorSubTable' is used to respecify a contiguous portion of a
color table previously defined using `glColorTable'.  The pixels copied
from the framebuffer replace the portion of the existing table from
indices START to START+X-1 , inclusive.  This region may not include any
entries outside the range of the color table, as was originally
specified.  It is not an error to specify a subtexture with width of 0,
but such a specification has no effect.

`GL_INVALID_VALUE' is generated if TARGET is not a previously defined
color table.

`GL_INVALID_VALUE' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if START+X>WIDTH .

`GL_INVALID_OPERATION' is generated if `glCopyColorSubTable' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCopyColorTable
     (target GLenum)
     (internalformat GLenum)
     (x GLint)
     (y GLint)
     (width GLsizei)
     ->
     void))
  "Copy pixels into a color table.

TARGET
     The color table target.  Must be `GL_COLOR_TABLE',
     `GL_POST_CONVOLUTION_COLOR_TABLE', or
     `GL_POST_COLOR_MATRIX_COLOR_TABLE'.

INTERNALFORMAT
     The internal storage format of the texture image.  Must be one of
     the following symbolic constants: `GL_ALPHA', `GL_ALPHA4',
     `GL_ALPHA8', `GL_ALPHA12', `GL_ALPHA16', `GL_LUMINANCE',
     `GL_LUMINANCE4', `GL_LUMINANCE8', `GL_LUMINANCE12',
     `GL_LUMINANCE16', `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

X
     The x coordinate of the lower-left corner of the pixel rectangle to
     be transferred to the color table.

Y
     The y coordinate of the lower-left corner of the pixel rectangle to
     be transferred to the color table.

WIDTH
     The width of the pixel rectangle.

`glCopyColorTable' loads a color table with pixels from the current
`GL_READ_BUFFER' (rather than from main memory, as is the case for
`glColorTable').

The screen-aligned pixel rectangle with lower-left corner at (X,\\ Y)
having width WIDTH and height 1 is loaded into the color table.  If any
pixels within this region are outside the window that is associated with
the GL context, the values obtained for those pixels are undefined.

The pixels in the rectangle are processed just as if `glReadPixels' were
called, with INTERNALFORMAT set to RGBA, but processing stops after the
final conversion to RGBA.

The four scale parameters and the four bias parameters that are defined
for the table are then used to scale and bias the R, G, B, and A
components of each pixel.  The scale and bias parameters are set by
calling `glColorTableParameter'.

Next, the R, G, B, and A values are clamped to the range [0,1] .  Each
pixel is then converted to the internal format specified by
INTERNALFORMAT.  This conversion simply maps the component values of the
pixel (R, G, B, and A) to the values included in the internal format
(red, green, blue, alpha, luminance, and intensity).  The mapping is as
follows:



*Internal Format*
     *Red*, *Green*, *Blue*, *Alpha*, *Luminance*, *Intensity*

`GL_ALPHA'
     , , , A , ,

`GL_LUMINANCE'
     , , , , R ,

`GL_LUMINANCE_ALPHA'
     , , , A , R ,

`GL_INTENSITY'
     , , , , , R

`GL_RGB'
     R , G , B , , ,

`GL_RGBA'
     R , G , B , A , ,

Finally, the red, green, blue, alpha, luminance, and/or intensity
components of the resulting pixels are stored in the color table.  They
form a one-dimensional table with indices in the range [0,WIDTH-1] .



`GL_INVALID_ENUM' is generated when TARGET is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero.

`GL_INVALID_VALUE' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_TABLE_TOO_LARGE' is generated if the requested color table is too
large to be supported by the implementation.

`GL_INVALID_OPERATION' is generated if `glCopyColorTable' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCopyConvolutionFilter1D
     (target GLenum)
     (internalformat GLenum)
     (x GLint)
     (y GLint)
     (width GLsizei)
     ->
     void))
  "Copy pixels into a one-dimensional convolution filter.

TARGET
     Must be `GL_CONVOLUTION_1D'.

INTERNALFORMAT
     The internal format of the convolution filter kernel.  The
     allowable values are `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8',
     `GL_ALPHA12', `GL_ALPHA16', `GL_LUMINANCE', `GL_LUMINANCE4',
     `GL_LUMINANCE8', `GL_LUMINANCE12', `GL_LUMINANCE16',
     `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

X
     Y

     The window space coordinates of the lower-left coordinate of the
     pixel array to copy.

WIDTH
     The width of the pixel array to copy.

`glCopyConvolutionFilter1D' defines a one-dimensional convolution filter
kernel with pixels from the current `GL_READ_BUFFER' (rather than from
main memory, as is the case for `glConvolutionFilter1D').

The screen-aligned pixel rectangle with lower-left corner at (X,\\ Y),
width WIDTH and height 1 is used to define the convolution filter.  If
any pixels within this region are outside the window that is associated
with the GL context, the values obtained for those pixels are undefined.

The pixels in the rectangle are processed exactly as if `glReadPixels'
had been called with FORMAT set to RGBA, but the process stops just
before final conversion.  The R, G, B, and A components of each pixel
are next scaled by the four 1D `GL_CONVOLUTION_FILTER_SCALE' parameters
and biased by the four 1D `GL_CONVOLUTION_FILTER_BIAS' parameters.  (The
scale and bias parameters are set by `glConvolutionParameter' using the
`GL_CONVOLUTION_1D' target and the names `GL_CONVOLUTION_FILTER_SCALE'
and `GL_CONVOLUTION_FILTER_BIAS'.  The parameters themselves are vectors
of four values that are applied to red, green, blue, and alpha, in that
order.) The R, G, B, and A values are not clamped to [0,1] at any time
during this process.

Each pixel is then converted to the internal format specified by
INTERNALFORMAT.  This conversion simply maps the component values of the
pixel (R, G, B, and A) to the values included in the internal format
(red, green, blue, alpha, luminance, and intensity).  The mapping is as
follows:



*Internal Format*
     *Red*, *Green*, *Blue*, *Alpha*, *Luminance*, *Intensity*

`GL_ALPHA'
     , , , A , ,

`GL_LUMINANCE'
     , , , , R ,

`GL_LUMINANCE_ALPHA'
     , , , A , R ,

`GL_INTENSITY'
     , , , , , R

`GL_RGB'
     R , G , B , , ,

`GL_RGBA'
     R , G , B , A , ,

The red, green, blue, alpha, luminance, and/or intensity components of
the resulting pixels are stored in floating-point rather than integer
format.

Pixel ordering is such that lower x screen coordinates correspond to
lower I filter image coordinates.

Note that after a convolution is performed, the resulting color
components are also scaled by their corresponding
`GL_POST_CONVOLUTION_c_SCALE' parameters and biased by their
corresponding `GL_POST_CONVOLUTION_c_BIAS' parameters (where C takes on
the values *RED*, *GREEN*, *BLUE*, and *ALPHA*).  These parameters are
set by `glPixelTransfer'.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_CONVOLUTION_1D'.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_CONVOLUTION_1D' and name
`GL_MAX_CONVOLUTION_WIDTH'.

`GL_INVALID_OPERATION' is generated if `glCopyConvolutionFilter1D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glCopyConvolutionFilter2D
     (target GLenum)
     (internalformat GLenum)
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     ->
     void))
  "Copy pixels into a two-dimensional convolution filter.

TARGET
     Must be `GL_CONVOLUTION_2D'.

INTERNALFORMAT
     The internal format of the convolution filter kernel.  The
     allowable values are `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8',
     `GL_ALPHA12', `GL_ALPHA16', `GL_LUMINANCE', `GL_LUMINANCE4',
     `GL_LUMINANCE8', `GL_LUMINANCE12', `GL_LUMINANCE16',
     `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

X
     Y

     The window space coordinates of the lower-left coordinate of the
     pixel array to copy.

WIDTH
     The width of the pixel array to copy.

HEIGHT
     The height of the pixel array to copy.

`glCopyConvolutionFilter2D' defines a two-dimensional convolution filter
kernel with pixels from the current `GL_READ_BUFFER' (rather than from
main memory, as is the case for `glConvolutionFilter2D').

The screen-aligned pixel rectangle with lower-left corner at (X,\\ Y),
width WIDTH and height HEIGHT is used to define the convolution filter.
If any pixels within this region are outside the window that is
associated with the GL context, the values obtained for those pixels are
undefined.

The pixels in the rectangle are processed exactly as if `glReadPixels'
had been called with FORMAT set to RGBA, but the process stops just
before final conversion.  The R, G, B, and A components of each pixel
are next scaled by the four 2D `GL_CONVOLUTION_FILTER_SCALE' parameters
and biased by the four 2D `GL_CONVOLUTION_FILTER_BIAS' parameters.  (The
scale and bias parameters are set by `glConvolutionParameter' using the
`GL_CONVOLUTION_2D' target and the names `GL_CONVOLUTION_FILTER_SCALE'
and `GL_CONVOLUTION_FILTER_BIAS'.  The parameters themselves are vectors
of four values that are applied to red, green, blue, and alpha, in that
order.) The R, G, B, and A values are not clamped to [0,1] at any time
during this process.

Each pixel is then converted to the internal format specified by
INTERNALFORMAT.  This conversion simply maps the component values of the
pixel (R, G, B, and A) to the values included in the internal format
(red, green, blue, alpha, luminance, and intensity).  The mapping is as
follows:



*Internal Format*
     *Red*, *Green*, *Blue*, *Alpha*, *Luminance*, *Intensity*

`GL_ALPHA'
     , , , A , ,

`GL_LUMINANCE'
     , , , , R ,

`GL_LUMINANCE_ALPHA'
     , , , A , R ,

`GL_INTENSITY'
     , , , , , R

`GL_RGB'
     R , G , B , , ,

`GL_RGBA'
     R , G , B , A , ,

The red, green, blue, alpha, luminance, and/or intensity components of
the resulting pixels are stored in floating-point rather than integer
format.

Pixel ordering is such that lower x screen coordinates correspond to
lower I filter image coordinates, and lower y screen coordinates
correspond to lower J filter image coordinates.

Note that after a convolution is performed, the resulting color
components are also scaled by their corresponding
`GL_POST_CONVOLUTION_c_SCALE' parameters and biased by their
corresponding `GL_POST_CONVOLUTION_c_BIAS' parameters (where C takes on
the values *RED*, *GREEN*, *BLUE*, and *ALPHA*).  These parameters are
set by `glPixelTransfer'.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_CONVOLUTION_2D'.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_CONVOLUTION_2D' and name
`GL_MAX_CONVOLUTION_WIDTH'.

`GL_INVALID_VALUE' is generated if HEIGHT is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_CONVOLUTION_2D' and name
`GL_MAX_CONVOLUTION_HEIGHT'.

`GL_INVALID_OPERATION' is generated if `glCopyConvolutionFilter2D' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glCopyPixels
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     (type GLenum)
     ->
     void))
  "Copy pixels in the frame buffer.

X
     Y

     Specify the window coordinates of the lower left corner of the
     rectangular region of pixels to be copied.

WIDTH
     HEIGHT

     Specify the dimensions of the rectangular region of pixels to be
     copied.  Both must be nonnegative.

TYPE
     Specifies whether color values, depth values, or stencil values are
     to be copied.  Symbolic constants `GL_COLOR', `GL_DEPTH', and
     `GL_STENCIL' are accepted.

`glCopyPixels' copies a screen-aligned rectangle of pixels from the
specified frame buffer location to a region relative to the current
raster position.  Its operation is well defined only if the entire pixel
source region is within the exposed portion of the window.  Results of
copies from outside the window, or from regions of the window that are
not exposed, are hardware dependent and undefined.

X and Y specify the window coordinates of the lower left corner of the
rectangular region to be copied.  WIDTH and HEIGHT specify the
dimensions of the rectangular region to be copied.  Both WIDTH and
HEIGHT must not be negative.

Several parameters control the processing of the pixel data while it is
being copied.  These parameters are set with three commands:
`glPixelTransfer', `glPixelMap', and `glPixelZoom'.  This reference page
describes the effects on `glCopyPixels' of most, but not all, of the
parameters specified by these three commands.

`glCopyPixels' copies values from each pixel with the lower left-hand
corner at (X+I,Y+J) for 0<=I<WIDTH and 0<=J<HEIGHT .  This pixel is said
to be the I th pixel in the J th row.  Pixels are copied in row order
from the lowest to the highest row, left to right in each row.

TYPE specifies whether color, depth, or stencil data is to be copied.
The details of the transfer for each data type are as follows:

`GL_COLOR'
     Indices or RGBA colors are read from the buffer currently specified
     as the read source buffer (see `glReadBuffer').  If the GL is in
     color index mode, each index that is read from this buffer is
     converted to a fixed-point format with an unspecified number of
     bits to the right of the binary point.  Each index is then shifted
     left by `GL_INDEX_SHIFT' bits, and added to `GL_INDEX_OFFSET'.  If
     `GL_INDEX_SHIFT' is negative, the shift is to the right.  In either
     case, zero bits fill otherwise unspecified bit locations in the
     result.  If `GL_MAP_COLOR' is true, the index is replaced with the
     value that it references in lookup table `GL_PIXEL_MAP_I_TO_I'.
     Whether the lookup replacement of the index is done or not, the
     integer part of the index is then ANDed with 2^B-1 , where B is the
     number of bits in a color index buffer.

     If the GL is in RGBA mode, the red, green, blue, and alpha
     components of each pixel that is read are converted to an internal
     floating-point format with unspecified precision.  The conversion
     maps the largest representable component value to 1.0, and
     component value 0 to 0.0.  The resulting floating-point color
     values are then multiplied by `GL_c_SCALE' and added to
     `GL_c_BIAS', where C is RED, GREEN, BLUE, and ALPHA for the
     respective color components.  The results are clamped to the range
     [0,1].  If `GL_MAP_COLOR' is true, each color component is scaled
     by the size of lookup table `GL_PIXEL_MAP_c_TO_c', then replaced by
     the value that it references in that table.  C is R, G, B, or A.

     If the `ARB_imaging' extension is supported, the color values may
     be additionally processed by color-table lookups, color-matrix
     transformations, and convolution filters.

     The GL then converts the resulting indices or RGBA colors to
     fragments by attaching the current raster position Z coordinate and
     texture coordinates to each pixel, then assigning window
     coordinates (X_R+I,Y_R+J) , where (X_R,Y_R) is the current raster
     position, and the pixel was the I th pixel in the J th row.  These
     pixel fragments are then treated just like the fragments generated
     by rasterizing points, lines, or polygons.  Texture mapping, fog,
     and all the fragment operations are applied before the fragments
     are written to the frame buffer.

`GL_DEPTH'
     Depth values are read from the depth buffer and converted directly
     to an internal floating-point format with unspecified precision.
     The resulting floating-point depth value is then multiplied by
     `GL_DEPTH_SCALE' and added to `GL_DEPTH_BIAS'.  The result is
     clamped to the range [0,1].

     The GL then converts the resulting depth components to fragments by
     attaching the current raster position color or color index and
     texture coordinates to each pixel, then assigning window
     coordinates (X_R+I,Y_R+J) , where (X_R,Y_R) is the current raster
     position, and the pixel was the I th pixel in the J th row.  These
     pixel fragments are then treated just like the fragments generated
     by rasterizing points, lines, or polygons.  Texture mapping, fog,
     and all the fragment operations are applied before the fragments
     are written to the frame buffer.

`GL_STENCIL'
     Stencil indices are read from the stencil buffer and converted to
     an internal fixed-point format with an unspecified number of bits
     to the right of the binary point.  Each fixed-point index is then
     shifted left by `GL_INDEX_SHIFT' bits, and added to
     `GL_INDEX_OFFSET'.  If `GL_INDEX_SHIFT' is negative, the shift is
     to the right.  In either case, zero bits fill otherwise unspecified
     bit locations in the result.  If `GL_MAP_STENCIL' is true, the
     index is replaced with the value that it references in lookup table
     `GL_PIXEL_MAP_S_TO_S'.  Whether the lookup replacement of the index
     is done or not, the integer part of the index is then ANDed with
     2^B-1 , where B is the number of bits in the stencil buffer.  The
     resulting stencil indices are then written to the stencil buffer
     such that the index read from the I th location of the J th row is
     written to location (X_R+I,Y_R+J) , where (X_R,Y_R) is the current
     raster position.  Only the pixel ownership test, the scissor test,
     and the stencil writemask affect these write operations.

The rasterization described thus far assumes pixel zoom factors of 1.0.
If `glPixelZoom' is used to change the X and Y pixel zoom factors,
pixels are converted to fragments as follows.  If (X_R,Y_R) is the
current raster position, and a given pixel is in the I th location in
the J th row of the source pixel rectangle, then fragments are generated
for pixels whose centers are in the rectangle with corners at

(X_R+ZOOM_X,\u2062I,Y_R+ZOOM_Y,\u2062J)

and

(X_R+ZOOM_X,\u2061(I+1,),Y_R+ZOOM_Y,\u2061(J+1,))

where ZOOM_X is the value of `GL_ZOOM_X' and ZOOM_Y is the value of
`GL_ZOOM_Y'.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if either WIDTH or HEIGHT is negative.

`GL_INVALID_OPERATION' is generated if TYPE is `GL_DEPTH' and there is
no depth buffer.

`GL_INVALID_OPERATION' is generated if TYPE is `GL_STENCIL' and there is
no stencil buffer.

`GL_INVALID_OPERATION' is generated if `glCopyPixels' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCopyTexImage1D
     (target GLenum)
     (level GLint)
     (internalformat GLenum)
     (x GLint)
     (y GLint)
     (width GLsizei)
     (border GLint)
     ->
     void))
  "Copy pixels into a 1D texture image.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_1D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

INTERNALFORMAT
     Specifies the internal format of the texture.  Must be one of the
     following symbolic constants: `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8',
     `GL_ALPHA12', `GL_ALPHA16', `GL_COMPRESSED_ALPHA',
     `GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
     `GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB',
     `GL_COMPRESSED_RGBA', `GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16',
     `GL_DEPTH_COMPONENT24', `GL_DEPTH_COMPONENT32', `GL_LUMINANCE',
     `GL_LUMINANCE4', `GL_LUMINANCE8', `GL_LUMINANCE12',
     `GL_LUMINANCE16', `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_RGB',
     `GL_R3_G3_B2', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10',
     `GL_RGB12', `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4',
     `GL_RGB5_A1', `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', `GL_RGBA16',
     `GL_SLUMINANCE', `GL_SLUMINANCE8', `GL_SLUMINANCE_ALPHA',
     `GL_SLUMINANCE8_ALPHA8', `GL_SRGB', `GL_SRGB8', `GL_SRGB_ALPHA', or
     `GL_SRGB8_ALPHA8'.

X
     Y

     Specify the window coordinates of the left corner of the row of
     pixels to be copied.

WIDTH
     Specifies the width of the texture image.  Must be 0 or
     2^N+2\u2061(BORDER,) for some integer N .  The height of the texture
     image is 1.

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

`glCopyTexImage1D' defines a one-dimensional texture image with pixels
from the current `GL_READ_BUFFER'.

The screen-aligned pixel row with left corner at (X,Y) and with a length
of WIDTH+2\u2061(BORDER,) defines the texture array at the mipmap level
specified by LEVEL.  INTERNALFORMAT specifies the internal format of the
texture array.

The pixels in the row are processed exactly as if `glCopyPixels' had
been called, but the process stops just before final conversion.  At
this point all pixel component values are clamped to the range [0,1] and
then converted to the texture's internal format for storage in the texel
array.

Pixel ordering is such that lower X screen coordinates correspond to
lower texture coordinates.

If any of the pixels within the specified row of the current
`GL_READ_BUFFER' are outside the window associated with the current
rendering context, then the values obtained for those pixels are
undefined.

`glCopyTexImage1D' defines a one-dimensional texture image with pixels
from the current `GL_READ_BUFFER'.

When INTERNALFORMAT is one of the sRGB types, the GL does not
automatically convert the source pixels to the sRGB color space.  In
this case, the `glPixelMap' function can be used to accomplish the
conversion.

`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than LOG_2\u2062MAX ,
where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if INTERNALFORMAT is not an allowable
value.

`GL_INVALID_VALUE' is generated if WIDTH is less than 0 or greater than
2 + `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if non-power-of-two textures are not
supported and the WIDTH cannot be represented as 2^N+2\u2061(BORDER,) for
some integer value of N.

`GL_INVALID_VALUE' is generated if BORDER is not 0 or 1.

`GL_INVALID_OPERATION' is generated if `glCopyTexImage1D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.

`GL_INVALID_OPERATION' is generated if INTERNALFORMAT is
`GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24', or
`GL_DEPTH_COMPONENT32' and there is no depth buffer.")

(define-gl-procedures
  ((glCopyTexImage2D
     (target GLenum)
     (level GLint)
     (internalformat GLenum)
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     (border GLint)
     ->
     void))
  "Copy pixels into a 2D texture image.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_2D',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

INTERNALFORMAT
     Specifies the internal format of the texture.  Must be one of the
     following symbolic constants: `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8',
     `GL_ALPHA12', `GL_ALPHA16', `GL_COMPRESSED_ALPHA',
     `GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
     `GL_COMPRESSED_INTENSITY', `GL_COMPRESSED_RGB',
     `GL_COMPRESSED_RGBA', `GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16',
     `GL_DEPTH_COMPONENT24', `GL_DEPTH_COMPONENT32', `GL_LUMINANCE',
     `GL_LUMINANCE4', `GL_LUMINANCE8', `GL_LUMINANCE12',
     `GL_LUMINANCE16', `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_RGB',
     `GL_R3_G3_B2', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10',
     `GL_RGB12', `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4',
     `GL_RGB5_A1', `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', `GL_RGBA16',
     `GL_SLUMINANCE', `GL_SLUMINANCE8', `GL_SLUMINANCE_ALPHA',
     `GL_SLUMINANCE8_ALPHA8', `GL_SRGB', `GL_SRGB8', `GL_SRGB_ALPHA', or
     `GL_SRGB8_ALPHA8'.

X
     Y

     Specify the window coordinates of the lower left corner of the
     rectangular region of pixels to be copied.

WIDTH
     Specifies the width of the texture image.  Must be 0 or
     2^N+2\u2061(BORDER,) for some integer N .

HEIGHT
     Specifies the height of the texture image.  Must be 0 or
     2^M+2\u2061(BORDER,) for some integer M .

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

`glCopyTexImage2D' defines a two-dimensional texture image, or cube-map
texture image with pixels from the current `GL_READ_BUFFER'.

The screen-aligned pixel rectangle with lower left corner at (X, Y) and
with a width of WIDTH+2\u2061(BORDER,) and a height of HEIGHT+2\u2061(BORDER,)
defines the texture array at the mipmap level specified by LEVEL.
INTERNALFORMAT specifies the internal format of the texture array.

The pixels in the rectangle are processed exactly as if `glCopyPixels'
had been called, but the process stops just before final conversion.  At
this point all pixel component values are clamped to the range [0,1] and
then converted to the texture's internal format for storage in the texel
array.

Pixel ordering is such that lower X and Y screen coordinates correspond
to lower S and T texture coordinates.

If any of the pixels within the specified rectangle of the current
`GL_READ_BUFFER' are outside the window associated with the current
rendering context, then the values obtained for those pixels are
undefined.

When INTERNALFORMAT is one of the sRGB types, the GL does not
automatically convert the source pixels to the sRGB color space.  In
this case, the `glPixelMap' function can be used to accomplish the
conversion.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_TEXTURE_2D',
`GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than LOG_2\u2062MAX ,
where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if WIDTH is less than 0 or greater than
2 + `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if non-power-of-two textures are not
supported and the WIDTH or DEPTH cannot be represented as
2^K+2\u2061(BORDER,) for some integer K .

`GL_INVALID_VALUE' is generated if BORDER is not 0 or 1.

`GL_INVALID_VALUE' is generated if INTERNALFORMAT is not an accepted
format.

`GL_INVALID_OPERATION' is generated if `glCopyTexImage2D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.

`GL_INVALID_OPERATION' is generated if INTERNALFORMAT is
`GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24', or
`GL_DEPTH_COMPONENT32' and there is no depth buffer.")

(define-gl-procedures
  ((glCopyTexSubImage1D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (x GLint)
     (y GLint)
     (width GLsizei)
     ->
     void))
  "Copy a one-dimensional texture subimage.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_1D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies the texel offset within the texture array.

X
     Y

     Specify the window coordinates of the left corner of the row of
     pixels to be copied.

WIDTH
     Specifies the width of the texture subimage.

`glCopyTexSubImage1D' replaces a portion of a one-dimensional texture
image with pixels from the current `GL_READ_BUFFER' (rather than from
main memory, as is the case for `glTexSubImage1D').

The screen-aligned pixel row with left corner at (X,\\ Y), and with
length WIDTH replaces the portion of the texture array with x indices
XOFFSET through XOFFSET+WIDTH-1 , inclusive.  The destination in the
texture array may not include any texels outside the texture array as it
was originally specified.

The pixels in the row are processed exactly as if `glCopyPixels' had
been called, but the process stops just before final conversion.  At
this point, all pixel component values are clamped to the range [0,1]
and then converted to the texture's internal format for storage in the
texel array.

It is not an error to specify a subtexture with zero width, but such a
specification has no effect.  If any of the pixels within the specified
row of the current `GL_READ_BUFFER' are outside the read window
associated with the current rendering context, then the values obtained
for those pixels are undefined.

No change is made to the INTERNALFORMAT, WIDTH, or BORDER parameters of
the specified texture array or to texel values outside the specified
subregion.

`GL_INVALID_ENUM' is generated if /TARGET is not `GL_TEXTURE_1D'.

`GL_INVALID_OPERATION' is generated if the texture array has not been
defined by a previous `glTexImage1D' or `glCopyTexImage1D' operation.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL>LOG_2\u2061(MAX,) , where MAX is
the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if XOFFSET<-B , or
(XOFFSET+WIDTH,)>(W-B,) , where W is the `GL_TEXTURE_WIDTH' and B is the
`GL_TEXTURE_BORDER' of the texture image being modified.  Note that W
includes twice the border width.")

(define-gl-procedures
  ((glCopyTexSubImage2D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (yoffset GLint)
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     ->
     void))
  "Copy a two-dimensional texture subimage.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_2D',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

YOFFSET
     Specifies a texel offset in the y direction within the texture
     array.

X
     Y

     Specify the window coordinates of the lower left corner of the
     rectangular region of pixels to be copied.

WIDTH
     Specifies the width of the texture subimage.

HEIGHT
     Specifies the height of the texture subimage.

`glCopyTexSubImage2D' replaces a rectangular portion of a
two-dimensional texture image or cube-map texture image with pixels from
the current `GL_READ_BUFFER' (rather than from main memory, as is the
case for `glTexSubImage2D').

The screen-aligned pixel rectangle with lower left corner at (X,Y) and
with width WIDTH and height HEIGHT replaces the portion of the texture
array with x indices XOFFSET through XOFFSET+WIDTH-1 , inclusive, and y
indices YOFFSET through YOFFSET+HEIGHT-1 , inclusive, at the mipmap
level specified by LEVEL.

The pixels in the rectangle are processed exactly as if `glCopyPixels'
had been called, but the process stops just before final conversion.  At
this point, all pixel component values are clamped to the range [0,1]
and then converted to the texture's internal format for storage in the
texel array.

The destination rectangle in the texture array may not include any
texels outside the texture array as it was originally specified.  It is
not an error to specify a subtexture with zero width or height, but such
a specification has no effect.

If any of the pixels within the specified rectangle of the current
`GL_READ_BUFFER' are outside the read window associated with the current
rendering context, then the values obtained for those pixels are
undefined.

No change is made to the INTERNALFORMAT, WIDTH, HEIGHT, or BORDER
parameters of the specified texture array or to texel values outside the
specified subregion.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_TEXTURE_2D',
`GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

`GL_INVALID_OPERATION' is generated if the texture array has not been
defined by a previous `glTexImage2D' or `glCopyTexImage2D' operation.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL>LOG_2\u2061(MAX,) , where MAX is
the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if XOFFSET<-B , (XOFFSET+WIDTH,)>(W-B,)
, YOFFSET<-B , or (YOFFSET+HEIGHT,)>(H-B,) , where W is the
`GL_TEXTURE_WIDTH', H is the `GL_TEXTURE_HEIGHT', and B is the
`GL_TEXTURE_BORDER' of the texture image being modified.  Note that W
and H include twice the border width.

`GL_INVALID_OPERATION' is generated if `glCopyTexSubImage2D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCopyTexSubImage3D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (yoffset GLint)
     (zoffset GLint)
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     ->
     void))
  "Copy a three-dimensional texture subimage.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_3D'

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

YOFFSET
     Specifies a texel offset in the y direction within the texture
     array.

ZOFFSET
     Specifies a texel offset in the z direction within the texture
     array.

X
     Y

     Specify the window coordinates of the lower left corner of the
     rectangular region of pixels to be copied.

WIDTH
     Specifies the width of the texture subimage.

HEIGHT
     Specifies the height of the texture subimage.

`glCopyTexSubImage3D' replaces a rectangular portion of a
three-dimensional texture image with pixels from the current
`GL_READ_BUFFER' (rather than from main memory, as is the case for
`glTexSubImage3D').

The screen-aligned pixel rectangle with lower left corner at (X,\\ Y) and
with width WIDTH and height HEIGHT replaces the portion of the texture
array with x indices XOFFSET through XOFFSET+WIDTH-1 , inclusive, and y
indices YOFFSET through YOFFSET+HEIGHT-1 , inclusive, at z index ZOFFSET
and at the mipmap level specified by LEVEL.

The pixels in the rectangle are processed exactly as if `glCopyPixels'
had been called, but the process stops just before final conversion.  At
this point, all pixel component values are clamped to the range [0,1]
and then converted to the texture's internal format for storage in the
texel array.

The destination rectangle in the texture array may not include any
texels outside the texture array as it was originally specified.  It is
not an error to specify a subtexture with zero width or height, but such
a specification has no effect.

If any of the pixels within the specified rectangle of the current
`GL_READ_BUFFER' are outside the read window associated with the current
rendering context, then the values obtained for those pixels are
undefined.

No change is made to the INTERNALFORMAT, WIDTH, HEIGHT, DEPTH, or BORDER
parameters of the specified texture array or to texel values outside the
specified subregion.

`GL_INVALID_ENUM' is generated if /TARGET is not `GL_TEXTURE_3D'.

`GL_INVALID_OPERATION' is generated if the texture array has not been
defined by a previous `glTexImage3D' operation.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL>LOG_2\u2061(MAX,) , where MAX is
the returned value of `GL_MAX_3D_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if XOFFSET<-B , (XOFFSET+WIDTH,)>(W-B,)
, YOFFSET<-B , (YOFFSET+HEIGHT,)>(H-B,) , ZOFFSET<-B , or
(ZOFFSET+1,)>(D-B,) , where W is the `GL_TEXTURE_WIDTH', H is the
`GL_TEXTURE_HEIGHT', D is the `GL_TEXTURE_DEPTH', and B is the
`GL_TEXTURE_BORDER' of the texture image being modified.  Note that W ,
H , and D include twice the border width.

`GL_INVALID_OPERATION' is generated if `glCopyTexSubImage3D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCreateProgram -> GLuint))
  "Creates a program object.

`glCreateProgram' creates an empty program object and returns a non-zero
value by which it can be referenced.  A program object is an object to
which shader objects can be attached.  This provides a mechanism to
specify the shader objects that will be linked to create a program.  It
also provides a means for checking the compatibility of the shaders that
will be used to create a program (for instance, checking the
compatibility between a vertex shader and a fragment shader).  When no
longer needed as part of a program object, shader objects can be
detached.

One or more executables are created in a program object by successfully
attaching shader objects to it with `glAttachShader', successfully
compiling the shader objects with `glCompileShader', and successfully
linking the program object with `glLinkProgram'.  These executables are
made part of current state when `glUseProgram' is called.  Program
objects can be deleted by calling `glDeleteProgram'.  The memory
associated with the program object will be deleted when it is no longer
part of current rendering state for any context.

This function returns 0 if an error occurs creating the program object.

`GL_INVALID_OPERATION' is generated if `glCreateProgram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCreateShader (shaderType GLenum) -> GLuint))
  "Creates a shader object.

SHADERTYPE
     Specifies the type of shader to be created.  Must be either
     `GL_VERTEX_SHADER' or `GL_FRAGMENT_SHADER'.

`glCreateShader' creates an empty shader object and returns a non-zero
value by which it can be referenced.  A shader object is used to
maintain the source code strings that define a shader.  SHADERTYPE
indicates the type of shader to be created.  Two types of shaders are
supported.  A shader of type `GL_VERTEX_SHADER' is a shader that is
intended to run on the programmable vertex processor and replace the
fixed functionality vertex processing in OpenGL.  A shader of type
`GL_FRAGMENT_SHADER' is a shader that is intended to run on the
programmable fragment processor and replace the fixed functionality
fragment processing in OpenGL.

When created, a shader object's `GL_SHADER_TYPE' parameter is set to
either `GL_VERTEX_SHADER' or `GL_FRAGMENT_SHADER', depending on the
value of SHADERTYPE.

This function returns 0 if an error occurs creating the shader object.

`GL_INVALID_ENUM' is generated if SHADERTYPE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glCreateShader' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glCullFace (mode GLenum) -> void))
  "Specify whether front- or back-facing facets can be culled.

MODE
     Specifies whether front- or back-facing facets are candidates for
     culling.  Symbolic constants `GL_FRONT', `GL_BACK', and
     `GL_FRONT_AND_BACK' are accepted.  The initial value is `GL_BACK'.

`glCullFace' specifies whether front- or back-facing facets are culled
(as specified by MODE) when facet culling is enabled.  Facet culling is
initially disabled.  To enable and disable facet culling, call the
`glEnable' and `glDisable' commands with the argument `GL_CULL_FACE'.
Facets include triangles, quadrilaterals, polygons, and rectangles.

`glFrontFace' specifies which of the clockwise and counterclockwise
facets are front-facing and back-facing.  See `glFrontFace'.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glCullFace' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glDeleteBuffers
     (n GLsizei)
     (buffers const-GLuint-*)
     ->
     void))
  "Delete named buffer objects.

N
     Specifies the number of buffer objects to be deleted.

BUFFERS
     Specifies an array of buffer objects to be deleted.

`glDeleteBuffers' deletes N buffer objects named by the elements of the
array BUFFERS.  After a buffer object is deleted, it has no contents,
and its name is free for reuse (for example by `glGenBuffers').  If a
buffer object that is currently bound is deleted, the binding reverts to
0 (the absence of any buffer object, which reverts to client memory
usage).

`glDeleteBuffers' silently ignores 0's and names that do not correspond
to existing buffer objects.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_OPERATION' is generated if `glDeleteBuffers' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDeleteLists
     (list GLuint)
     (range GLsizei)
     ->
     void))
  "Delete a contiguous group of display lists.

LIST
     Specifies the integer name of the first display list to delete.

RANGE
     Specifies the number of display lists to delete.

`glDeleteLists' causes a contiguous group of display lists to be
deleted.  LIST is the name of the first display list to be deleted, and
RANGE is the number of display lists to delete.  All display lists D
with LIST<=D<=LIST+RANGE-1 are deleted.

All storage locations allocated to the specified display lists are
freed, and the names are available for reuse at a later time.  Names
within the range that do not have an associated display list are
ignored.  If RANGE is 0, nothing happens.

`GL_INVALID_VALUE' is generated if RANGE is negative.

`GL_INVALID_OPERATION' is generated if `glDeleteLists' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDeleteProgram (program GLuint) -> void))
  "Deletes a program object.

PROGRAM
     Specifies the program object to be deleted.

`glDeleteProgram' frees the memory and invalidates the name associated
with the program object specified by PROGRAM.  This command effectively
undoes the effects of a call to `glCreateProgram'.

If a program object is in use as part of current rendering state, it
will be flagged for deletion, but it will not be deleted until it is no
longer part of current state for any rendering context.  If a program
object to be deleted has shader objects attached to it, those shader
objects will be automatically detached but not deleted unless they have
already been flagged for deletion by a previous call to
`glDeleteShader'.  A value of 0 for PROGRAM will be silently ignored.

To determine whether a program object has been flagged for deletion,
call `glGetProgram' with arguments PROGRAM and `GL_DELETE_STATUS'.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if `glDeleteProgram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDeleteQueries
     (n GLsizei)
     (ids const-GLuint-*)
     ->
     void))
  "Delete named query objects.

N
     Specifies the number of query objects to be deleted.

IDS
     Specifies an array of query objects to be deleted.

`glDeleteQueries' deletes N query objects named by the elements of the
array IDS.  After a query object is deleted, it has no contents, and its
name is free for reuse (for example by `glGenQueries').

`glDeleteQueries' silently ignores 0's and names that do not correspond
to existing query objects.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_OPERATION' is generated if `glDeleteQueries' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDeleteShader (shader GLuint) -> void))
  "Deletes a shader object.

SHADER
     Specifies the shader object to be deleted.

`glDeleteShader' frees the memory and invalidates the name associated
with the shader object specified by SHADER.  This command effectively
undoes the effects of a call to `glCreateShader'.

If a shader object to be deleted is attached to a program object, it
will be flagged for deletion, but it will not be deleted until it is no
longer attached to any program object, for any rendering context (i.e.,
it must be detached from wherever it was attached before it will be
deleted).  A value of 0 for SHADER will be silently ignored.

To determine whether an object has been flagged for deletion, call
`glGetShader' with arguments SHADER and `GL_DELETE_STATUS'.

`GL_INVALID_VALUE' is generated if SHADER is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if `glDeleteShader' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDeleteTextures
     (n GLsizei)
     (textures const-GLuint-*)
     ->
     void))
  "Delete named textures.

N
     Specifies the number of textures to be deleted.

TEXTURES
     Specifies an array of textures to be deleted.

`glDeleteTextures' deletes N textures named by the elements of the array
TEXTURES.  After a texture is deleted, it has no contents or
dimensionality, and its name is free for reuse (for example by
`glGenTextures').  If a texture that is currently bound is deleted, the
binding reverts to 0 (the default texture).

`glDeleteTextures' silently ignores 0's and names that do not correspond
to existing textures.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_OPERATION' is generated if `glDeleteTextures' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDepthFunc (func GLenum) -> void))
  "Specify the value used for depth buffer comparisons.

FUNC
     Specifies the depth comparison function.  Symbolic constants
     `GL_NEVER', `GL_LESS', `GL_EQUAL', `GL_LEQUAL', `GL_GREATER',
     `GL_NOTEQUAL', `GL_GEQUAL', and `GL_ALWAYS' are accepted.  The
     initial value is `GL_LESS'.

`glDepthFunc' specifies the function used to compare each incoming pixel
depth value with the depth value present in the depth buffer.  The
comparison is performed only if depth testing is enabled.  (See
`glEnable' and `glDisable' of `GL_DEPTH_TEST'.)

FUNC specifies the conditions under which the pixel will be drawn.  The
comparison functions are as follows:

`GL_NEVER'
     Never passes.

`GL_LESS'
     Passes if the incoming depth value is less than the stored depth
     value.

`GL_EQUAL'
     Passes if the incoming depth value is equal to the stored depth
     value.

`GL_LEQUAL'
     Passes if the incoming depth value is less than or equal to the
     stored depth value.

`GL_GREATER'
     Passes if the incoming depth value is greater than the stored depth
     value.

`GL_NOTEQUAL'
     Passes if the incoming depth value is not equal to the stored depth
     value.

`GL_GEQUAL'
     Passes if the incoming depth value is greater than or equal to the
     stored depth value.

`GL_ALWAYS'
     Always passes.

The initial value of FUNC is `GL_LESS'.  Initially, depth testing is
disabled.  If depth testing is disabled or if no depth buffer exists, it
is as if the depth test always passes.

`GL_INVALID_ENUM' is generated if FUNC is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glDepthFunc' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glDepthMask (flag GLboolean) -> void))
  "Enable or disable writing into the depth buffer.

FLAG
     Specifies whether the depth buffer is enabled for writing.  If FLAG
     is `GL_FALSE', depth buffer writing is disabled.  Otherwise, it is
     enabled.  Initially, depth buffer writing is enabled.

`glDepthMask' specifies whether the depth buffer is enabled for writing.
If FLAG is `GL_FALSE', depth buffer writing is disabled.  Otherwise, it
is enabled.  Initially, depth buffer writing is enabled.

`GL_INVALID_OPERATION' is generated if `glDepthMask' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glDepthRange
     (nearVal GLclampd)
     (farVal GLclampd)
     ->
     void))
  "Specify mapping of depth values from normalized device coordinates to
window coordinates.

NEARVAL
     Specifies the mapping of the near clipping plane to window
     coordinates.  The initial value is 0.

FARVAL
     Specifies the mapping of the far clipping plane to window
     coordinates.  The initial value is 1.

After clipping and division by W, depth coordinates range from -1 to 1,
corresponding to the near and far clipping planes.  `glDepthRange'
specifies a linear mapping of the normalized depth coordinates in this
range to window depth coordinates.  Regardless of the actual depth
buffer implementation, window coordinate depth values are treated as
though they range from 0 through 1 (like color components).  Thus, the
values accepted by `glDepthRange' are both clamped to this range before
they are accepted.

The setting of (0,1) maps the near plane to 0 and the far plane to 1.
With this mapping, the depth buffer range is fully utilized.

`GL_INVALID_OPERATION' is generated if `glDepthRange' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDetachShader
     (program GLuint)
     (shader GLuint)
     ->
     void))
  "Detaches a shader object from a program object to which it is attached.

PROGRAM
     Specifies the program object from which to detach the shader
     object.

SHADER
     Specifies the shader object to be detached.

`glDetachShader' detaches the shader object specified by SHADER from the
program object specified by PROGRAM.  This command can be used to undo
the effect of the command `glAttachShader'.

If SHADER has already been flagged for deletion by a call to
`glDeleteShader' and it is not attached to any other program object, it
will be deleted after it has been detached.

`GL_INVALID_VALUE' is generated if either PROGRAM or SHADER is a value
that was not generated by OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if SHADER is not a shader object.

`GL_INVALID_OPERATION' is generated if SHADER is not attached to
PROGRAM.

`GL_INVALID_OPERATION' is generated if `glDetachShader' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDrawArrays
     (mode GLenum)
     (first GLint)
     (count GLsizei)
     ->
     void))
  "Render primitives from array data.

MODE
     Specifies what kind of primitives to render.  Symbolic constants
     `GL_POINTS', `GL_LINE_STRIP', `GL_LINE_LOOP', `GL_LINES',
     `GL_TRIANGLE_STRIP', `GL_TRIANGLE_FAN', `GL_TRIANGLES',
     `GL_QUAD_STRIP', `GL_QUADS', and `GL_POLYGON' are accepted.

FIRST
     Specifies the starting index in the enabled arrays.

COUNT
     Specifies the number of indices to be rendered.

`glDrawArrays' specifies multiple geometric primitives with very few
subroutine calls.  Instead of calling a GL procedure to pass each
individual vertex, normal, texture coordinate, edge flag, or color, you
can prespecify separate arrays of vertices, normals, and colors and use
them to construct a sequence of primitives with a single call to
`glDrawArrays'.

When `glDrawArrays' is called, it uses COUNT sequential elements from
each enabled array to construct a sequence of geometric primitives,
beginning with element FIRST.  MODE specifies what kind of primitives
are constructed and how the array elements construct those primitives.
If `GL_VERTEX_ARRAY' is not enabled, no geometric primitives are
generated.

Vertex attributes that are modified by `glDrawArrays' have an
unspecified value after `glDrawArrays' returns.  For example, if
`GL_COLOR_ARRAY' is enabled, the value of the current color is undefined
after `glDrawArrays' executes.  Attributes that aren't modified remain
well defined.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_VALUE' is generated if COUNT is negative.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to an enabled array and the buffer object's data store is
currently mapped.

`GL_INVALID_OPERATION' is generated if `glDrawArrays' is executed
between the execution of `glBegin' and the corresponding `glEnd'.")

(define-gl-procedures
  ((glDrawBuffers
     (n GLsizei)
     (bufs const-GLenum-*)
     ->
     void))
  "Specifies a list of color buffers to be drawn into.

N
     Specifies the number of buffers in BUFS.

BUFS
     Points to an array of symbolic constants specifying the buffers
     into which fragment colors or data values will be written.

`glDrawBuffers' defines an array of buffers into which fragment color
values or fragment data will be written.  If no fragment shader is
active, rendering operations will generate only one fragment color per
fragment and it will be written into each of the buffers specified by
BUFS.  If a fragment shader is active and it writes a value to the
output variable `gl_FragColor', then that value will be written into
each of the buffers specified by BUFS.  If a fragment shader is active
and it writes a value to one or more elements of the output array
variable `gl_FragData[]', then the value of `gl_FragData[0] ' will be
written into the first buffer specified by BUFS, the value of
`gl_FragData[1] ' will be written into the second buffer specified by
BUFS, and so on up to `gl_FragData[n-1]'.  The draw buffer used for
`gl_FragData[n]' and beyond is implicitly set to be `GL_NONE'.

The symbolic constants contained in BUFS may be any of the following:

`GL_NONE'
     The fragment color/data value is not written into any color buffer.

`GL_FRONT_LEFT'
     The fragment color/data value is written into the front left color
     buffer.

`GL_FRONT_RIGHT'
     The fragment color/data value is written into the front right color
     buffer.

`GL_BACK_LEFT'
     The fragment color/data value is written into the back left color
     buffer.

`GL_BACK_RIGHT'
     The fragment color/data value is written into the back right color
     buffer.

`GL_AUXi'
     The fragment color/data value is written into auxiliary buffer `i'.

Except for `GL_NONE', the preceding symbolic constants may not appear
more than once in BUFS.  The maximum number of draw buffers supported is
implementation dependent and can be queried by calling `glGet' with the
argument `GL_MAX_DRAW_BUFFERS'.  The number of auxiliary buffers can be
queried by calling `glGet' with the argument `GL_AUX_BUFFERS'.

`GL_INVALID_ENUM' is generated if one of the values in BUFS is not an
accepted value.

`GL_INVALID_ENUM' is generated if N is less than 0.

`GL_INVALID_OPERATION' is generated if a symbolic constant other than
`GL_NONE' appears more than once in BUFS.

`GL_INVALID_OPERATION' is generated if any of the entries in BUFS (other
than `GL_NONE' ) indicates a color buffer that does not exist in the
current GL context.

`GL_INVALID_VALUE' is generated if N is greater than
`GL_MAX_DRAW_BUFFERS'.

`GL_INVALID_OPERATION' is generated if `glDrawBuffers' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDrawBuffer (mode GLenum) -> void))
  "Specify which color buffers are to be drawn into.

MODE
     Specifies up to four color buffers to be drawn into.  Symbolic
     constants `GL_NONE', `GL_FRONT_LEFT', `GL_FRONT_RIGHT',
     `GL_BACK_LEFT', `GL_BACK_RIGHT', `GL_FRONT', `GL_BACK', `GL_LEFT',
     `GL_RIGHT', `GL_FRONT_AND_BACK', and `GL_AUX'I, where I is between
     0 and the value of `GL_AUX_BUFFERS' minus 1, are accepted.
     (`GL_AUX_BUFFERS' is not the upper limit; use `glGet' to query the
     number of available aux buffers.) The initial value is `GL_FRONT'
     for single-buffered contexts, and `GL_BACK' for double-buffered
     contexts.

When colors are written to the frame buffer, they are written into the
color buffers specified by `glDrawBuffer'.  The specifications are as
follows:

`GL_NONE'
     No color buffers are written.

`GL_FRONT_LEFT'
     Only the front left color buffer is written.

`GL_FRONT_RIGHT'
     Only the front right color buffer is written.

`GL_BACK_LEFT'
     Only the back left color buffer is written.

`GL_BACK_RIGHT'
     Only the back right color buffer is written.

`GL_FRONT'
     Only the front left and front right color buffers are written.  If
     there is no front right color buffer, only the front left color
     buffer is written.

`GL_BACK'
     Only the back left and back right color buffers are written.  If
     there is no back right color buffer, only the back left color
     buffer is written.

`GL_LEFT'
     Only the front left and back left color buffers are written.  If
     there is no back left color buffer, only the front left color
     buffer is written.

`GL_RIGHT'
     Only the front right and back right color buffers are written.  If
     there is no back right color buffer, only the front right color
     buffer is written.

`GL_FRONT_AND_BACK'
     All the front and back color buffers (front left, front right, back
     left, back right) are written.  If there are no back color buffers,
     only the front left and front right color buffers are written.  If
     there are no right color buffers, only the front left and back left
     color buffers are written.  If there are no right or back color
     buffers, only the front left color buffer is written.

`GL_AUX'I
     Only auxiliary color buffer I is written.

If more than one color buffer is selected for drawing, then blending or
logical operations are computed and applied independently for each color
buffer and can produce different results in each buffer.

Monoscopic contexts include only LEFT buffers, and stereoscopic contexts
include both LEFT and RIGHT buffers.  Likewise, single-buffered contexts
include only FRONT buffers, and double-buffered contexts include both
FRONT and BACK buffers.  The context is selected at GL initialization.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if none of the buffers indicated by
MODE exists.

`GL_INVALID_OPERATION' is generated if `glDrawBuffer' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDrawElements
     (mode GLenum)
     (count GLsizei)
     (type GLenum)
     (indices const-GLvoid-*)
     ->
     void))
  "Render primitives from array data.

MODE
     Specifies what kind of primitives to render.  Symbolic constants
     `GL_POINTS', `GL_LINE_STRIP', `GL_LINE_LOOP', `GL_LINES',
     `GL_TRIANGLE_STRIP', `GL_TRIANGLE_FAN', `GL_TRIANGLES',
     `GL_QUAD_STRIP', `GL_QUADS', and `GL_POLYGON' are accepted.

COUNT
     Specifies the number of elements to be rendered.

TYPE
     Specifies the type of the values in INDICES.  Must be one of
     `GL_UNSIGNED_BYTE', `GL_UNSIGNED_SHORT', or `GL_UNSIGNED_INT'.

INDICES
     Specifies a pointer to the location where the indices are stored.

`glDrawElements' specifies multiple geometric primitives with very few
subroutine calls.  Instead of calling a GL function to pass each
individual vertex, normal, texture coordinate, edge flag, or color, you
can prespecify separate arrays of vertices, normals, and so on, and use
them to construct a sequence of primitives with a single call to
`glDrawElements'.

When `glDrawElements' is called, it uses COUNT sequential elements from
an enabled array, starting at INDICES to construct a sequence of
geometric primitives.  MODE specifies what kind of primitives are
constructed and how the array elements construct these primitives.  If
more than one array is enabled, each is used.  If `GL_VERTEX_ARRAY' is
not enabled, no geometric primitives are constructed.

Vertex attributes that are modified by `glDrawElements' have an
unspecified value after `glDrawElements' returns.  For example, if
`GL_COLOR_ARRAY' is enabled, the value of the current color is undefined
after `glDrawElements' executes.  Attributes that aren't modified
maintain their previous values.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_VALUE' is generated if COUNT is negative.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to an enabled array or the element array and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if `glDrawElements' is executed
between the execution of `glBegin' and the corresponding `glEnd'.")

(define-gl-procedures
  ((glDrawPixels
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Write a block of pixels to the frame buffer.

WIDTH
     HEIGHT

     Specify the dimensions of the pixel rectangle to be written into
     the frame buffer.

FORMAT
     Specifies the format of the pixel data.  Symbolic constants
     `GL_COLOR_INDEX', `GL_STENCIL_INDEX', `GL_DEPTH_COMPONENT',
     `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA', `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA' are
     accepted.

TYPE
     Specifies the data type for DATA.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

DATA
     Specifies a pointer to the pixel data.

`glDrawPixels' reads pixel data from memory and writes it into the frame
buffer relative to the current raster position, provided that the raster
position is valid.  Use `glRasterPos' or `glWindowPos' to set the
current raster position; use `glGet' with argument
`GL_CURRENT_RASTER_POSITION_VALID' to determine if the specified raster
position is valid, and `glGet' with argument
`GL_CURRENT_RASTER_POSITION' to query the raster position.

Several parameters define the encoding of pixel data in memory and
control the processing of the pixel data before it is placed in the
frame buffer.  These parameters are set with four commands:
`glPixelStore', `glPixelTransfer', `glPixelMap', and `glPixelZoom'.  This
reference page describes the effects on `glDrawPixels' of many, but not
all, of the parameters specified by these four commands.

Data is read from DATA as a sequence of signed or unsigned bytes, signed
or unsigned shorts, signed or unsigned integers, or single-precision
floating-point values, depending on TYPE.  When TYPE is one of
`GL_UNSIGNED_BYTE', `GL_BYTE', `GL_UNSIGNED_SHORT', `GL_SHORT',
`GL_UNSIGNED_INT', `GL_INT', or `GL_FLOAT' each of these bytes, shorts,
integers, or floating-point values is interpreted as one color or depth
component, or one index, depending on FORMAT.  When TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_SHORT_5_6_5',
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_5_5_5_1',
`GL_UNSIGNED_INT_8_8_8_8', or `GL_UNSIGNED_INT_10_10_10_2', each
unsigned value is interpreted as containing all the components for a
single pixel, with the color components arranged according to FORMAT.
When TYPE is one of `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5_REV', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_1_5_5_5_REV', `GL_UNSIGNED_INT_8_8_8_8_REV', or
`GL_UNSIGNED_INT_2_10_10_10_REV', each unsigned value is interpreted as
containing all color components, specified by FORMAT, for a single pixel
in a reversed order.  Indices are always treated individually.  Color
components are treated as groups of one, two, three, or four values,
again based on FORMAT.  Both individual indices and groups of components
are referred to as pixels.  If TYPE is `GL_BITMAP', the data must be
unsigned bytes, and FORMAT must be either `GL_COLOR_INDEX' or
`GL_STENCIL_INDEX'.  Each unsigned byte is treated as eight 1-bit
pixels, with bit ordering determined by `GL_UNPACK_LSB_FIRST' (see
`glPixelStore').

WIDTH×HEIGHT pixels are read from memory, starting at location DATA.  By
default, these pixels are taken from adjacent memory locations, except
that after all WIDTH pixels are read, the read pointer is advanced to
the next four-byte boundary.  The four-byte row alignment is specified
by `glPixelStore' with argument `GL_UNPACK_ALIGNMENT', and it can be set
to one, two, four, or eight bytes.  Other pixel store parameters specify
different read pointer advancements, both before the first pixel is read
and after all WIDTH pixels are read.  See the `glPixelStore' reference
page for details on these options.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a block of
pixels is specified, DATA is treated as a byte offset into the buffer
object's data store.

The WIDTH×HEIGHT pixels that are read from memory are each operated on
in the same way, based on the values of several parameters specified by
`glPixelTransfer' and `glPixelMap'.  The details of these operations, as
well as the target buffer into which the pixels are drawn, are specific
to the format of the pixels, as specified by FORMAT.  FORMAT can assume
one of 13 symbolic values:

`GL_COLOR_INDEX'
     Each pixel is a single value, a color index.  It is converted to
     fixed-point format, with an unspecified number of bits to the right
     of the binary point, regardless of the memory data type.
     Floating-point values convert to true fixed-point values.  Signed
     and unsigned integer data is converted with all fraction bits set
     to 0.  Bitmap data convert to either 0 or 1.

     Each fixed-point index is then shifted left by `GL_INDEX_SHIFT'
     bits and added to `GL_INDEX_OFFSET'.  If `GL_INDEX_SHIFT' is
     negative, the shift is to the right.  In either case, zero bits
     fill otherwise unspecified bit locations in the result.

     If the GL is in RGBA mode, the resulting index is converted to an
     RGBA pixel with the help of the `GL_PIXEL_MAP_I_TO_R',
     `GL_PIXEL_MAP_I_TO_G', `GL_PIXEL_MAP_I_TO_B', and
     `GL_PIXEL_MAP_I_TO_A' tables.  If the GL is in color index mode,
     and if `GL_MAP_COLOR' is true, the index is replaced with the value
     that it references in lookup table `GL_PIXEL_MAP_I_TO_I'.  Whether
     the lookup replacement of the index is done or not, the integer
     part of the index is then ANDed with 2^B-1 , where B is the number
     of bits in a color index buffer.

     The GL then converts the resulting indices or RGBA colors to
     fragments by attaching the current raster position Z coordinate and
     texture coordinates to each pixel, then assigning X and Y window
     coordinates to the N th fragment such that X_N=X_R+N%WIDTH
     Y_N=Y_R+⌊N/WIDTH,⌋

     where (X_R,Y_R) is the current raster position.  These pixel
     fragments are then treated just like the fragments generated by
     rasterizing points, lines, or polygons.  Texture mapping, fog, and
     all the fragment operations are applied before the fragments are
     written to the frame buffer.

`GL_STENCIL_INDEX'
     Each pixel is a single value, a stencil index.  It is converted to
     fixed-point format, with an unspecified number of bits to the right
     of the binary point, regardless of the memory data type.
     Floating-point values convert to true fixed-point values.  Signed
     and unsigned integer data is converted with all fraction bits set
     to 0.  Bitmap data convert to either 0 or 1.

     Each fixed-point index is then shifted left by `GL_INDEX_SHIFT'
     bits, and added to `GL_INDEX_OFFSET'.  If `GL_INDEX_SHIFT' is
     negative, the shift is to the right.  In either case, zero bits
     fill otherwise unspecified bit locations in the result.  If
     `GL_MAP_STENCIL' is true, the index is replaced with the value that
     it references in lookup table `GL_PIXEL_MAP_S_TO_S'.  Whether the
     lookup replacement of the index is done or not, the integer part of
     the index is then ANDed with 2^B-1 , where B is the number of bits
     in the stencil buffer.  The resulting stencil indices are then
     written to the stencil buffer such that the N th index is written
     to location

     X_N=X_R+N%WIDTH Y_N=Y_R+⌊N/WIDTH,⌋

     where (X_R,Y_R) is the current raster position.  Only the pixel
     ownership test, the scissor test, and the stencil writemask affect
     these write operations.

`GL_DEPTH_COMPONENT'
     Each pixel is a single-depth component.  Floating-point data is
     converted directly to an internal floating-point format with
     unspecified precision.  Signed integer data is mapped linearly to
     the internal floating-point format such that the most positive
     representable integer value maps to 1.0, and the most negative
     representable value maps to -1.0 .  Unsigned integer data is mapped
     similarly: the largest integer value maps to 1.0, and 0 maps to
     0.0.  The resulting floating-point depth value is then multiplied
     by `GL_DEPTH_SCALE' and added to `GL_DEPTH_BIAS'.  The result is
     clamped to the range [0,1] .

     The GL then converts the resulting depth components to fragments by
     attaching the current raster position color or color index and
     texture coordinates to each pixel, then assigning X and Y window
     coordinates to the N th fragment such that

     X_N=X_R+N%WIDTH Y_N=Y_R+⌊N/WIDTH,⌋

     where (X_R,Y_R) is the current raster position.  These pixel
     fragments are then treated just like the fragments generated by
     rasterizing points, lines, or polygons.  Texture mapping, fog, and
     all the fragment operations are applied before the fragments are
     written to the frame buffer.

`GL_RGBA'
`GL_BGRA'
     Each pixel is a four-component group: For `GL_RGBA', the red
     component is first, followed by green, followed by blue, followed
     by alpha; for `GL_BGRA' the order is blue, green, red and then
     alpha.  Floating-point values are converted directly to an internal
     floating-point format with unspecified precision.  Signed integer
     values are mapped linearly to the internal floating-point format
     such that the most positive representable integer value maps to
     1.0, and the most negative representable value maps to -1.0 .  (Note
     that this mapping does not convert 0 precisely to 0.0.) Unsigned
     integer data is mapped similarly: The largest integer value maps to
     1.0, and 0 maps to 0.0.  The resulting floating-point color values
     are then multiplied by `GL_c_SCALE' and added to `GL_c_BIAS', where
     C is RED, GREEN, BLUE, and ALPHA for the respective color
     components.  The results are clamped to the range [0,1] .

     If `GL_MAP_COLOR' is true, each color component is scaled by the
     size of lookup table `GL_PIXEL_MAP_c_TO_c', then replaced by the
     value that it references in that table.  C is R, G, B, or A
     respectively.

     The GL then converts the resulting RGBA colors to fragments by
     attaching the current raster position Z coordinate and texture
     coordinates to each pixel, then assigning X and Y window
     coordinates to the N th fragment such that

     X_N=X_R+N%WIDTH Y_N=Y_R+⌊N/WIDTH,⌋

     where (X_R,Y_R) is the current raster position.  These pixel
     fragments are then treated just like the fragments generated by
     rasterizing points, lines, or polygons.  Texture mapping, fog, and
     all the fragment operations are applied before the fragments are
     written to the frame buffer.

`GL_RED'
     Each pixel is a single red component.  This component is converted
     to the internal floating-point format in the same way the red
     component of an RGBA pixel is.  It is then converted to an RGBA
     pixel with green and blue set to 0, and alpha set to 1.  After this
     conversion, the pixel is treated as if it had been read as an RGBA
     pixel.

`GL_GREEN'
     Each pixel is a single green component.  This component is
     converted to the internal floating-point format in the same way the
     green component of an RGBA pixel is.  It is then converted to an
     RGBA pixel with red and blue set to 0, and alpha set to 1.  After
     this conversion, the pixel is treated as if it had been read as an
     RGBA pixel.

`GL_BLUE'
     Each pixel is a single blue component.  This component is converted
     to the internal floating-point format in the same way the blue
     component of an RGBA pixel is.  It is then converted to an RGBA
     pixel with red and green set to 0, and alpha set to 1.  After this
     conversion, the pixel is treated as if it had been read as an RGBA
     pixel.

`GL_ALPHA'
     Each pixel is a single alpha component.  This component is
     converted to the internal floating-point format in the same way the
     alpha component of an RGBA pixel is.  It is then converted to an
     RGBA pixel with red, green, and blue set to 0.  After this
     conversion, the pixel is treated as if it had been read as an RGBA
     pixel.

`GL_RGB'
`GL_BGR'
     Each pixel is a three-component group: red first, followed by
     green, followed by blue; for `GL_BGR', the first component is blue,
     followed by green and then red.  Each component is converted to the
     internal floating-point format in the same way the red, green, and
     blue components of an RGBA pixel are.  The color triple is
     converted to an RGBA pixel with alpha set to 1.  After this
     conversion, the pixel is treated as if it had been read as an RGBA
     pixel.

`GL_LUMINANCE'
     Each pixel is a single luminance component.  This component is
     converted to the internal floating-point format in the same way the
     red component of an RGBA pixel is.  It is then converted to an RGBA
     pixel with red, green, and blue set to the converted luminance
     value, and alpha set to 1.  After this conversion, the pixel is
     treated as if it had been read as an RGBA pixel.

`GL_LUMINANCE_ALPHA'
     Each pixel is a two-component group: luminance first, followed by
     alpha.  The two components are converted to the internal
     floating-point format in the same way the red component of an RGBA
     pixel is.  They are then converted to an RGBA pixel with red,
     green, and blue set to the converted luminance value, and alpha set
     to the converted alpha value.  After this conversion, the pixel is
     treated as if it had been read as an RGBA pixel.

The following table summarizes the meaning of the valid constants for
the TYPE parameter:



*Type*
     *Corresponding Type*

`GL_UNSIGNED_BYTE'
     unsigned 8-bit integer

`GL_BYTE'
     signed 8-bit integer

`GL_BITMAP'
     single bits in unsigned 8-bit integers

`GL_UNSIGNED_SHORT'
     unsigned 16-bit integer

`GL_SHORT'
     signed 16-bit integer

`GL_UNSIGNED_INT'
     unsigned 32-bit integer

`GL_INT'
     32-bit integer

`GL_FLOAT'
     single-precision floating-point

`GL_UNSIGNED_BYTE_3_3_2'
     unsigned 8-bit integer

`GL_UNSIGNED_BYTE_2_3_3_REV'
     unsigned 8-bit integer with reversed component ordering

`GL_UNSIGNED_SHORT_5_6_5'
     unsigned 16-bit integer

`GL_UNSIGNED_SHORT_5_6_5_REV'
     unsigned 16-bit integer with reversed component ordering

`GL_UNSIGNED_SHORT_4_4_4_4'
     unsigned 16-bit integer

`GL_UNSIGNED_SHORT_4_4_4_4_REV'
     unsigned 16-bit integer with reversed component ordering

`GL_UNSIGNED_SHORT_5_5_5_1'
     unsigned 16-bit integer

`GL_UNSIGNED_SHORT_1_5_5_5_REV'
     unsigned 16-bit integer with reversed component ordering

`GL_UNSIGNED_INT_8_8_8_8'
     unsigned 32-bit integer

`GL_UNSIGNED_INT_8_8_8_8_REV'
     unsigned 32-bit integer with reversed component ordering

`GL_UNSIGNED_INT_10_10_10_2'
     unsigned 32-bit integer

`GL_UNSIGNED_INT_2_10_10_10_REV'
     unsigned 32-bit integer with reversed component ordering



The rasterization described so far assumes pixel zoom factors of 1.  If
`glPixelZoom' is used to change the X and Y pixel zoom factors, pixels
are converted to fragments as follows.  If (X_R,Y_R) is the current
raster position, and a given pixel is in the N th column and M th row of
the pixel rectangle, then fragments are generated for pixels whose
centers are in the rectangle with corners at

(X_R+ZOOM_X,\u2062N,Y_R+ZOOM_Y,\u2062M) (X_R+ZOOM_X,\u2061(N+1,),Y_R+ZOOM_Y,\u2061(M+1,))

where ZOOM_X is the value of `GL_ZOOM_X' and ZOOM_Y is the value of
`GL_ZOOM_Y'.

`GL_INVALID_ENUM' is generated if FORMAT or TYPE is not one of the
accepted values.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
either `GL_COLOR_INDEX' or `GL_STENCIL_INDEX'.

`GL_INVALID_VALUE' is generated if either WIDTH or HEIGHT is negative.

`GL_INVALID_OPERATION' is generated if FORMAT is `GL_STENCIL_INDEX' and
there is no stencil buffer.

`GL_INVALID_OPERATION' is generated if FORMAT is `GL_RED', `GL_GREEN',
`GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_RGBA', `GL_BGR', `GL_BGRA',
`GL_LUMINANCE', or `GL_LUMINANCE_ALPHA', and the GL is in color index
mode.

`GL_INVALID_OPERATION' is generated if FORMAT is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if FORMAT is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glDrawPixels' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glDrawRangeElements
     (mode GLenum)
     (start GLuint)
     (end GLuint)
     (count GLsizei)
     (type GLenum)
     (indices const-GLvoid-*)
     ->
     void))
  "Render primitives from array data.

MODE
     Specifies what kind of primitives to render.  Symbolic constants
     `GL_POINTS', `GL_LINE_STRIP', `GL_LINE_LOOP', `GL_LINES',
     `GL_TRIANGLE_STRIP', `GL_TRIANGLE_FAN', `GL_TRIANGLES',
     `GL_QUAD_STRIP', `GL_QUADS', and `GL_POLYGON' are accepted.

START
     Specifies the minimum array index contained in INDICES.

END
     Specifies the maximum array index contained in INDICES.

COUNT
     Specifies the number of elements to be rendered.

TYPE
     Specifies the type of the values in INDICES.  Must be one of
     `GL_UNSIGNED_BYTE', `GL_UNSIGNED_SHORT', or `GL_UNSIGNED_INT'.

INDICES
     Specifies a pointer to the location where the indices are stored.

`glDrawRangeElements' is a restricted form of `glDrawElements'.  MODE,
START, END, and COUNT match the corresponding arguments to
`glDrawElements', with the additional constraint that all values in the
arrays COUNT must lie between START and END, inclusive.

Implementations denote recommended maximum amounts of vertex and index
data, which may be queried by calling `glGet' with argument
`GL_MAX_ELEMENTS_VERTICES' and `GL_MAX_ELEMENTS_INDICES'.  If
END-START+1 is greater than the value of `GL_MAX_ELEMENTS_VERTICES', or
if COUNT is greater than the value of `GL_MAX_ELEMENTS_INDICES', then
the call may operate at reduced performance.  There is no requirement
that all vertices in the range [START,END] be referenced.  However, the
implementation may partially process unused vertices, reducing
performance from what could be achieved with an optimal index set.

When `glDrawRangeElements' is called, it uses COUNT sequential elements
from an enabled array, starting at START to construct a sequence of
geometric primitives.  MODE specifies what kind of primitives are
constructed, and how the array elements construct these primitives.  If
more than one array is enabled, each is used.  If `GL_VERTEX_ARRAY' is
not enabled, no geometric primitives are constructed.

Vertex attributes that are modified by `glDrawRangeElements' have an
unspecified value after `glDrawRangeElements' returns.  For example, if
`GL_COLOR_ARRAY' is enabled, the value of the current color is undefined
after `glDrawRangeElements' executes.  Attributes that aren't modified
maintain their previous values.

It is an error for indices to lie outside the range [START,END] , but
implementations may not check for this situation.  Such indices cause
implementation-dependent behavior.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_VALUE' is generated if COUNT is negative.

`GL_INVALID_VALUE' is generated if END<START .

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to an enabled array or the element array and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if `glDrawRangeElements' is executed
between the execution of `glBegin' and the corresponding `glEnd'.")

(define-gl-procedures
  ((glEdgeFlagPointer
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of edge flags.

STRIDE
     Specifies the byte offset between consecutive edge flags.  If
     STRIDE is 0, the edge flags are understood to be tightly packed in
     the array.  The initial value is 0.

POINTER
     Specifies a pointer to the first edge flag in the array.  The
     initial value is 0.

`glEdgeFlagPointer' specifies the location and data format of an array
of boolean edge flags to use when rendering.  STRIDE specifies the byte
stride from one edge flag to the next, allowing vertices and attributes
to be packed into a single array or stored in separate arrays.

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while an edge flag array is specified,
POINTER is treated as a byte offset into the buffer object's data store.
Also, the buffer object binding (`GL_ARRAY_BUFFER_BINDING') is saved as
edge flag vertex array client-side state
(`GL_EDGE_FLAG_ARRAY_BUFFER_BINDING').

When an edge flag array is specified, STRIDE and POINTER are saved as
client-side state, in addition to the current vertex array buffer object
binding.

To enable and disable the edge flag array, call `glEnableClientState'
and `glDisableClientState' with the argument `GL_EDGE_FLAG_ARRAY'.  If
enabled, the edge flag array is used when `glDrawArrays',
`glMultiDrawArrays', `glDrawElements', `glMultiDrawElements',
`glDrawRangeElements', or `glArrayElement' is called.

`GL_INVALID_ENUM' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glEdgeFlag (flag GLboolean) -> void)
   (glEdgeFlagv (flag const-GLboolean-*) -> void))
  "Flag edges as either boundary or nonboundary.

FLAG
     Specifies the current edge flag value, either `GL_TRUE' or
     `GL_FALSE'.  The initial value is `GL_TRUE'.

Each vertex of a polygon, separate triangle, or separate quadrilateral
specified between a `glBegin'/`glEnd' pair is marked as the start of
either a boundary or nonboundary edge.  If the current edge flag is true
when the vertex is specified, the vertex is marked as the start of a
boundary edge.  Otherwise, the vertex is marked as the start of a
nonboundary edge.  `glEdgeFlag' sets the edge flag bit to `GL_TRUE' if
FLAG is `GL_TRUE' and to `GL_FALSE' otherwise.

The vertices of connected triangles and connected quadrilaterals are
always marked as boundary, regardless of the value of the edge flag.

Boundary and nonboundary edge flags on vertices are significant only if
`GL_POLYGON_MODE' is set to `GL_POINT' or `GL_LINE'.  See
`glPolygonMode'.")

(define-gl-procedures
  ((glEnableClientState (cap GLenum) -> void)
   (glDisableClientState (cap GLenum) -> void))
  "Enable or disable client-side capability.

CAP
     Specifies the capability to enable.  Symbolic constants
     `GL_COLOR_ARRAY', `GL_EDGE_FLAG_ARRAY', `GL_FOG_COORD_ARRAY',
     `GL_INDEX_ARRAY', `GL_NORMAL_ARRAY', `GL_SECONDARY_COLOR_ARRAY',
     `GL_TEXTURE_COORD_ARRAY', and `GL_VERTEX_ARRAY' are accepted.

`glEnableClientState' and `glDisableClientState' enable or disable
individual client-side capabilities.  By default, all client-side
capabilities are disabled.  Both `glEnableClientState' and
`glDisableClientState' take a single argument, CAP, which can assume one
of the following values:

`GL_COLOR_ARRAY'
     If enabled, the color array is enabled for writing and used during
     rendering when `glArrayElement', `glDrawArrays', `glDrawElements',
     `glDrawRangeElements'`glMultiDrawArrays', or `glMultiDrawElements'
     is called.  See `glColorPointer'.

`GL_EDGE_FLAG_ARRAY'
     If enabled, the edge flag array is enabled for writing and used
     during rendering when `glArrayElement', `glDrawArrays',
     `glDrawElements', `glDrawRangeElements'`glMultiDrawArrays', or
     `glMultiDrawElements' is called.  See `glEdgeFlagPointer'.

`GL_FOG_COORD_ARRAY'
     If enabled, the fog coordinate array is enabled for writing and
     used during rendering when `glArrayElement', `glDrawArrays',
     `glDrawElements', `glDrawRangeElements'`glMultiDrawArrays', or
     `glMultiDrawElements' is called.  See `glFogCoordPointer'.

`GL_INDEX_ARRAY'
     If enabled, the index array is enabled for writing and used during
     rendering when `glArrayElement', `glDrawArrays', `glDrawElements',
     `glDrawRangeElements'`glMultiDrawArrays', or `glMultiDrawElements'
     is called.  See `glIndexPointer'.

`GL_NORMAL_ARRAY'
     If enabled, the normal array is enabled for writing and used during
     rendering when `glArrayElement', `glDrawArrays', `glDrawElements',
     `glDrawRangeElements'`glMultiDrawArrays', or `glMultiDrawElements'
     is called.  See `glNormalPointer'.

`GL_SECONDARY_COLOR_ARRAY'
     If enabled, the secondary color array is enabled for writing and
     used during rendering when `glArrayElement', `glDrawArrays',
     `glDrawElements', `glDrawRangeElements'`glMultiDrawArrays', or
     `glMultiDrawElements' is called.  See `glColorPointer'.

`GL_TEXTURE_COORD_ARRAY'
     If enabled, the texture coordinate array is enabled for writing and
     used during rendering when `glArrayElement', `glDrawArrays',
     `glDrawElements', `glDrawRangeElements'`glMultiDrawArrays', or
     `glMultiDrawElements' is called.  See `glTexCoordPointer'.

`GL_VERTEX_ARRAY'
     If enabled, the vertex array is enabled for writing and used during
     rendering when `glArrayElement', `glDrawArrays', `glDrawElements',
     `glDrawRangeElements'`glMultiDrawArrays', or `glMultiDrawElements'
     is called.  See `glVertexPointer'.

`GL_INVALID_ENUM' is generated if CAP is not an accepted value.

`glEnableClientState' is not allowed between the execution of `glBegin'
and the corresponding `glEnd', but an error may or may not be generated.
If no error is generated, the behavior is undefined.")

(define-gl-procedures
  ((glEnableVertexAttribArray
     (index GLuint)
     ->
     void)
   (glDisableVertexAttribArray
     (index GLuint)
     ->
     void))
  "Enable or disable a generic vertex attribute array.

INDEX
     Specifies the index of the generic vertex attribute to be enabled
     or disabled.

`glEnableVertexAttribArray' enables the generic vertex attribute array
specified by INDEX.  `glDisableVertexAttribArray' disables the generic
vertex attribute array specified by INDEX.  By default, all client-side
capabilities are disabled, including all generic vertex attribute
arrays.  If enabled, the values in the generic vertex attribute array
will be accessed and used for rendering when calls are made to vertex
array commands such as `glDrawArrays', `glDrawElements',
`glDrawRangeElements', `glArrayElement', `glMultiDrawElements', or
`glMultiDrawArrays'.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to
`GL_MAX_VERTEX_ATTRIBS'.

`GL_INVALID_OPERATION' is generated if either `glEnableVertexAttribArray
' or `glDisableVertexAttribArray ' is executed between the execution of
`glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glEnable (cap GLenum) -> void)
   (glDisable (cap GLenum) -> void))
  "Enable or disable server-side GL capabilities.

CAP
     Specifies a symbolic constant indicating a GL capability.

`glEnable' and `glDisable' enable and disable various capabilities.  Use
`glIsEnabled' or `glGet' to determine the current setting of any
capability.  The initial value for each capability with the exception of
`GL_DITHER' and `GL_MULTISAMPLE' is `GL_FALSE'.  The initial value for
`GL_DITHER' and `GL_MULTISAMPLE' is `GL_TRUE'.

Both `glEnable' and `glDisable' take a single argument, CAP, which can
assume one of the following values:

`GL_ALPHA_TEST'


     If enabled, do alpha testing.  See `glAlphaFunc'.

`GL_AUTO_NORMAL'


     If enabled, generate normal vectors when either `GL_MAP2_VERTEX_3'
     or `GL_MAP2_VERTEX_4' is used to generate vertices.  See `glMap2'.

`GL_BLEND'


     If enabled, blend the computed fragment color values with the
     values in the color buffers.  See `glBlendFunc'.

`GL_CLIP_PLANE'I


     If enabled, clip geometry against user-defined clipping plane I.
     See `glClipPlane'.

`GL_COLOR_LOGIC_OP'


     If enabled, apply the currently selected logical operation to the
     computed fragment color and color buffer values.  See `glLogicOp'.

`GL_COLOR_MATERIAL'


     If enabled, have one or more material parameters track the current
     color.  See `glColorMaterial'.

`GL_COLOR_SUM'


     If enabled and no fragment shader is active, add the secondary
     color value to the computed fragment color.  See
     `glSecondaryColor'.

`GL_COLOR_TABLE'


     If enabled, perform a color table lookup on the incoming RGBA color
     values.  See `glColorTable'.

`GL_CONVOLUTION_1D'


     If enabled, perform a 1D convolution operation on incoming RGBA
     color values.  See `glConvolutionFilter1D'.

`GL_CONVOLUTION_2D'


     If enabled, perform a 2D convolution operation on incoming RGBA
     color values.  See `glConvolutionFilter2D'.

`GL_CULL_FACE'


     If enabled, cull polygons based on their winding in window
     coordinates.  See `glCullFace'.

`GL_DEPTH_TEST'


     If enabled, do depth comparisons and update the depth buffer.  Note
     that even if the depth buffer exists and the depth mask is
     non-zero, the depth buffer is not updated if the depth test is
     disabled.  See `glDepthFunc' and `glDepthRange'.

`GL_DITHER'


     If enabled, dither color components or indices before they are
     written to the color buffer.

`GL_FOG'


     If enabled and no fragment shader is active, blend a fog color into
     the post-texturing color.  See `glFog'.

`GL_HISTOGRAM'


     If enabled, histogram incoming RGBA color values.  See
     `glHistogram'.

`GL_INDEX_LOGIC_OP'


     If enabled, apply the currently selected logical operation to the
     incoming index and color buffer indices.  See `glLogicOp'.

`GL_LIGHT'I


     If enabled, include light I in the evaluation of the lighting
     equation.  See `glLightModel' and `glLight'.

`GL_LIGHTING'


     If enabled and no vertex shader is active, use the current lighting
     parameters to compute the vertex color or index.  Otherwise, simply
     associate the current color or index with each vertex.  See
     `glMaterial', `glLightModel', and `glLight'.

`GL_LINE_SMOOTH'


     If enabled, draw lines with correct filtering.  Otherwise, draw
     aliased lines.  See `glLineWidth'.

`GL_LINE_STIPPLE'


     If enabled, use the current line stipple pattern when drawing
     lines.  See `glLineStipple'.

`GL_MAP1_COLOR_4'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate RGBA values.  See `glMap1'.

`GL_MAP1_INDEX'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate color indices.  See `glMap1'.

`GL_MAP1_NORMAL'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate normals.  See `glMap1'.

`GL_MAP1_TEXTURE_COORD_1'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate S texture coordinates.  See `glMap1'.

`GL_MAP1_TEXTURE_COORD_2'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate S and T texture coordinates.  See `glMap1'.

`GL_MAP1_TEXTURE_COORD_3'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate S, T, and R texture coordinates.  See
     `glMap1'.

`GL_MAP1_TEXTURE_COORD_4'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate S, T, R, and Q texture coordinates.  See
     `glMap1'.

`GL_MAP1_VERTEX_3'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate X, Y, and Z vertex coordinates.  See
     `glMap1'.

`GL_MAP1_VERTEX_4'


     If enabled, calls to `glEvalCoord1', `glEvalMesh1', and
     `glEvalPoint1' generate homogeneous X, Y, Z, and W vertex
     coordinates.  See `glMap1'.

`GL_MAP2_COLOR_4'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate RGBA values.  See `glMap2'.

`GL_MAP2_INDEX'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate color indices.  See `glMap2'.

`GL_MAP2_NORMAL'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate normals.  See `glMap2'.

`GL_MAP2_TEXTURE_COORD_1'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate S texture coordinates.  See `glMap2'.

`GL_MAP2_TEXTURE_COORD_2'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate S and T texture coordinates.  See `glMap2'.

`GL_MAP2_TEXTURE_COORD_3'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate S, T, and R texture coordinates.  See
     `glMap2'.

`GL_MAP2_TEXTURE_COORD_4'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate S, T, R, and Q texture coordinates.  See
     `glMap2'.

`GL_MAP2_VERTEX_3'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate X, Y, and Z vertex coordinates.  See
     `glMap2'.

`GL_MAP2_VERTEX_4'


     If enabled, calls to `glEvalCoord2', `glEvalMesh2', and
     `glEvalPoint2' generate homogeneous X, Y, Z, and W vertex
     coordinates.  See `glMap2'.

`GL_MINMAX'


     If enabled, compute the minimum and maximum values of incoming RGBA
     color values.  See `glMinmax'.

`GL_MULTISAMPLE'


     If enabled, use multiple fragment samples in computing the final
     color of a pixel.  See `glSampleCoverage'.

`GL_NORMALIZE'


     If enabled and no vertex shader is active, normal vectors are
     normalized to unit length after transformation and before lighting.
     This method is generally less efficient than `GL_RESCALE_NORMAL'.
     See `glNormal' and `glNormalPointer'.

`GL_POINT_SMOOTH'


     If enabled, draw points with proper filtering.  Otherwise, draw
     aliased points.  See `glPointSize'.

`GL_POINT_SPRITE'


     If enabled, calculate texture coordinates for points based on
     texture environment and point parameter settings.  Otherwise
     texture coordinates are constant across points.

`GL_POLYGON_OFFSET_FILL'


     If enabled, and if the polygon is rendered in `GL_FILL' mode, an
     offset is added to depth values of a polygon's fragments before the
     depth comparison is performed.  See `glPolygonOffset'.

`GL_POLYGON_OFFSET_LINE'


     If enabled, and if the polygon is rendered in `GL_LINE' mode, an
     offset is added to depth values of a polygon's fragments before the
     depth comparison is performed.  See `glPolygonOffset'.

`GL_POLYGON_OFFSET_POINT'


     If enabled, an offset is added to depth values of a polygon's
     fragments before the depth comparison is performed, if the polygon
     is rendered in `GL_POINT' mode.  See `glPolygonOffset'.

`GL_POLYGON_SMOOTH'


     If enabled, draw polygons with proper filtering.  Otherwise, draw
     aliased polygons.  For correct antialiased polygons, an alpha
     buffer is needed and the polygons must be sorted front to back.

`GL_POLYGON_STIPPLE'


     If enabled, use the current polygon stipple pattern when rendering
     polygons.  See `glPolygonStipple'.

`GL_POST_COLOR_MATRIX_COLOR_TABLE'


     If enabled, perform a color table lookup on RGBA color values after
     color matrix transformation.  See `glColorTable'.

`GL_POST_CONVOLUTION_COLOR_TABLE'


     If enabled, perform a color table lookup on RGBA color values after
     convolution.  See `glColorTable'.

`GL_RESCALE_NORMAL'


     If enabled and no vertex shader is active, normal vectors are
     scaled after transformation and before lighting by a factor
     computed from the modelview matrix.  If the modelview matrix scales
     space uniformly, this has the effect of restoring the transformed
     normal to unit length.  This method is generally more efficient
     than `GL_NORMALIZE'.  See `glNormal' and `glNormalPointer'.

`GL_SAMPLE_ALPHA_TO_COVERAGE'


     If enabled, compute a temporary coverage value where each bit is
     determined by the alpha value at the corresponding sample location.
     The temporary coverage value is then ANDed with the fragment
     coverage value.

`GL_SAMPLE_ALPHA_TO_ONE'


     If enabled, each sample alpha value is replaced by the maximum
     representable alpha value.

`GL_SAMPLE_COVERAGE'


     If enabled, the fragment's coverage is ANDed with the temporary
     coverage value.  If `GL_SAMPLE_COVERAGE_INVERT' is set to
     `GL_TRUE', invert the coverage value.  See `glSampleCoverage'.

`GL_SEPARABLE_2D'


     If enabled, perform a two-dimensional convolution operation using a
     separable convolution filter on incoming RGBA color values.  See
     `glSeparableFilter2D'.

`GL_SCISSOR_TEST'


     If enabled, discard fragments that are outside the scissor
     rectangle.  See `glScissor'.

`GL_STENCIL_TEST'


     If enabled, do stencil testing and update the stencil buffer.  See
     `glStencilFunc' and `glStencilOp'.

`GL_TEXTURE_1D'


     If enabled and no fragment shader is active, one-dimensional
     texturing is performed (unless two- or three-dimensional or
     cube-mapped texturing is also enabled).  See `glTexImage1D'.

`GL_TEXTURE_2D'


     If enabled and no fragment shader is active, two-dimensional
     texturing is performed (unless three-dimensional or cube-mapped
     texturing is also enabled).  See `glTexImage2D'.

`GL_TEXTURE_3D'


     If enabled and no fragment shader is active, three-dimensional
     texturing is performed (unless cube-mapped texturing is also
     enabled).  See `glTexImage3D'.

`GL_TEXTURE_CUBE_MAP'


     If enabled and no fragment shader is active, cube-mapped texturing
     is performed.  See `glTexImage2D'.

`GL_TEXTURE_GEN_Q'


     If enabled and no vertex shader is active, the Q texture coordinate
     is computed using the texture generation function defined with
     `glTexGen'.  Otherwise, the current Q texture coordinate is used.
     See `glTexGen'.

`GL_TEXTURE_GEN_R'


     If enabled and no vertex shader is active, the R texture coordinate
     is computed using the texture generation function defined with
     `glTexGen'.  Otherwise, the current R texture coordinate is used.
     See `glTexGen'.

`GL_TEXTURE_GEN_S'


     If enabled and no vertex shader is active, the S texture coordinate
     is computed using the texture generation function defined with
     `glTexGen'.  Otherwise, the current S texture coordinate is used.
     See `glTexGen'.

`GL_TEXTURE_GEN_T'


     If enabled and no vertex shader is active, the T texture coordinate
     is computed using the texture generation function defined with
     `glTexGen'.  Otherwise, the current T texture coordinate is used.
     See `glTexGen'.

`GL_VERTEX_PROGRAM_POINT_SIZE'


     If enabled and a vertex shader is active, then the derived point
     size is taken from the (potentially clipped) shader builtin
     `gl_PointSize' and clamped to the implementation-dependent point
     size range.

`GL_VERTEX_PROGRAM_TWO_SIDE'


     If enabled and a vertex shader is active, it specifies that the GL
     will choose between front and back colors based on the polygon's
     face direction of which the vertex being shaded is a part.  It has
     no effect on points or lines.

`GL_INVALID_ENUM' is generated if CAP is not one of the values listed
previously.

`GL_INVALID_OPERATION' is generated if `glEnable' or `glDisable' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glEvalCoord1f (u GLfloat) -> void)
   (glEvalCoord1d (u GLdouble) -> void)
   (glEvalCoord2f (u GLfloat) (v GLfloat) -> void)
   (glEvalCoord2d (u GLdouble) (v GLdouble) -> void)
   (glEvalCoord1fv (u const-GLfloat-*) -> void)
   (glEvalCoord1dv (u const-GLdouble-*) -> void)
   (glEvalCoord2fv (u const-GLfloat-*) -> void)
   (glEvalCoord2dv (u const-GLdouble-*) -> void))
  "Evaluate enabled one- and two-dimensional maps.

U
     Specifies a value that is the domain coordinate U to the basis
     function defined in a previous `glMap1' or `glMap2' command.

V
     Specifies a value that is the domain coordinate V to the basis
     function defined in a previous `glMap2' command.  This argument is
     not present in a `glEvalCoord1' command.

`glEvalCoord1' evaluates enabled one-dimensional maps at argument U.
`glEvalCoord2' does the same for two-dimensional maps using two domain
values, U and V.  To define a map, call `glMap1' and `glMap2'; to enable
and disable it, call `glEnable' and `glDisable'.

When one of the `glEvalCoord' commands is issued, all currently enabled
maps of the indicated dimension are evaluated.  Then, for each enabled
map, it is as if the corresponding GL command had been issued with the
computed value.  That is, if `GL_MAP1_INDEX' or `GL_MAP2_INDEX' is
enabled, a `glIndex' command is simulated.  If `GL_MAP1_COLOR_4' or
`GL_MAP2_COLOR_4' is enabled, a `glColor' command is simulated.  If
`GL_MAP1_NORMAL' or `GL_MAP2_NORMAL' is enabled, a normal vector is
produced, and if any of `GL_MAP1_TEXTURE_COORD_1',
`GL_MAP1_TEXTURE_COORD_2', `GL_MAP1_TEXTURE_COORD_3',
`GL_MAP1_TEXTURE_COORD_4', `GL_MAP2_TEXTURE_COORD_1',
`GL_MAP2_TEXTURE_COORD_2', `GL_MAP2_TEXTURE_COORD_3', or
`GL_MAP2_TEXTURE_COORD_4' is enabled, then an appropriate `glTexCoord'
command is simulated.

For color, color index, normal, and texture coordinates the GL uses
evaluated values instead of current values for those evaluations that
are enabled, and current values otherwise, However, the evaluated values
do not update the current values.  Thus, if `glVertex' commands are
interspersed with `glEvalCoord' commands, the color, normal, and texture
coordinates associated with the `glVertex' commands are not affected by
the values generated by the `glEvalCoord' commands, but only by the most
recent `glColor', `glIndex', `glNormal', and `glTexCoord' commands.

No commands are issued for maps that are not enabled.  If more than one
texture evaluation is enabled for a particular dimension (for example,
`GL_MAP2_TEXTURE_COORD_1' and `GL_MAP2_TEXTURE_COORD_2'), then only the
evaluation of the map that produces the larger number of coordinates (in
this case, `GL_MAP2_TEXTURE_COORD_2') is carried out.  `GL_MAP1_VERTEX_4'
overrides `GL_MAP1_VERTEX_3', and `GL_MAP2_VERTEX_4' overrides
`GL_MAP2_VERTEX_3', in the same manner.  If neither a three- nor a
four-component vertex map is enabled for the specified dimension, the
`glEvalCoord' command is ignored.

If you have enabled automatic normal generation, by calling `glEnable'
with argument `GL_AUTO_NORMAL', `glEvalCoord2' generates surface normals
analytically, regardless of the contents or enabling of the
`GL_MAP2_NORMAL' map.  Let

`m'=∂`p',/∂U,,×∂`p',/∂V,,

Then the generated normal `n' is `n'=`m'/∥`m',∥,

If automatic normal generation is disabled, the corresponding normal map
`GL_MAP2_NORMAL', if enabled, is used to produce a normal.  If neither
automatic normal generation nor a normal map is enabled, no normal is
generated for `glEvalCoord2' commands.")

(define-gl-procedures
  ((glEvalMesh1
     (mode GLenum)
     (i1 GLint)
     (i2 GLint)
     ->
     void)
   (glEvalMesh2
     (mode GLenum)
     (i1 GLint)
     (i2 GLint)
     (j1 GLint)
     (j2 GLint)
     ->
     void))
  "Compute a one- or two-dimensional grid of points or lines.

MODE
     In `glEvalMesh1', specifies whether to compute a one-dimensional
     mesh of points or lines.  Symbolic constants `GL_POINT' and
     `GL_LINE' are accepted.

I1
     I2

     Specify the first and last integer values for grid domain variable
     I .

`glMapGrid' and `glEvalMesh' are used in tandem to efficiently generate
and evaluate a series of evenly-spaced map domain values.  `glEvalMesh'
steps through the integer domain of a one- or two-dimensional grid,
whose range is the domain of the evaluation maps specified by `glMap1'
and `glMap2'.  MODE determines whether the resulting vertices are
connected as points, lines, or filled polygons.

In the one-dimensional case, `glEvalMesh1', the mesh is generated as if
the following code fragment were executed:

where

     
     glBegin( TYPE );
     for ( i = I1; i <= I2; i += 1 )
        glEvalCoord1( i·ΔU+U_1
     
      );
     glEnd(); 

ΔU=(U_2-U_1,)/N

and N , U_1 , and U_2 are the arguments to the most recent `glMapGrid1'
command.  TYPE is `GL_POINTS' if MODE is `GL_POINT', or `GL_LINES' if
MODE is `GL_LINE'.

The one absolute numeric requirement is that if I=N , then the value
computed from I·ΔU+U_1 is exactly U_2 .

In the two-dimensional case, `glEvalMesh2', let .cp ΔU=(U_2-U_1,)/N

ΔV=(V_2-V_1,)/M

where N , U_1 , U_2 , M , V_1 , and V_2 are the arguments to the most
recent `glMapGrid2' command.  Then, if MODE is `GL_FILL', the
`glEvalMesh2' command is equivalent to:



     
     for ( j = J1; j < J2; j += 1 ) {
        glBegin( GL_QUAD_STRIP );
        for ( i = I1; i <= I2; i += 1 ) {
           glEvalCoord2( i·ΔU+U_1,j·ΔV+V_1
     
      );
           glEvalCoord2( i·ΔU+U_1,(j+1,)·ΔV+V_1
     
      );
        }
        glEnd();
     } 

If MODE is `GL_LINE', then a call to `glEvalMesh2' is equivalent to:



     
     for ( j = J1; j <= J2; j += 1 ) {
        glBegin( GL_LINE_STRIP );
        for ( i = I1; i <= I2; i += 1 )
           glEvalCoord2( i·ΔU+U_1,j·ΔV+V_1
     
      );
        glEnd();
     }
     
     for ( i = I1;  i <= I2; i += 1 ) {
        glBegin( GL_LINE_STRIP );
        for ( j = J1; j <= J1; j += 1 )
           glEvalCoord2( i·ΔU+U_1,j·ΔV+V_1
     
      );
        glEnd();
     } 

And finally, if MODE is `GL_POINT', then a call to `glEvalMesh2' is
equivalent to:



     
     glBegin( GL_POINTS );
     for ( j = J1; j <= J2; j += 1 )
        for ( i = I1; i <= I2; i += 1 )
           glEvalCoord2( i·ΔU+U_1,j·ΔV+V_1
     
      );
     glEnd(); 

In all three cases, the only absolute numeric requirements are that if
I=N , then the value computed from I·ΔU+U_1 is exactly U_2 , and if J=M
, then the value computed from J·ΔV+V_1 is exactly V_2 .

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glEvalMesh' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glEvalPoint1 (i GLint) -> void)
   (glEvalPoint2 (i GLint) (j GLint) -> void))
  "Generate and evaluate a single point in a mesh.

I
     Specifies the integer value for grid domain variable I .

J
     Specifies the integer value for grid domain variable J
     (`glEvalPoint2' only).

`glMapGrid' and `glEvalMesh' are used in tandem to efficiently generate
and evaluate a series of evenly spaced map domain values.  `glEvalPoint'
can be used to evaluate a single grid point in the same gridspace that
is traversed by `glEvalMesh'.  Calling `glEvalPoint1' is equivalent to
calling where ΔU=(U_2-U_1,)/N

     
     glEvalCoord1( i·ΔU+U_1
     
      ); 

and N , U_1 , and U_2 are the arguments to the most recent `glMapGrid1'
command.  The one absolute numeric requirement is that if I=N , then the
value computed from I·ΔU+U_1 is exactly U_2 .

In the two-dimensional case, `glEvalPoint2', let

ΔU=(U_2-U_1,)/N ΔV=(V_2-V_1,)/M

where N , U_1 , U_2 , M , V_1 , and V_2 are the arguments to the most
recent `glMapGrid2' command.  Then the `glEvalPoint2' command is
equivalent to calling The only absolute numeric requirements are that if
I=N , then the value computed from I·ΔU+U_1 is exactly U_2 , and if J=M
, then the value computed from J·ΔV+V_1 is exactly V_2 .

     
     glEvalCoord2( i·ΔU+U_1,j·ΔV+V_1
     
      );")

(define-gl-procedures
  ((glFeedbackBuffer
     (size GLsizei)
     (type GLenum)
     (buffer GLfloat-*)
     ->
     void))
  "Controls feedback mode.

SIZE
     Specifies the maximum number of values that can be written into
     BUFFER.

TYPE
     Specifies a symbolic constant that describes the information that
     will be returned for each vertex.  `GL_2D', `GL_3D', `GL_3D_COLOR',
     `GL_3D_COLOR_TEXTURE', and `GL_4D_COLOR_TEXTURE' are accepted.

BUFFER
     Returns the feedback data.

The `glFeedbackBuffer' function controls feedback.  Feedback, like
selection, is a GL mode.  The mode is selected by calling `glRenderMode'
with `GL_FEEDBACK'.  When the GL is in feedback mode, no pixels are
produced by rasterization.  Instead, information about primitives that
would have been rasterized is fed back to the application using the GL.

`glFeedbackBuffer' has three arguments: BUFFER is a pointer to an array
of floating-point values into which feedback information is placed.  SIZE
indicates the size of the array.  TYPE is a symbolic constant describing
the information that is fed back for each vertex.  `glFeedbackBuffer'
must be issued before feedback mode is enabled (by calling
`glRenderMode' with argument `GL_FEEDBACK').  Setting `GL_FEEDBACK'
without establishing the feedback buffer, or calling `glFeedbackBuffer'
while the GL is in feedback mode, is an error.

When `glRenderMode' is called while in feedback mode, it returns the
number of entries placed in the feedback array and resets the feedback
array pointer to the base of the feedback buffer.  The returned value
never exceeds SIZE.  If the feedback data required more room than was
available in BUFFER, `glRenderMode' returns a negative value.  To take
the GL out of feedback mode, call `glRenderMode' with a parameter value
other than `GL_FEEDBACK'.

While in feedback mode, each primitive, bitmap, or pixel rectangle that
would be rasterized generates a block of values that are copied into the
feedback array.  If doing so would cause the number of entries to exceed
the maximum, the block is partially written so as to fill the array (if
there is any room left at all), and an overflow flag is set.  Each block
begins with a code indicating the primitive type, followed by values
that describe the primitive's vertices and associated data.  Entries are
also written for bitmaps and pixel rectangles.  Feedback occurs after
polygon culling and `glPolygonMode' interpretation of polygons has taken
place, so polygons that are culled are not returned in the feedback
buffer.  It can also occur after polygons with more than three edges are
broken up into triangles, if the GL implementation renders polygons by
performing this decomposition.

The `glPassThrough' command can be used to insert a marker into the
feedback buffer.  See `glPassThrough'.

Following is the grammar for the blocks of values written into the
feedback buffer.  Each primitive is indicated with a unique identifying
value followed by some number of vertices.  Polygon entries include an
integer value indicating how many vertices follow.  A vertex is fed back
as some number of floating-point values, as determined by TYPE.  Colors
are fed back as four values in RGBA mode and one value in color index
mode.

feedbackList ← feedbackItem feedbackList | feedbackItem feedbackItem ←
point | lineSegment | polygon | bitmap | pixelRectangle | passThru point
← `GL_POINT_TOKEN' vertex lineSegment ← `GL_LINE_TOKEN' vertex vertex |
`GL_LINE_RESET_TOKEN' vertex vertex polygon ← `GL_POLYGON_TOKEN' n
polySpec polySpec ← polySpec vertex | vertex vertex vertex bitmap ←
`GL_BITMAP_TOKEN' vertex pixelRectangle ← `GL_DRAW_PIXEL_TOKEN' vertex |
`GL_COPY_PIXEL_TOKEN' vertex passThru ← `GL_PASS_THROUGH_TOKEN' value
vertex ← 2d | 3d | 3dColor | 3dColorTexture | 4dColorTexture 2d ← value
value 3d ← value value value 3dColor ← value value value color
3dColorTexture ← value value value color tex 4dColorTexture ← value
value value value color tex color ← rgba | index rgba ← value value
value value index ← value tex ← value value value value

VALUE is a floating-point number, and N is a floating-point integer
giving the number of vertices in the polygon.  `GL_POINT_TOKEN',
`GL_LINE_TOKEN', `GL_LINE_RESET_TOKEN', `GL_POLYGON_TOKEN',
`GL_BITMAP_TOKEN', `GL_DRAW_PIXEL_TOKEN', `GL_COPY_PIXEL_TOKEN' and
`GL_PASS_THROUGH_TOKEN' are symbolic floating-point constants.
`GL_LINE_RESET_TOKEN' is returned whenever the line stipple pattern is
reset.  The data returned as a vertex depends on the feedback TYPE.

The following table gives the correspondence between TYPE and the number
of values per vertex.  K is 1 in color index mode and 4 in RGBA mode.



*Type*
     *Coordinates*, *Color*, *Texture*, *Total Number of Values*

`GL_2D'
     X, Y, , , 2

`GL_3D'
     X, Y, Z, , , 3

`GL_3D_COLOR'
     X, Y, Z, K , , 3+K

`GL_3D_COLOR_TEXTURE'
     X, Y, Z, K , 4 , 7+K

`GL_4D_COLOR_TEXTURE'
     X, Y, Z, W, K , 4 , 8+K

Feedback vertex coordinates are in window coordinates, except W, which
is in clip coordinates.  Feedback colors are lighted, if lighting is
enabled.  Feedback texture coordinates are generated, if texture
coordinate generation is enabled.  They are always transformed by the
texture matrix.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if SIZE is negative.

`GL_INVALID_OPERATION' is generated if `glFeedbackBuffer' is called
while the render mode is `GL_FEEDBACK', or if `glRenderMode' is called
with argument `GL_FEEDBACK' before `glFeedbackBuffer' is called at least
once.

`GL_INVALID_OPERATION' is generated if `glFeedbackBuffer' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glFinish -> void))
  "Block until all GL execution is complete.

`glFinish' does not return until the effects of all previously called GL
commands are complete.  Such effects include all changes to GL state,
all changes to connection state, and all changes to the frame buffer
contents.

`GL_INVALID_OPERATION' is generated if `glFinish' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glFlush -> void))
  "Force execution of GL commands in finite time.

Different GL implementations buffer commands in several different
locations, including network buffers and the graphics accelerator
itself.  `glFlush' empties all of these buffers, causing all issued
commands to be executed as quickly as they are accepted by the actual
rendering engine.  Though this execution may not be completed in any
particular time period, it does complete in finite time.

Because any GL program might be executed over a network, or on an
accelerator that buffers commands, all programs should call `glFlush'
whenever they count on having all of their previously issued commands
completed.  For example, call `glFlush' before waiting for user input
that depends on the generated image.

`GL_INVALID_OPERATION' is generated if `glFlush' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glFogCoordPointer
     (type GLenum)
     (stride GLsizei)
     (pointer GLvoid-*)
     ->
     void))
  "Define an array of fog coordinates.

TYPE
     Specifies the data type of each fog coordinate.  Symbolic constants
     `GL_FLOAT', or `GL_DOUBLE' are accepted.  The initial value is
     `GL_FLOAT'.

STRIDE
     Specifies the byte offset between consecutive fog coordinates.  If
     STRIDE is 0, the array elements are understood to be tightly
     packed.  The initial value is 0.

POINTER
     Specifies a pointer to the first coordinate of the first fog
     coordinate in the array.  The initial value is 0.

`glFogCoordPointer' specifies the location and data format of an array
of fog coordinates to use when rendering.  TYPE specifies the data type
of each fog coordinate, and STRIDE specifies the byte stride from one
fog coordinate to the next, allowing vertices and attributes to be
packed into a single array or stored in separate arrays.

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a fog coordinate array is specified,
POINTER is treated as a byte offset into the buffer object's data store.
Also, the buffer object binding (`GL_ARRAY_BUFFER_BINDING') is saved as
fog coordinate vertex array client-side state
(`GL_FOG_COORD_ARRAY_BUFFER_BINDING').

When a fog coordinate array is specified, TYPE, STRIDE, and POINTER are
saved as client-side state, in addition to the current vertex array
buffer object binding.

To enable and disable the fog coordinate array, call
`glEnableClientState' and `glDisableClientState' with the argument
`GL_FOG_COORD_ARRAY'.  If enabled, the fog coordinate array is used when
`glDrawArrays', `glMultiDrawArrays', `glDrawElements',
`glMultiDrawElements', `glDrawRangeElements', or `glArrayElement' is
called.

`GL_INVALID_ENUM' is generated if TYPE is not either `GL_FLOAT' or
`GL_DOUBLE'.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glFogCoordd (coord GLdouble) -> void)
   (glFogCoordf (coord GLfloat) -> void)
   (glFogCoorddv (coord GLdouble-*) -> void)
   (glFogCoordfv (coord GLfloat-*) -> void))
  "Set the current fog coordinates.

COORD
     Specify the fog distance.

`glFogCoord' specifies the fog coordinate that is associated with each
vertex and the current raster position.  The value specified is
interpolated and used in computing the fog color (see `glFog').")

(define-gl-procedures
  ((glFogf (pname GLenum) (param GLfloat) -> void)
   (glFogi (pname GLenum) (param GLint) -> void)
   (glFogfv
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glFogiv
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Specify fog parameters.

PNAME
     Specifies a single-valued fog parameter.  `GL_FOG_MODE',
     `GL_FOG_DENSITY', `GL_FOG_START', `GL_FOG_END', `GL_FOG_INDEX', and
     `GL_FOG_COORD_SRC' are accepted.

PARAM
     Specifies the value that PNAME will be set to.

Fog is initially disabled.  While enabled, fog affects rasterized
geometry, bitmaps, and pixel blocks, but not buffer clear operations.  To
enable and disable fog, call `glEnable' and `glDisable' with argument
`GL_FOG'.

`glFog' assigns the value or values in PARAMS to the fog parameter
specified by PNAME.  The following values are accepted for PNAME:

`GL_FOG_MODE'
     PARAMS is a single integer or floating-point value that specifies
     the equation to be used to compute the fog blend factor, F .  Three
     symbolic constants are accepted: `GL_LINEAR', `GL_EXP', and
     `GL_EXP2'.  The equations corresponding to these symbolic constants
     are defined below.  The initial fog mode is `GL_EXP'.

`GL_FOG_DENSITY'
     PARAMS is a single integer or floating-point value that specifies
     DENSITY , the fog density used in both exponential fog equations.
     Only nonnegative densities are accepted.  The initial fog density
     is 1.

`GL_FOG_START'
     PARAMS is a single integer or floating-point value that specifies
     START , the near distance used in the linear fog equation.  The
     initial near distance is 0.

`GL_FOG_END'
     PARAMS is a single integer or floating-point value that specifies
     END , the far distance used in the linear fog equation.  The
     initial far distance is 1.

`GL_FOG_INDEX'
     PARAMS is a single integer or floating-point value that specifies
     I_F , the fog color index.  The initial fog index is 0.

`GL_FOG_COLOR'
     PARAMS contains four integer or floating-point values that specify
     C_F , the fog color.  Integer values are mapped linearly such that
     the most positive representable value maps to 1.0, and the most
     negative representable value maps to -1.0 .  Floating-point values
     are mapped directly.  After conversion, all color components are
     clamped to the range [0,1] .  The initial fog color is (0, 0, 0,
     0).

`GL_FOG_COORD_SRC'
     PARAMS contains either of the following symbolic constants:
     `GL_FOG_COORD' or `GL_FRAGMENT_DEPTH'.  `GL_FOG_COORD' specifies
     that the current fog coordinate should be used as distance value in
     the fog color computation.  `GL_FRAGMENT_DEPTH' specifies that the
     current fragment depth should be used as distance value in the fog
     computation.

Fog blends a fog color with each rasterized pixel fragment's
post-texturing color using a blending factor F .  Factor F is computed
in one of three ways, depending on the fog mode.  Let C be either the
distance in eye coordinate from the origin (in the case that the
`GL_FOG_COORD_SRC' is `GL_FRAGMENT_DEPTH') or the current fog coordinate
(in the case that `GL_FOG_COORD_SRC' is `GL_FOG_COORD').  The equation
for `GL_LINEAR' fog is F=END-C,/END-START,

The equation for `GL_EXP' fog is F=E^-(DENSITY·C,),

The equation for `GL_EXP2' fog is F=E^-(DENSITY·C,),^2

Regardless of the fog mode, F is clamped to the range [0,1] after it is
computed.  Then, if the GL is in RGBA color mode, the fragment's red,
green, and blue colors, represented by C_R , are replaced by

C_R,^″=F×C_R+(1-F,)×C_F

Fog does not affect a fragment's alpha component.

In color index mode, the fragment's color index I_R is replaced by

I_R,^″=I_R+(1-F,)×I_F



`GL_INVALID_ENUM' is generated if PNAME is not an accepted value, or if
PNAME is `GL_FOG_MODE' and PARAMS is not an accepted value.

`GL_INVALID_VALUE' is generated if PNAME is `GL_FOG_DENSITY' and PARAMS
is negative.

`GL_INVALID_OPERATION' is generated if `glFog' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glFrontFace (mode GLenum) -> void))
  "Define front- and back-facing polygons.

MODE
     Specifies the orientation of front-facing polygons.  `GL_CW' and
     `GL_CCW' are accepted.  The initial value is `GL_CCW'.

In a scene composed entirely of opaque closed surfaces, back-facing
polygons are never visible.  Eliminating these invisible polygons has
the obvious benefit of speeding up the rendering of the image.  To
enable and disable elimination of back-facing polygons, call `glEnable'
and `glDisable' with argument `GL_CULL_FACE'.

The projection of a polygon to window coordinates is said to have
clockwise winding if an imaginary object following the path from its
first vertex, its second vertex, and so on, to its last vertex, and
finally back to its first vertex, moves in a clockwise direction about
the interior of the polygon.  The polygon's winding is said to be
counterclockwise if the imaginary object following the same path moves
in a counterclockwise direction about the interior of the polygon.
`glFrontFace' specifies whether polygons with clockwise winding in
window coordinates, or counterclockwise winding in window coordinates,
are taken to be front-facing.  Passing `GL_CCW' to MODE selects
counterclockwise polygons as front-facing; `GL_CW' selects clockwise
polygons as front-facing.  By default, counterclockwise polygons are
taken to be front-facing.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glFrontFace' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glFrustum
     (left GLdouble)
     (right GLdouble)
     (bottom GLdouble)
     (top GLdouble)
     (nearVal GLdouble)
     (farVal GLdouble)
     ->
     void))
  "Multiply the current matrix by a perspective matrix.

LEFT
     RIGHT

     Specify the coordinates for the left and right vertical clipping
     planes.

BOTTOM
     TOP

     Specify the coordinates for the bottom and top horizontal clipping
     planes.

NEARVAL
     FARVAL

     Specify the distances to the near and far depth clipping planes.
     Both distances must be positive.

`glFrustum' describes a perspective matrix that produces a perspective
projection.  The current matrix (see `glMatrixMode') is multiplied by
this matrix and the result replaces the current matrix, as if
`glMultMatrix' were called with the following matrix as its argument:



[(2\u2062NEARVAL,/RIGHT-LEFT,, 0 A 0), (0 2\u2062NEARVAL,/TOP-BOTTOM,, B 0), (0 0
C D), (0 0 -1 0),]

A=RIGHT+LEFT,/RIGHT-LEFT,

B=TOP+BOTTOM,/TOP-BOTTOM,

C=-FARVAL+NEARVAL,/FARVAL-NEARVAL,,

D=-2\u2062FARVAL\u2062NEARVAL,/FARVAL-NEARVAL,,



Typically, the matrix mode is `GL_PROJECTION', and (LEFT,BOTTOM-NEARVAL)
and (RIGHT,TOP-NEARVAL) specify the points on the near clipping plane
that are mapped to the lower left and upper right corners of the window,
assuming that the eye is located at (0, 0, 0).  -FARVAL specifies the
location of the far clipping plane.  Both NEARVAL and FARVAL must be
positive.

Use `glPushMatrix' and `glPopMatrix' to save and restore the current
matrix stack.

`GL_INVALID_VALUE' is generated if NEARVAL or FARVAL is not positive, or
if LEFT = RIGHT, or BOTTOM = TOP, or NEAR = FAR.

`GL_INVALID_OPERATION' is generated if `glFrustum' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGenBuffers
     (n GLsizei)
     (buffers GLuint-*)
     ->
     void))
  "Generate buffer object names.

N
     Specifies the number of buffer object names to be generated.

BUFFERS
     Specifies an array in which the generated buffer object names are
     stored.

`glGenBuffers' returns N buffer object names in BUFFERS.  There is no
guarantee that the names form a contiguous set of integers; however, it
is guaranteed that none of the returned names was in use immediately
before the call to `glGenBuffers'.

Buffer object names returned by a call to `glGenBuffers' are not
returned by subsequent calls, unless they are first deleted with
`glDeleteBuffers'.

No buffer objects are associated with the returned buffer object names
until they are first bound by calling `glBindBuffer'.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_OPERATION' is generated if `glGenBuffers' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGenLists (range GLsizei) -> GLuint))
  "Generate a contiguous set of empty display lists.

RANGE
     Specifies the number of contiguous empty display lists to be
     generated.

`glGenLists' has one argument, RANGE.  It returns an integer N such that
RANGE contiguous empty display lists, named N , N+1 , ... , N+RANGE-1 ,
are created.  If RANGE is 0, if there is no group of RANGE contiguous
names available, or if any error is generated, no display lists are
generated, and 0 is returned.

`GL_INVALID_VALUE' is generated if RANGE is negative.

`GL_INVALID_OPERATION' is generated if `glGenLists' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGenQueries (n GLsizei) (ids GLuint-*) -> void))
  "Generate query object names.

N
     Specifies the number of query object names to be generated.

IDS
     Specifies an array in which the generated query object names are
     stored.

`glGenQueries' returns N query object names in IDS.  There is no
guarantee that the names form a contiguous set of integers; however, it
is guaranteed that none of the returned names was in use immediately
before the call to `glGenQueries'.

Query object names returned by a call to `glGenQueries' are not returned
by subsequent calls, unless they are first deleted with
`glDeleteQueries'.

No query objects are associated with the returned query object names
until they are first used by calling `glBeginQuery'.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_OPERATION' is generated if `glGenQueries' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGenTextures
     (n GLsizei)
     (textures GLuint-*)
     ->
     void))
  "Generate texture names.

N
     Specifies the number of texture names to be generated.

TEXTURES
     Specifies an array in which the generated texture names are stored.

`glGenTextures' returns N texture names in TEXTURES.  There is no
guarantee that the names form a contiguous set of integers; however, it
is guaranteed that none of the returned names was in use immediately
before the call to `glGenTextures'.

The generated textures have no dimensionality; they assume the
dimensionality of the texture target to which they are first bound (see
`glBindTexture').

Texture names returned by a call to `glGenTextures' are not returned by
subsequent calls, unless they are first deleted with `glDeleteTextures'.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_OPERATION' is generated if `glGenTextures' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetActiveAttrib
     (program GLuint)
     (index GLuint)
     (bufSize GLsizei)
     (length GLsizei-*)
     (size GLint-*)
     (type GLenum-*)
     (name GLchar-*)
     ->
     void))
  "Returns information about an active attribute variable for the specified
program object.

PROGRAM
     Specifies the program object to be queried.

INDEX
     Specifies the index of the attribute variable to be queried.

BUFSIZE
     Specifies the maximum number of characters OpenGL is allowed to
     write in the character buffer indicated by NAME.

LENGTH
     Returns the number of characters actually written by OpenGL in the
     string indicated by NAME (excluding the null terminator) if a value
     other than `NULL' is passed.

SIZE
     Returns the size of the attribute variable.

TYPE
     Returns the data type of the attribute variable.

NAME
     Returns a null terminated string containing the name of the
     attribute variable.

`glGetActiveAttrib' returns information about an active attribute
variable in the program object specified by PROGRAM.  The number of
active attributes can be obtained by calling `glGetProgram' with the
value `GL_ACTIVE_ATTRIBUTES'.  A value of 0 for INDEX selects the first
active attribute variable.  Permissible values for INDEX range from 0 to
the number of active attribute variables minus 1.

A vertex shader may use either built-in attribute variables,
user-defined attribute variables, or both.  Built-in attribute variables
have a prefix of \"gl_\" and reference conventional OpenGL vertex
attribtes (e.g., GL_VERTEX, GL_NORMAL, etc., see the OpenGL Shading
Language specification for a complete list.) User-defined attribute
variables have arbitrary names and obtain their values through numbered
generic vertex attributes.  An attribute variable (either built-in or
user-defined) is considered active if it is determined during the link
operation that it may be accessed during program execution.  Therefore,
PROGRAM should have previously been the target of a call to
`glLinkProgram', but it is not necessary for it to have been linked
successfully.

The size of the character buffer required to store the longest attribute
variable name in PROGRAM can be obtained by calling `glGetProgram' with
the value `GL_ACTIVE_ATTRIBUTE_MAX_LENGTH'.  This value should be used
to allocate a buffer of sufficient size to store the returned attribute
name.  The size of this character buffer is passed in BUFSIZE, and a
pointer to this character buffer is passed in NAME.

`glGetActiveAttrib' returns the name of the attribute variable indicated
by INDEX, storing it in the character buffer specified by NAME.  The
string returned will be null terminated.  The actual number of
characters written into this buffer is returned in LENGTH, and this
count does not include the null termination character.  If the length of
the returned string is not required, a value of `NULL' can be passed in
the LENGTH argument.

The TYPE argument will return a pointer to the attribute variable's data
type.  The symbolic constants `GL_FLOAT', `GL_FLOAT_VEC2',
`GL_FLOAT_VEC3', `GL_FLOAT_VEC4', `GL_FLOAT_MAT2', `GL_FLOAT_MAT3',
`GL_FLOAT_MAT4', `GL_FLOAT_MAT2x3', `GL_FLOAT_MAT2x4',
`GL_FLOAT_MAT3x2', `GL_FLOAT_MAT3x4', `GL_FLOAT_MAT4x2', or
`GL_FLOAT_MAT4x3' may be returned.  The SIZE argument will return the
size of the attribute, in units of the type returned in TYPE.

The list of active attribute variables may include both built-in
attribute variables (which begin with the prefix \"gl_\") as well as
user-defined attribute variable names.

This function will return as much information as it can about the
specified active attribute variable.  If no information is available,
LENGTH will be 0, and NAME will be an empty string.  This situation
could occur if this function is called after a link operation that
failed.  If an error occurs, the return values LENGTH, SIZE, TYPE, and
NAME will be unmodified.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to the
number of active attribute variables in PROGRAM.

`GL_INVALID_OPERATION' is generated if `glGetActiveAttrib' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.

`GL_INVALID_VALUE' is generated if BUFSIZE is less than 0.")

(define-gl-procedures
  ((glGetActiveUniform
     (program GLuint)
     (index GLuint)
     (bufSize GLsizei)
     (length GLsizei-*)
     (size GLint-*)
     (type GLenum-*)
     (name GLchar-*)
     ->
     void))
  "Returns information about an active uniform variable for the specified
program object.

PROGRAM
     Specifies the program object to be queried.

INDEX
     Specifies the index of the uniform variable to be queried.

BUFSIZE
     Specifies the maximum number of characters OpenGL is allowed to
     write in the character buffer indicated by NAME.

LENGTH
     Returns the number of characters actually written by OpenGL in the
     string indicated by NAME (excluding the null terminator) if a value
     other than `NULL' is passed.

SIZE
     Returns the size of the uniform variable.

TYPE
     Returns the data type of the uniform variable.

NAME
     Returns a null terminated string containing the name of the uniform
     variable.

`glGetActiveUniform' returns information about an active uniform
variable in the program object specified by PROGRAM.  The number of
active uniform variables can be obtained by calling `glGetProgram' with
the value `GL_ACTIVE_UNIFORMS'.  A value of 0 for INDEX selects the
first active uniform variable.  Permissible values for INDEX range from
0 to the number of active uniform variables minus 1.

Shaders may use either built-in uniform variables, user-defined uniform
variables, or both.  Built-in uniform variables have a prefix of \"gl_\"
and reference existing OpenGL state or values derived from such state
(e.g., GL_FOG, GL_MODELVIEWMATRIX, etc., see the OpenGL Shading Language
specification for a complete list.) User-defined uniform variables have
arbitrary names and obtain their values from the application through
calls to `glUniform'.  A uniform variable (either built-in or
user-defined) is considered active if it is determined during the link
operation that it may be accessed during program execution.  Therefore,
PROGRAM should have previously been the target of a call to
`glLinkProgram', but it is not necessary for it to have been linked
successfully.

The size of the character buffer required to store the longest uniform
variable name in PROGRAM can be obtained by calling `glGetProgram' with
the value `GL_ACTIVE_UNIFORM_MAX_LENGTH'.  This value should be used to
allocate a buffer of sufficient size to store the returned uniform
variable name.  The size of this character buffer is passed in BUFSIZE,
and a pointer to this character buffer is passed in NAME.

`glGetActiveUniform' returns the name of the uniform variable indicated
by INDEX, storing it in the character buffer specified by NAME.  The
string returned will be null terminated.  The actual number of
characters written into this buffer is returned in LENGTH, and this
count does not include the null termination character.  If the length of
the returned string is not required, a value of `NULL' can be passed in
the LENGTH argument.

The TYPE argument will return a pointer to the uniform variable's data
type.  The symbolic constants `GL_FLOAT', `GL_FLOAT_VEC2',
`GL_FLOAT_VEC3', `GL_FLOAT_VEC4', `GL_INT', `GL_INT_VEC2',
`GL_INT_VEC3', `GL_INT_VEC4', `GL_BOOL', `GL_BOOL_VEC2', `GL_BOOL_VEC3',
`GL_BOOL_VEC4', `GL_FLOAT_MAT2', `GL_FLOAT_MAT3', `GL_FLOAT_MAT4',
`GL_FLOAT_MAT2x3', `GL_FLOAT_MAT2x4', `GL_FLOAT_MAT3x2',
`GL_FLOAT_MAT3x4', `GL_FLOAT_MAT4x2', `GL_FLOAT_MAT4x3',
`GL_SAMPLER_1D', `GL_SAMPLER_2D', `GL_SAMPLER_3D', `GL_SAMPLER_CUBE',
`GL_SAMPLER_1D_SHADOW', or `GL_SAMPLER_2D_SHADOW' may be returned.

If one or more elements of an array are active, the name of the array is
returned in NAME, the type is returned in TYPE, and the SIZE parameter
returns the highest array element index used, plus one, as determined by
the compiler and/or linker.  Only one active uniform variable will be
reported for a uniform array.

Uniform variables that are declared as structures or arrays of
structures will not be returned directly by this function.  Instead,
each of these uniform variables will be reduced to its fundamental
components containing the \".\" and \"[]\" operators such that each of the
names is valid as an argument to `glGetUniformLocation'.  Each of these
reduced uniform variables is counted as one active uniform variable and
is assigned an index.  A valid name cannot be a structure, an array of
structures, or a subcomponent of a vector or matrix.

The size of the uniform variable will be returned in SIZE.  Uniform
variables other than arrays will have a size of 1.  Structures and
arrays of structures will be reduced as described earlier, such that
each of the names returned will be a data type in the earlier list.  If
this reduction results in an array, the size returned will be as
described for uniform arrays; otherwise, the size returned will be 1.

The list of active uniform variables may include both built-in uniform
variables (which begin with the prefix \"gl_\") as well as user-defined
uniform variable names.

This function will return as much information as it can about the
specified active uniform variable.  If no information is available,
LENGTH will be 0, and NAME will be an empty string.  This situation
could occur if this function is called after a link operation that
failed.  If an error occurs, the return values LENGTH, SIZE, TYPE, and
NAME will be unmodified.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to the
number of active uniform variables in PROGRAM.

`GL_INVALID_OPERATION' is generated if `glGetActiveUniform' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.

`GL_INVALID_VALUE' is generated if BUFSIZE is less than 0.")

(define-gl-procedures
  ((glGetAttachedShaders
     (program GLuint)
     (maxCount GLsizei)
     (count GLsizei-*)
     (shaders GLuint-*)
     ->
     void))
  "Returns the handles of the shader objects attached to a program object.

PROGRAM
     Specifies the program object to be queried.

MAXCOUNT
     Specifies the size of the array for storing the returned object
     names.

COUNT
     Returns the number of names actually returned in OBJECTS.

SHADERS
     Specifies an array that is used to return the names of attached
     shader objects.

`glGetAttachedShaders' returns the names of the shader objects attached
to PROGRAM.  The names of shader objects that are attached to PROGRAM
will be returned in SHADERS.  The actual number of shader names written
into SHADERS is returned in COUNT.  If no shader objects are attached to
PROGRAM, COUNT is set to 0.  The maximum number of shader names that may
be returned in SHADERS is specified by MAXCOUNT.

If the number of names actually returned is not required (for instance,
if it has just been obtained by calling `glGetProgram'), a value of
`NULL' may be passed for count.  If no shader objects are attached to
PROGRAM, a value of 0 will be returned in COUNT.  The actual number of
attached shaders can be obtained by calling `glGetProgram' with the
value `GL_ATTACHED_SHADERS'.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_VALUE' is generated if MAXCOUNT is less than 0.

`GL_INVALID_OPERATION' is generated if `glGetAttachedShaders' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetAttribLocation
     (program GLuint)
     (name const-GLchar-*)
     ->
     GLint))
  "Returns the location of an attribute variable.

PROGRAM
     Specifies the program object to be queried.

NAME
     Points to a null terminated string containing the name of the
     attribute variable whose location is to be queried.

`glGetAttribLocation' queries the previously linked program object
specified by PROGRAM for the attribute variable specified by NAME and
returns the index of the generic vertex attribute that is bound to that
attribute variable.  If NAME is a matrix attribute variable, the index
of the first column of the matrix is returned.  If the named attribute
variable is not an active attribute in the specified program object or
if NAME starts with the reserved prefix \"gl_\", a value of -1 is
returned.

The association between an attribute variable name and a generic
attribute index can be specified at any time by calling
`glBindAttribLocation'.  Attribute bindings do not go into effect until
`glLinkProgram' is called.  After a program object has been linked
successfully, the index values for attribute variables remain fixed
until the next link command occurs.  The attribute values can only be
queried after a link if the link was successful.  `glGetAttribLocation'
returns the binding that actually went into effect the last time
`glLinkProgram' was called for the specified program object.  Attribute
bindings that have been specified since the last link operation are not
returned by `glGetAttribLocation'.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a value generated
by OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if PROGRAM has not been successfully
linked.

`GL_INVALID_OPERATION' is generated if `glGetAttribLocation' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetBufferParameteriv
     (target GLenum)
     (value GLenum)
     (data GLint-*)
     ->
     void))
  "Return parameters of a buffer object.

TARGET
     Specifies the target buffer object.  The symbolic constant must be
     `GL_ARRAY_BUFFER', `GL_ELEMENT_ARRAY_BUFFER',
     `GL_PIXEL_PACK_BUFFER', or `GL_PIXEL_UNPACK_BUFFER'.

VALUE
     Specifies the symbolic name of a buffer object parameter.  Accepted
     values are `GL_BUFFER_ACCESS', `GL_BUFFER_MAPPED',
     `GL_BUFFER_SIZE', or `GL_BUFFER_USAGE'.

DATA
     Returns the requested parameter.

`glGetBufferParameteriv' returns in DATA a selected parameter of the
buffer object specified by TARGET.

VALUE names a specific buffer object parameter, as follows:

`GL_BUFFER_ACCESS'
     PARAMS returns the access policy set while mapping the buffer
     object.  The initial value is `GL_READ_WRITE'.

`GL_BUFFER_MAPPED'
     PARAMS returns a flag indicating whether the buffer object is
     currently mapped.  The initial value is `GL_FALSE'.

`GL_BUFFER_SIZE'
     PARAMS returns the size of the buffer object, measured in bytes.
     The initial value is 0.

`GL_BUFFER_USAGE'
     PARAMS returns the buffer object's usage pattern.  The initial
     value is `GL_STATIC_DRAW'.

`GL_INVALID_ENUM' is generated if TARGET or VALUE is not an accepted
value.

`GL_INVALID_OPERATION' is generated if the reserved buffer object name 0
is bound to TARGET.

`GL_INVALID_OPERATION' is generated if `glGetBufferParameteriv' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetBufferPointerv
     (target GLenum)
     (pname GLenum)
     (params GLvoid-**)
     ->
     void))
  "Return the pointer to a mapped buffer object's data store.

TARGET
     Specifies the target buffer object.  The symbolic constant must be
     `GL_ARRAY_BUFFER', `GL_ELEMENT_ARRAY_BUFFER',
     `GL_PIXEL_PACK_BUFFER', or `GL_PIXEL_UNPACK_BUFFER'.

PNAME
     Specifies the pointer to be returned.  The symbolic constant must
     be `GL_BUFFER_MAP_POINTER'.

PARAMS
     Returns the pointer value specified by PNAME.

`glGetBufferPointerv' returns pointer information.  PNAME is a symbolic
constant indicating the pointer to be returned, which must be
`GL_BUFFER_MAP_POINTER', the pointer to which the buffer object's data
store is mapped.  If the data store is not currently mapped, `NULL' is
returned.  PARAMS is a pointer to a location in which to place the
returned pointer value.

`GL_INVALID_ENUM' is generated if TARGET or PNAME is not an accepted
value.

`GL_INVALID_OPERATION' is generated if the reserved buffer object name 0
is bound to TARGET.

`GL_INVALID_OPERATION' is generated if `glGetBufferPointerv' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetBufferSubData
     (target GLenum)
     (offset GLintptr)
     (size GLsizeiptr)
     (data GLvoid-*)
     ->
     void))
  "Returns a subset of a buffer object's data store.

TARGET
     Specifies the target buffer object.  The symbolic constant must be
     `GL_ARRAY_BUFFER', `GL_ELEMENT_ARRAY_BUFFER',
     `GL_PIXEL_PACK_BUFFER', or `GL_PIXEL_UNPACK_BUFFER'.

OFFSET
     Specifies the offset into the buffer object's data store from which
     data will be returned, measured in bytes.

SIZE
     Specifies the size in bytes of the data store region being
     returned.

DATA
     Specifies a pointer to the location where buffer object data is
     returned.

`glGetBufferSubData' returns some or all of the data from the buffer
object currently bound to TARGET.  Data starting at byte offset OFFSET
and extending for SIZE bytes is copied from the data store to the memory
pointed to by DATA.  An error is thrown if the buffer object is
currently mapped, or if OFFSET and SIZE together define a range beyond
the bounds of the buffer object's data store.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_ARRAY_BUFFER',
`GL_ELEMENT_ARRAY_BUFFER', `GL_PIXEL_PACK_BUFFER', or
`GL_PIXEL_UNPACK_BUFFER'.

`GL_INVALID_VALUE' is generated if OFFSET or SIZE is negative, or if
together they define a region of memory that extends beyond the buffer
object's allocated data store.

`GL_INVALID_OPERATION' is generated if the reserved buffer object name 0
is bound to TARGET.

`GL_INVALID_OPERATION' is generated if the buffer object being queried
is mapped.

`GL_INVALID_OPERATION' is generated if `glGetBufferSubData' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetClipPlane
     (plane GLenum)
     (equation GLdouble-*)
     ->
     void))
  "Return the coefficients of the specified clipping plane.

PLANE
     Specifies a clipping plane.  The number of clipping planes depends
     on the implementation, but at least six clipping planes are
     supported.  They are identified by symbolic names of the form
     `GL_CLIP_PLANE' I where i ranges from 0 to the value of
     `GL_MAX_CLIP_PLANES' - 1.

EQUATION
     Returns four double-precision values that are the coefficients of
     the plane equation of PLANE in eye coordinates.  The initial value
     is (0, 0, 0, 0).

`glGetClipPlane' returns in EQUATION the four coefficients of the plane
equation for PLANE.

`GL_INVALID_ENUM' is generated if PLANE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glGetClipPlane' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetColorTableParameterfv
     (target GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetColorTableParameteriv
     (target GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Get color lookup table parameters.

TARGET
     The target color table.  Must be `GL_COLOR_TABLE',
     `GL_POST_CONVOLUTION_COLOR_TABLE',
     `GL_POST_COLOR_MATRIX_COLOR_TABLE', `GL_PROXY_COLOR_TABLE',
     `GL_PROXY_POST_CONVOLUTION_COLOR_TABLE', or
     `GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE'.

PNAME
     The symbolic name of a color lookup table parameter.  Must be one
     of `GL_COLOR_TABLE_BIAS', `GL_COLOR_TABLE_SCALE',
     `GL_COLOR_TABLE_FORMAT', `GL_COLOR_TABLE_WIDTH',
     `GL_COLOR_TABLE_RED_SIZE', `GL_COLOR_TABLE_GREEN_SIZE',
     `GL_COLOR_TABLE_BLUE_SIZE', `GL_COLOR_TABLE_ALPHA_SIZE',
     `GL_COLOR_TABLE_LUMINANCE_SIZE', or
     `GL_COLOR_TABLE_INTENSITY_SIZE'.

PARAMS
     A pointer to an array where the values of the parameter will be
     stored.

Returns parameters specific to color table TARGET.

When PNAME is set to `GL_COLOR_TABLE_SCALE' or `GL_COLOR_TABLE_BIAS',
`glGetColorTableParameter' returns the color table scale or bias
parameters for the table specified by TARGET.  For these queries, TARGET
must be set to `GL_COLOR_TABLE', `GL_POST_CONVOLUTION_COLOR_TABLE', or
`GL_POST_COLOR_MATRIX_COLOR_TABLE' and PARAMS points to an array of four
elements, which receive the scale or bias factors for red, green, blue,
and alpha, in that order.

`glGetColorTableParameter' can also be used to retrieve the format and
size parameters for a color table.  For these queries, set TARGET to
either the color table target or the proxy color table target.  The
format and size parameters are set by `glColorTable'.

The following table lists the format and size parameters that may be
queried.  For each symbolic constant listed below for PNAME, PARAMS must
point to an array of the given length and receive the values indicated.



*Parameter*
     *N*, *Meaning*

`GL_COLOR_TABLE_FORMAT'
     1 , Internal format (e.g., `GL_RGBA')

`GL_COLOR_TABLE_WIDTH'
     1 , Number of elements in table

`GL_COLOR_TABLE_RED_SIZE'
     1 , Size of red component, in bits

`GL_COLOR_TABLE_GREEN_SIZE'
     1 , Size of green component

`GL_COLOR_TABLE_BLUE_SIZE'
     1 , Size of blue component

`GL_COLOR_TABLE_ALPHA_SIZE'
     1 , Size of alpha component

`GL_COLOR_TABLE_LUMINANCE_SIZE'
     1 , Size of luminance component

`GL_COLOR_TABLE_INTENSITY_SIZE'
     1 , Size of intensity component



`GL_INVALID_ENUM' is generated if TARGET or PNAME is not an acceptable
value.

`GL_INVALID_OPERATION' is generated if `glGetColorTableParameter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetColorTable
     (target GLenum)
     (format GLenum)
     (type GLenum)
     (table GLvoid-*)
     ->
     void))
  "Retrieve contents of a color lookup table.

TARGET
     Must be `GL_COLOR_TABLE', `GL_POST_CONVOLUTION_COLOR_TABLE', or
     `GL_POST_COLOR_MATRIX_COLOR_TABLE'.

FORMAT
     The format of the pixel data in TABLE.  The possible values are
     `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_LUMINANCE',
     `GL_LUMINANCE_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', and `GL_BGRA'.

TYPE
     The type of the pixel data in TABLE.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

TABLE
     Pointer to a one-dimensional array of pixel data containing the
     contents of the color table.

`glGetColorTable' returns in TABLE the contents of the color table
specified by TARGET.  No pixel transfer operations are performed, but
pixel storage modes that are applicable to `glReadPixels' are performed.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a histogram table is requested, TABLE
is treated as a byte offset into the buffer object's data store.

Color components that are requested in the specified FORMAT, but which
are not included in the internal format of the color lookup table, are
returned as zero.  The assignments of internal color components to the
components requested by FORMAT are

*Internal Component*
     *Resulting Component*

Red
     Red

Green
     Green

Blue
     Blue

Alpha
     Alpha

Luminance
     Red

Intensity
     Red



`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and TABLE is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glGetColorTable' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetCompressedTexImage
     (target GLenum)
     (lod GLint)
     (img GLvoid-*)
     ->
     void))
  "Return a compressed texture image.

TARGET
     Specifies which texture is to be obtained.  `GL_TEXTURE_1D',
     `GL_TEXTURE_2D', and
     `GL_TEXTURE_3D'`GL_TEXTURE_CUBE_MAP_POSITIVE_X',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_X', `GL_TEXTURE_CUBE_MAP_POSITIVE_Y',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y', `GL_TEXTURE_CUBE_MAP_POSITIVE_Z',
     and `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z' are accepted.

LOD
     Specifies the level-of-detail number of the desired image.  Level 0
     is the base image level.  Level N is the N th mipmap reduction
     image.

IMG
     Returns the compressed texture image.

`glGetCompressedTexImage' returns the compressed texture image
associated with TARGET and LOD into IMG.  IMG should be an array of
`GL_TEXTURE_COMPRESSED_IMAGE_SIZE' bytes.  TARGET specifies whether the
desired texture image was one specified by `glTexImage1D'
(`GL_TEXTURE_1D'), `glTexImage2D' (`GL_TEXTURE_2D' or any of
`GL_TEXTURE_CUBE_MAP_*'), or `glTexImage3D' (`GL_TEXTURE_3D').  LOD
specifies the level-of-detail number of the desired image.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a texture image is requested, IMG is
treated as a byte offset into the buffer object's data store.

To minimize errors, first verify that the texture is compressed by
calling `glGetTexLevelParameter' with argument `GL_TEXTURE_COMPRESSED'.
If the texture is compressed, then determine the amount of memory
required to store the compressed texture by calling
`glGetTexLevelParameter' with argument
`GL_TEXTURE_COMPRESSED_IMAGE_SIZE'.  Finally, retrieve the internal
format of the texture by calling `glGetTexLevelParameter' with argument
`GL_TEXTURE_INTERNAL_FORMAT'.  To store the texture for later use,
associate the internal format and size with the retrieved texture image.
These data can be used by the respective texture or subtexture loading
routine used for loading TARGET textures.

`GL_INVALID_VALUE' is generated if LOD is less than zero or greater than
the maximum number of LODs permitted by the implementation.

`GL_INVALID_OPERATION' is generated if `glGetCompressedTexImage' is used
to retrieve a texture that is in an uncompressed internal format.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if `glGetCompressedTexImage' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetConvolutionFilter
     (target GLenum)
     (format GLenum)
     (type GLenum)
     (image GLvoid-*)
     ->
     void))
  "Get current 1D or 2D convolution filter kernel.

TARGET
     The filter to be retrieved.  Must be one of `GL_CONVOLUTION_1D' or
     `GL_CONVOLUTION_2D'.

FORMAT
     Format of the output image.  Must be one of `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', or `GL_LUMINANCE_ALPHA'.

TYPE
     Data type of components in the output image.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

IMAGE
     Pointer to storage for the output image.

`glGetConvolutionFilter' returns the current 1D or 2D convolution filter
kernel as an image.  The one- or two-dimensional image is placed in
IMAGE according to the specifications in FORMAT and TYPE.  No pixel
transfer operations are performed on this image, but the relevant pixel
storage modes are applied.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a convolution filter is requested,
IMAGE is treated as a byte offset into the buffer object's data store.

Color components that are present in FORMAT but not included in the
internal format of the filter are returned as zero.  The assignments of
internal color components to the components of FORMAT are as follows.

*Internal Component*
     *Resulting Component*

Red
     Red

Green
     Green

Blue
     Blue

Alpha
     Alpha

Luminance
     Red

Intensity
     Red



`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and IMAGE is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glGetConvolutionFilter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetConvolutionParameterfv
     (target GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetConvolutionParameteriv
     (target GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Get convolution parameters.

TARGET
     The filter whose parameters are to be retrieved.  Must be one of
     `GL_CONVOLUTION_1D', `GL_CONVOLUTION_2D', or `GL_SEPARABLE_2D'.

PNAME
     The parameter to be retrieved.  Must be one of
     `GL_CONVOLUTION_BORDER_MODE', `GL_CONVOLUTION_BORDER_COLOR',
     `GL_CONVOLUTION_FILTER_SCALE', `GL_CONVOLUTION_FILTER_BIAS',
     `GL_CONVOLUTION_FORMAT', `GL_CONVOLUTION_WIDTH',
     `GL_CONVOLUTION_HEIGHT', `GL_MAX_CONVOLUTION_WIDTH', or
     `GL_MAX_CONVOLUTION_HEIGHT'.

PARAMS
     Pointer to storage for the parameters to be retrieved.

`glGetConvolutionParameter' retrieves convolution parameters.  TARGET
determines which convolution filter is queried.  PNAME determines which
parameter is returned:

`GL_CONVOLUTION_BORDER_MODE'


     The convolution border mode.  See `glConvolutionParameter' for a
     list of border modes.

`GL_CONVOLUTION_BORDER_COLOR'


     The current convolution border color.  PARAMS must be a pointer to
     an array of four elements, which will receive the red, green, blue,
     and alpha border colors.

`GL_CONVOLUTION_FILTER_SCALE'


     The current filter scale factors.  PARAMS must be a pointer to an
     array of four elements, which will receive the red, green, blue,
     and alpha filter scale factors in that order.

`GL_CONVOLUTION_FILTER_BIAS'


     The current filter bias factors.  PARAMS must be a pointer to an
     array of four elements, which will receive the red, green, blue,
     and alpha filter bias terms in that order.

`GL_CONVOLUTION_FORMAT'


     The current internal format.  See `glConvolutionFilter1D',
     `glConvolutionFilter2D', and `glSeparableFilter2D' for lists of
     allowable formats.

`GL_CONVOLUTION_WIDTH'


     The current filter image width.

`GL_CONVOLUTION_HEIGHT'


     The current filter image height.

`GL_MAX_CONVOLUTION_WIDTH'


     The maximum acceptable filter image width.

`GL_MAX_CONVOLUTION_HEIGHT'


     The maximum acceptable filter image height.

`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if PNAME is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TARGET is `GL_CONVOLUTION_1D' and
PNAME is `GL_CONVOLUTION_HEIGHT' or `GL_MAX_CONVOLUTION_HEIGHT'.

`GL_INVALID_OPERATION' is generated if `glGetConvolutionParameter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetError -> GLenum))
  "Return error information.

`glGetError' returns the value of the error flag.  Each detectable error
is assigned a numeric code and symbolic name.  When an error occurs, the
error flag is set to the appropriate error code value.  No other errors
are recorded until `glGetError' is called, the error code is returned,
and the flag is reset to `GL_NO_ERROR'.  If a call to `glGetError'
returns `GL_NO_ERROR', there has been no detectable error since the last
call to `glGetError', or since the GL was initialized.

To allow for distributed implementations, there may be several error
flags.  If any single error flag has recorded an error, the value of
that flag is returned and that flag is reset to `GL_NO_ERROR' when
`glGetError' is called.  If more than one flag has recorded an error,
`glGetError' returns and clears an arbitrary error flag value.  Thus,
`glGetError' should always be called in a loop, until it returns
`GL_NO_ERROR', if all error flags are to be reset.

Initially, all error flags are set to `GL_NO_ERROR'.

The following errors are currently defined:

`GL_NO_ERROR'
     No error has been recorded.  The value of this symbolic constant is
     guaranteed to be 0.

`GL_INVALID_ENUM'
     An unacceptable value is specified for an enumerated argument.  The
     offending command is ignored and has no other side effect than to
     set the error flag.

`GL_INVALID_VALUE'
     A numeric argument is out of range.  The offending command is
     ignored and has no other side effect than to set the error flag.

`GL_INVALID_OPERATION'
     The specified operation is not allowed in the current state.  The
     offending command is ignored and has no other side effect than to
     set the error flag.

`GL_STACK_OVERFLOW'
     This command would cause a stack overflow.  The offending command
     is ignored and has no other side effect than to set the error flag.

`GL_STACK_UNDERFLOW'
     This command would cause a stack underflow.  The offending command
     is ignored and has no other side effect than to set the error flag.

`GL_OUT_OF_MEMORY'
     There is not enough memory left to execute the command.  The state
     of the GL is undefined, except for the state of the error flags,
     after this error is recorded.

`GL_TABLE_TOO_LARGE'
     The specified table exceeds the implementation's maximum supported
     table size.  The offending command is ignored and has no other side
     effect than to set the error flag.

When an error flag is set, results of a GL operation are undefined only
if `GL_OUT_OF_MEMORY' has occurred.  In all other cases, the command
generating the error is ignored and has no effect on the GL state or
frame buffer contents.  If the generating command returns a value, it
returns 0.  If `glGetError' itself generates an error, it returns 0.

`GL_INVALID_OPERATION' is generated if `glGetError' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.
In this case, `glGetError' returns 0.")

(define-gl-procedures
  ((glGetHistogramParameterfv
     (target GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetHistogramParameteriv
     (target GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Get histogram parameters.

TARGET
     Must be one of `GL_HISTOGRAM' or `GL_PROXY_HISTOGRAM'.

PNAME
     The name of the parameter to be retrieved.  Must be one of
     `GL_HISTOGRAM_WIDTH', `GL_HISTOGRAM_FORMAT',
     `GL_HISTOGRAM_RED_SIZE', `GL_HISTOGRAM_GREEN_SIZE',
     `GL_HISTOGRAM_BLUE_SIZE', `GL_HISTOGRAM_ALPHA_SIZE',
     `GL_HISTOGRAM_LUMINANCE_SIZE', or `GL_HISTOGRAM_SINK'.

PARAMS
     Pointer to storage for the returned values.

`glGetHistogramParameter' is used to query parameter values for the
current histogram or for a proxy.  The histogram state information may
be queried by calling `glGetHistogramParameter' with a TARGET of
`GL_HISTOGRAM' (to obtain information for the current histogram table)
or `GL_PROXY_HISTOGRAM' (to obtain information from the most recent
proxy request) and one of the following values for the PNAME argument:



*Parameter*
     *Description*

`GL_HISTOGRAM_WIDTH'
     Histogram table width

`GL_HISTOGRAM_FORMAT'
     Internal format

`GL_HISTOGRAM_RED_SIZE'
     Red component counter size, in bits

`GL_HISTOGRAM_GREEN_SIZE'
     Green component counter size, in bits

`GL_HISTOGRAM_BLUE_SIZE'
     Blue component counter size, in bits

`GL_HISTOGRAM_ALPHA_SIZE'
     Alpha component counter size, in bits

`GL_HISTOGRAM_LUMINANCE_SIZE'
     Luminance component counter size, in bits

`GL_HISTOGRAM_SINK'
     Value of the SINK parameter



`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if PNAME is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if `glGetHistogramParameter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetHistogram
     (target GLenum)
     (reset GLboolean)
     (format GLenum)
     (type GLenum)
     (values GLvoid-*)
     ->
     void))
  "Get histogram table.

TARGET
     Must be `GL_HISTOGRAM'.

RESET
     If `GL_TRUE', each component counter that is actually returned is
     reset to zero.  (Other counters are unaffected.) If `GL_FALSE',
     none of the counters in the histogram table is modified.

FORMAT
     The format of values to be returned in VALUES.  Must be one of
     `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR',
     `GL_RGBA', `GL_BGRA', `GL_LUMINANCE', or `GL_LUMINANCE_ALPHA'.

TYPE
     The type of values to be returned in VALUES.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

VALUES
     A pointer to storage for the returned histogram table.

`glGetHistogram' returns the current histogram table as a
one-dimensional image with the same width as the histogram.  No pixel
transfer operations are performed on this image, but pixel storage modes
that are applicable to 1D images are honored.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a histogram table is requested, VALUES
is treated as a byte offset into the buffer object's data store.

Color components that are requested in the specified FORMAT, but which
are not included in the internal format of the histogram, are returned
as zero.  The assignments of internal color components to the components
requested by FORMAT are:

*Internal Component*
     *Resulting Component*

Red
     Red

Green
     Green

Blue
     Blue

Alpha
     Alpha

Luminance
     Red



`GL_INVALID_ENUM' is generated if TARGET is not `GL_HISTOGRAM'.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and VALUES is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glGetHistogram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetLightfv
     (light GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetLightiv
     (light GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return light source parameter values.

LIGHT
     Specifies a light source.  The number of possible lights depends on
     the implementation, but at least eight lights are supported.  They
     are identified by symbolic names of the form `GL_LIGHT' I where I
     ranges from 0 to the value of `GL_MAX_LIGHTS' - 1.

PNAME
     Specifies a light source parameter for LIGHT.  Accepted symbolic
     names are `GL_AMBIENT', `GL_DIFFUSE', `GL_SPECULAR', `GL_POSITION',
     `GL_SPOT_DIRECTION', `GL_SPOT_EXPONENT', `GL_SPOT_CUTOFF',
     `GL_CONSTANT_ATTENUATION', `GL_LINEAR_ATTENUATION', and
     `GL_QUADRATIC_ATTENUATION'.

PARAMS
     Returns the requested data.

`glGetLight' returns in PARAMS the value or values of a light source
parameter.  LIGHT names the light and is a symbolic name of the form
`GL_LIGHT'I where i ranges from 0 to the value of `GL_MAX_LIGHTS' - 1.
`GL_MAX_LIGHTS' is an implementation dependent constant that is greater
than or equal to eight.  PNAME specifies one of ten light source
parameters, again by symbolic name.

The following parameters are defined:

`GL_AMBIENT'
     PARAMS returns four integer or floating-point values representing
     the ambient intensity of the light source.  Integer values, when
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 maps to the most positive
     representable integer value, and -1.0 maps to the most negative
     representable integer value.  If the internal value is outside the
     range [-1,1] , the corresponding integer return value is undefined.
     The initial value is (0, 0, 0, 1).

`GL_DIFFUSE'
     PARAMS returns four integer or floating-point values representing
     the diffuse intensity of the light source.  Integer values, when
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 maps to the most positive
     representable integer value, and -1.0 maps to the most negative
     representable integer value.  If the internal value is outside the
     range [-1,1] , the corresponding integer return value is undefined.
     The initial value for `GL_LIGHT0' is (1, 1, 1, 1); for other
     lights, the initial value is (0, 0, 0, 0).

`GL_SPECULAR'
     PARAMS returns four integer or floating-point values representing
     the specular intensity of the light source.  Integer values, when
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 maps to the most positive
     representable integer value, and -1.0 maps to the most negative
     representable integer value.  If the internal value is outside the
     range [-1,1] , the corresponding integer return value is undefined.
     The initial value for `GL_LIGHT0' is (1, 1, 1, 1); for other
     lights, the initial value is (0, 0, 0, 0).

`GL_POSITION'
     PARAMS returns four integer or floating-point values representing
     the position of the light source.  Integer values, when requested,
     are computed by rounding the internal floating-point values to the
     nearest integer value.  The returned values are those maintained in
     eye coordinates.  They will not be equal to the values specified
     using `glLight', unless the modelview matrix was identity at the
     time `glLight' was called.  The initial value is (0, 0, 1, 0).

`GL_SPOT_DIRECTION'
     PARAMS returns three integer or floating-point values representing
     the direction of the light source.  Integer values, when requested,
     are computed by rounding the internal floating-point values to the
     nearest integer value.  The returned values are those maintained in
     eye coordinates.  They will not be equal to the values specified
     using `glLight', unless the modelview matrix was identity at the
     time `glLight' was called.  Although spot direction is normalized
     before being used in the lighting equation, the returned values are
     the transformed versions of the specified values prior to
     normalization.  The initial value is (0,0-1) .

`GL_SPOT_EXPONENT'
     PARAMS returns a single integer or floating-point value
     representing the spot exponent of the light.  An integer value,
     when requested, is computed by rounding the internal floating-point
     representation to the nearest integer.  The initial value is 0.

`GL_SPOT_CUTOFF'
     PARAMS returns a single integer or floating-point value
     representing the spot cutoff angle of the light.  An integer value,
     when requested, is computed by rounding the internal floating-point
     representation to the nearest integer.  The initial value is 180.

`GL_CONSTANT_ATTENUATION'
     PARAMS returns a single integer or floating-point value
     representing the constant (not distance-related) attenuation of the
     light.  An integer value, when requested, is computed by rounding
     the internal floating-point representation to the nearest integer.
     The initial value is 1.

`GL_LINEAR_ATTENUATION'
     PARAMS returns a single integer or floating-point value
     representing the linear attenuation of the light.  An integer
     value, when requested, is computed by rounding the internal
     floating-point representation to the nearest integer.  The initial
     value is 0.

`GL_QUADRATIC_ATTENUATION'
     PARAMS returns a single integer or floating-point value
     representing the quadratic attenuation of the light.  An integer
     value, when requested, is computed by rounding the internal
     floating-point representation to the nearest integer.  The initial
     value is 0.

`GL_INVALID_ENUM' is generated if LIGHT or PNAME is not an accepted
value.

`GL_INVALID_OPERATION' is generated if `glGetLight' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGetMapdv
     (target GLenum)
     (query GLenum)
     (v GLdouble-*)
     ->
     void)
   (glGetMapfv
     (target GLenum)
     (query GLenum)
     (v GLfloat-*)
     ->
     void)
   (glGetMapiv
     (target GLenum)
     (query GLenum)
     (v GLint-*)
     ->
     void))
  "Return evaluator parameters.

TARGET
     Specifies the symbolic name of a map.  Accepted values are
     `GL_MAP1_COLOR_4', `GL_MAP1_INDEX', `GL_MAP1_NORMAL',
     `GL_MAP1_TEXTURE_COORD_1', `GL_MAP1_TEXTURE_COORD_2',
     `GL_MAP1_TEXTURE_COORD_3', `GL_MAP1_TEXTURE_COORD_4',
     `GL_MAP1_VERTEX_3', `GL_MAP1_VERTEX_4', `GL_MAP2_COLOR_4',
     `GL_MAP2_INDEX', `GL_MAP2_NORMAL', `GL_MAP2_TEXTURE_COORD_1',
     `GL_MAP2_TEXTURE_COORD_2', `GL_MAP2_TEXTURE_COORD_3',
     `GL_MAP2_TEXTURE_COORD_4', `GL_MAP2_VERTEX_3', and
     `GL_MAP2_VERTEX_4'.

QUERY
     Specifies which parameter to return.  Symbolic names `GL_COEFF',
     `GL_ORDER', and `GL_DOMAIN' are accepted.

V
     Returns the requested data.

`glMap1' and `glMap2' define evaluators.  `glGetMap' returns evaluator
parameters.  TARGET chooses a map, QUERY selects a specific parameter,
and V points to storage where the values will be returned.

The acceptable values for the TARGET parameter are described in the
`glMap1' and `glMap2' reference pages.

QUERY can assume the following values:

`GL_COEFF'
     V returns the control points for the evaluator function.
     One-dimensional evaluators return ORDER control points, and
     two-dimensional evaluators return UORDER×VORDER control points.
     Each control point consists of one, two, three, or four integer,
     single-precision floating-point, or double-precision floating-point
     values, depending on the type of the evaluator.  The GL returns
     two-dimensional control points in row-major order, incrementing the
     UORDER index quickly and the VORDER index after each row.  Integer
     values, when requested, are computed by rounding the internal
     floating-point values to the nearest integer values.

`GL_ORDER'
     V returns the order of the evaluator function.  One-dimensional
     evaluators return a single value, ORDER .  The initial value is 1.
     Two-dimensional evaluators return two values, UORDER and VORDER .
     The initial value is 1,1.

`GL_DOMAIN'
     V returns the linear U and V mapping parameters.  One-dimensional
     evaluators return two values, U1 and U2 , as specified by `glMap1'.
     Two-dimensional evaluators return four values ( U1 , U2 , V1 , and
     V2 ) as specified by `glMap2'.  Integer values, when requested, are
     computed by rounding the internal floating-point values to the
     nearest integer values.

`GL_INVALID_ENUM' is generated if either TARGET or QUERY is not an
accepted value.

`GL_INVALID_OPERATION' is generated if `glGetMap' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGetMaterialfv
     (face GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetMaterialiv
     (face GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return material parameters.

FACE
     Specifies which of the two materials is being queried.  `GL_FRONT'
     or `GL_BACK' are accepted, representing the front and back
     materials, respectively.

PNAME
     Specifies the material parameter to return.  `GL_AMBIENT',
     `GL_DIFFUSE', `GL_SPECULAR', `GL_EMISSION', `GL_SHININESS', and
     `GL_COLOR_INDEXES' are accepted.

PARAMS
     Returns the requested data.

`glGetMaterial' returns in PARAMS the value or values of parameter PNAME
of material FACE.  Six parameters are defined:

`GL_AMBIENT'
     PARAMS returns four integer or floating-point values representing
     the ambient reflectance of the material.  Integer values, when
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 maps to the most positive
     representable integer value, and -1.0 maps to the most negative
     representable integer value.  If the internal value is outside the
     range [-1,1] , the corresponding integer return value is undefined.
     The initial value is (0.2, 0.2, 0.2, 1.0)

`GL_DIFFUSE'
     PARAMS returns four integer or floating-point values representing
     the diffuse reflectance of the material.  Integer values, when
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 maps to the most positive
     representable integer value, and -1.0 maps to the most negative
     representable integer value.  If the internal value is outside the
     range [-1,1] , the corresponding integer return value is undefined.
     The initial value is (0.8, 0.8, 0.8, 1.0).

`GL_SPECULAR'
     PARAMS returns four integer or floating-point values representing
     the specular reflectance of the material.  Integer values, when
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 maps to the most positive
     representable integer value, and -1.0 maps to the most negative
     representable integer value.  If the internal value is outside the
     range [-1,1] , the corresponding integer return value is undefined.
     The initial value is (0, 0, 0, 1).

`GL_EMISSION'
     PARAMS returns four integer or floating-point values representing
     the emitted light intensity of the material.  Integer values, when
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 maps to the most positive
     representable integer value, and -1.0 maps to the most negative
     representable integer value.  If the internal value is outside the
     range [-1,1] , the corresponding integer return value is undefined.
     The initial value is (0, 0, 0, 1).

`GL_SHININESS'
     PARAMS returns one integer or floating-point value representing the
     specular exponent of the material.  Integer values, when requested,
     are computed by rounding the internal floating-point value to the
     nearest integer value.  The initial value is 0.

`GL_COLOR_INDEXES'
     PARAMS returns three integer or floating-point values representing
     the ambient, diffuse, and specular indices of the material.  These
     indices are used only for color index lighting.  (All the other
     parameters are used only for RGBA lighting.) Integer values, when
     requested, are computed by rounding the internal floating-point
     values to the nearest integer values.

`GL_INVALID_ENUM' is generated if FACE or PNAME is not an accepted
value.

`GL_INVALID_OPERATION' is generated if `glGetMaterial' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetMinmaxParameterfv
     (target GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetMinmaxParameteriv
     (target GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Get minmax parameters.

TARGET
     Must be `GL_MINMAX'.

PNAME
     The parameter to be retrieved.  Must be one of `GL_MINMAX_FORMAT'
     or `GL_MINMAX_SINK'.

PARAMS
     A pointer to storage for the retrieved parameters.

`glGetMinmaxParameter' retrieves parameters for the current minmax table
by setting PNAME to one of the following values:



*Parameter*
     *Description*

`GL_MINMAX_FORMAT'
     Internal format of minmax table

`GL_MINMAX_SINK'
     Value of the SINK parameter



`GL_INVALID_ENUM' is generated if TARGET is not `GL_MINMAX'.

`GL_INVALID_ENUM' is generated if PNAME is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if `glGetMinmaxParameter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetMinmax
     (target GLenum)
     (reset GLboolean)
     (format GLenum)
     (types GLenum)
     (values GLvoid-*)
     ->
     void))
  "Get minimum and maximum pixel values.

TARGET
     Must be `GL_MINMAX'.

RESET
     If `GL_TRUE', all entries in the minmax table that are actually
     returned are reset to their initial values.  (Other entries are
     unaltered.) If `GL_FALSE', the minmax table is unaltered.

FORMAT
     The format of the data to be returned in VALUES.  Must be one of
     `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR',
     `GL_RGBA', `GL_BGRA', `GL_LUMINANCE', or `GL_LUMINANCE_ALPHA'.

TYPES
     The type of the data to be returned in VALUES.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

VALUES
     A pointer to storage for the returned values.

`glGetMinmax' returns the accumulated minimum and maximum pixel values
(computed on a per-component basis) in a one-dimensional image of width
2.  The first set of return values are the minima, and the second set of
return values are the maxima.  The format of the return values is
determined by FORMAT, and their type is determined by TYPES.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while minimum and maximum pixel values are
requested, VALUES is treated as a byte offset into the buffer object's
data store.

No pixel transfer operations are performed on the return values, but
pixel storage modes that are applicable to one-dimensional images are
performed.  Color components that are requested in the specified FORMAT,
but that are not included in the internal format of the minmax table,
are returned as zero.  The assignment of internal color components to
the components requested by FORMAT are as follows:



*Internal Component*
     *Resulting Component*

Red
     Red

Green
     Green

Blue
     Blue

Alpha
     Alpha

Luminance
     Red

If RESET is `GL_TRUE', the minmax table entries corresponding to the
return values are reset to their initial values.  Minimum and maximum
values that are not returned are not modified, even if RESET is
`GL_TRUE'.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_MINMAX'.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPES is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if TYPES is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPES is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and VALUES is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glGetMinmax' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGetPixelMapfv
     (map GLenum)
     (data GLfloat-*)
     ->
     void)
   (glGetPixelMapuiv
     (map GLenum)
     (data GLuint-*)
     ->
     void)
   (glGetPixelMapusv
     (map GLenum)
     (data GLushort-*)
     ->
     void))
  "Return the specified pixel map.

MAP
     Specifies the name of the pixel map to return.  Accepted values are
     `GL_PIXEL_MAP_I_TO_I', `GL_PIXEL_MAP_S_TO_S',
     `GL_PIXEL_MAP_I_TO_R', `GL_PIXEL_MAP_I_TO_G',
     `GL_PIXEL_MAP_I_TO_B', `GL_PIXEL_MAP_I_TO_A',
     `GL_PIXEL_MAP_R_TO_R', `GL_PIXEL_MAP_G_TO_G',
     `GL_PIXEL_MAP_B_TO_B', and `GL_PIXEL_MAP_A_TO_A'.

DATA
     Returns the pixel map contents.

See the `glPixelMap' reference page for a description of the acceptable
values for the MAP parameter.  `glGetPixelMap' returns in DATA the
contents of the pixel map specified in MAP.  Pixel maps are used during
the execution of `glReadPixels', `glDrawPixels', `glCopyPixels',
`glTexImage1D', `glTexImage2D', `glTexImage3D', `glTexSubImage1D',
`glTexSubImage2D', `glTexSubImage3D', `glCopyTexImage1D',
`glCopyTexImage2D', `glCopyTexSubImage1D', `glCopyTexSubImage2D', and
`glCopyTexSubImage3D'.  to map color indices, stencil indices, color
components, and depth components to other values.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a pixel map is requested, DATA is
treated as a byte offset into the buffer object's data store.

Unsigned integer values, if requested, are linearly mapped from the
internal fixed or floating-point representation such that 1.0 maps to
the largest representable integer value, and 0.0 maps to 0.  Return
unsigned integer values are undefined if the map value was not in the
range [0,1].

To determine the required size of MAP, call `glGet' with the appropriate
symbolic constant.

`GL_INVALID_ENUM' is generated if MAP is not an accepted value.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated by `glGetPixelMapfv' if a non-zero
buffer object name is bound to the `GL_PIXEL_PACK_BUFFER' target and
DATA is not evenly divisible into the number of bytes needed to store in
memory a GLfloat datum.

`GL_INVALID_OPERATION' is generated by `glGetPixelMapuiv' if a non-zero
buffer object name is bound to the `GL_PIXEL_PACK_BUFFER' target and
DATA is not evenly divisible into the number of bytes needed to store in
memory a GLuint datum.

`GL_INVALID_OPERATION' is generated by `glGetPixelMapusv' if a non-zero
buffer object name is bound to the `GL_PIXEL_PACK_BUFFER' target and
DATA is not evenly divisible into the number of bytes needed to store in
memory a GLushort datum.

`GL_INVALID_OPERATION' is generated if `glGetPixelMap' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetPointerv
     (pname GLenum)
     (params GLvoid-**)
     ->
     void))
  "Return the address of the specified pointer.

PNAME
     Specifies the array or buffer pointer to be returned.  Symbolic
     constants `GL_COLOR_ARRAY_POINTER', `GL_EDGE_FLAG_ARRAY_POINTER',
     `GL_FOG_COORD_ARRAY_POINTER', `GL_FEEDBACK_BUFFER_POINTER',
     `GL_INDEX_ARRAY_POINTER', `GL_NORMAL_ARRAY_POINTER',
     `GL_SECONDARY_COLOR_ARRAY_POINTER', `GL_SELECTION_BUFFER_POINTER',
     `GL_TEXTURE_COORD_ARRAY_POINTER', or `GL_VERTEX_ARRAY_POINTER' are
     accepted.

PARAMS
     Returns the pointer value specified by PNAME.

`glGetPointerv' returns pointer information.  PNAME is a symbolic
constant indicating the pointer to be returned, and PARAMS is a pointer
to a location in which to place the returned data.

For all PNAME arguments except `GL_FEEDBACK_BUFFER_POINTER' and
`GL_SELECTION_BUFFER_POINTER', if a non-zero named buffer object was
bound to the `GL_ARRAY_BUFFER' target (see `glBindBuffer') when the
desired pointer was previously specified, the pointer returned is a byte
offset into the buffer object's data store.  Buffer objects are only
available in OpenGL versions 1.5 and greater.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.")

(define-gl-procedures
  ((glGetPolygonStipple (pattern GLubyte-*) -> void))
  "Return the polygon stipple pattern.

PATTERN
     Returns the stipple pattern.  The initial value is all 1's.

`glGetPolygonStipple' returns to PATTERN a 32×32 polygon stipple
pattern.  The pattern is packed into memory as if `glReadPixels' with
both HEIGHT and WIDTH of 32, TYPE of `GL_BITMAP', and FORMAT of
`GL_COLOR_INDEX' were called, and the stipple pattern were stored in an
internal 32×32 color index buffer.  Unlike `glReadPixels', however,
pixel transfer operations (shift, offset, pixel map) are not applied to
the returned stipple image.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a polygon stipple pattern is
requested, PATTERN is treated as a byte offset into the buffer object's
data store.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if `glGetPolygonStipple' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetProgramInfoLog
     (program GLuint)
     (maxLength GLsizei)
     (length GLsizei-*)
     (infoLog GLchar-*)
     ->
     void))
  "Returns the information log for a program object.

PROGRAM
     Specifies the program object whose information log is to be
     queried.

MAXLENGTH
     Specifies the size of the character buffer for storing the returned
     information log.

LENGTH
     Returns the length of the string returned in INFOLOG (excluding the
     null terminator).

INFOLOG
     Specifies an array of characters that is used to return the
     information log.

`glGetProgramInfoLog' returns the information log for the specified
program object.  The information log for a program object is modified
when the program object is linked or validated.  The string that is
returned will be null terminated.

`glGetProgramInfoLog' returns in INFOLOG as much of the information log
as it can, up to a maximum of MAXLENGTH characters.  The number of
characters actually returned, excluding the null termination character,
is specified by LENGTH.  If the length of the returned string is not
required, a value of `NULL' can be passed in the LENGTH argument.  The
size of the buffer required to store the returned information log can be
obtained by calling `glGetProgram' with the value `GL_INFO_LOG_LENGTH'.

The information log for a program object is either an empty string, or a
string containing information about the last link operation, or a string
containing information about the last validation operation.  It may
contain diagnostic messages, warning messages, and other information.
When a program object is created, its information log will be a string
of length 0.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_VALUE' is generated if MAXLENGTH is less than 0.

`GL_INVALID_OPERATION' is generated if `glGetProgramInfoLog' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetProgramiv
     (program GLuint)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Returns a parameter from a program object.

PROGRAM
     Specifies the program object to be queried.

PNAME
     Specifies the object parameter.  Accepted symbolic names are
     `GL_DELETE_STATUS', `GL_LINK_STATUS', `GL_VALIDATE_STATUS',
     `GL_INFO_LOG_LENGTH', `GL_ATTACHED_SHADERS',
     `GL_ACTIVE_ATTRIBUTES', `GL_ACTIVE_ATTRIBUTE_MAX_LENGTH',
     `GL_ACTIVE_UNIFORMS', `GL_ACTIVE_UNIFORM_MAX_LENGTH'.

PARAMS
     Returns the requested object parameter.

`glGetProgram' returns in PARAMS the value of a parameter for a specific
program object.  The following parameters are defined:

`GL_DELETE_STATUS'


     PARAMS returns `GL_TRUE' if PROGRAM is currently flagged for
     deletion, and `GL_FALSE' otherwise.

`GL_LINK_STATUS'


     PARAMS returns `GL_TRUE' if the last link operation on PROGRAM was
     successful, and `GL_FALSE' otherwise.

`GL_VALIDATE_STATUS'


     PARAMS returns `GL_TRUE' or if the last validation operation on
     PROGRAM was successful, and `GL_FALSE' otherwise.

`GL_INFO_LOG_LENGTH'


     PARAMS returns the number of characters in the information log for
     PROGRAM including the null termination character (i.e., the size of
     the character buffer required to store the information log).  If
     PROGRAM has no information log, a value of 0 is returned.

`GL_ATTACHED_SHADERS'


     PARAMS returns the number of shader objects attached to PROGRAM.

`GL_ACTIVE_ATTRIBUTES'


     PARAMS returns the number of active attribute variables for
     PROGRAM.

`GL_ACTIVE_ATTRIBUTE_MAX_LENGTH'


     PARAMS returns the length of the longest active attribute name for
     PROGRAM, including the null termination character (i.e., the size
     of the character buffer required to store the longest attribute
     name).  If no active attributes exist, 0 is returned.

`GL_ACTIVE_UNIFORMS'


     PARAMS returns the number of active uniform variables for PROGRAM.

`GL_ACTIVE_UNIFORM_MAX_LENGTH'


     PARAMS returns the length of the longest active uniform variable
     name for PROGRAM, including the null termination character (i.e.,
     the size of the character buffer required to store the longest
     uniform variable name).  If no active uniform variables exist, 0 is
     returned.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM does not refer to a
program object.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glGetProgram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetQueryiv
     (target GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return parameters of a query object target.

TARGET
     Specifies a query object target.  Must be `GL_SAMPLES_PASSED'.

PNAME
     Specifies the symbolic name of a query object target parameter.
     Accepted values are `GL_CURRENT_QUERY' or `GL_QUERY_COUNTER_BITS'.

PARAMS
     Returns the requested data.

`glGetQueryiv' returns in PARAMS a selected parameter of the query
object target specified by TARGET.

PNAME names a specific query object target parameter.  When TARGET is
`GL_SAMPLES_PASSED', PNAME can be as follows:

`GL_CURRENT_QUERY'
     PARAMS returns the name of the currently active occlusion query
     object.  If no occlusion query is active, 0 is returned.  The
     initial value is 0.

`GL_QUERY_COUNTER_BITS'
     PARAMS returns the number of bits in the query counter used to
     accumulate passing samples.  If the number of bits returned is 0,
     the implementation does not support a query counter, and the
     results obtained from `glGetQueryObject' are useless.

`GL_INVALID_ENUM' is generated if TARGET or PNAME is not an accepted
value.

`GL_INVALID_OPERATION' is generated if `glGetQueryiv' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetQueryObjectiv
     (id GLuint)
     (pname GLenum)
     (params GLint-*)
     ->
     void)
   (glGetQueryObjectuiv
     (id GLuint)
     (pname GLenum)
     (params GLuint-*)
     ->
     void))
  "Return parameters of a query object.

ID
     Specifies the name of a query object.

PNAME
     Specifies the symbolic name of a query object parameter.  Accepted
     values are `GL_QUERY_RESULT' or `GL_QUERY_RESULT_AVAILABLE'.

PARAMS
     Returns the requested data.

`glGetQueryObject' returns in PARAMS a selected parameter of the query
object specified by ID.

PNAME names a specific query object parameter.  PNAME can be as follows:

`GL_QUERY_RESULT'
     PARAMS returns the value of the query object's passed samples
     counter.  The initial value is 0.

`GL_QUERY_RESULT_AVAILABLE'
     PARAMS returns whether the passed samples counter is immediately
     available.  If a delay would occur waiting for the query result,
     `GL_FALSE' is returned.  Otherwise, `GL_TRUE' is returned, which
     also indicates that the results of all previous queries are
     available as well.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_OPERATION' is generated if ID is not the name of a query
object.

`GL_INVALID_OPERATION' is generated if ID is the name of a currently
active query object.

`GL_INVALID_OPERATION' is generated if `glGetQueryObject' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetSeparableFilter
     (target GLenum)
     (format GLenum)
     (type GLenum)
     (row GLvoid-*)
     (column GLvoid-*)
     (span GLvoid-*)
     ->
     void))
  "Get separable convolution filter kernel images.

TARGET
     The separable filter to be retrieved.  Must be `GL_SEPARABLE_2D'.

FORMAT
     Format of the output images.  Must be one of `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR'`GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', or `GL_LUMINANCE_ALPHA'.

TYPE
     Data type of components in the output images.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

ROW
     Pointer to storage for the row filter image.

COLUMN
     Pointer to storage for the column filter image.

SPAN
     Pointer to storage for the span filter image (currently unused).

`glGetSeparableFilter' returns the two one-dimensional filter kernel
images for the current separable 2D convolution filter.  The row image
is placed in ROW and the column image is placed in COLUMN according to
the specifications in FORMAT and TYPE.  (In the current implementation,
SPAN is not affected in any way.) No pixel transfer operations are
performed on the images, but the relevant pixel storage modes are
applied.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a separable convolution filter is
requested, ROW, COLUMN, and SPAN are treated as a byte offset into the
buffer object's data store.

Color components that are present in FORMAT but not included in the
internal format of the filters are returned as zero.  The assignments of
internal color components to the components of FORMAT are as follows:



*Internal Component*
     *Resulting Component*

Red
     Red

Green
     Green

Blue
     Blue

Alpha
     Alpha

Luminance
     Red

Intensity
     Red



`GL_INVALID_ENUM' is generated if TARGET is not `GL_SEPARABLE_2D'.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and ROW or COLUMN is not
evenly divisible into the number of bytes needed to store in memory a
datum indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glGetSeparableFilter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetShaderInfoLog
     (shader GLuint)
     (maxLength GLsizei)
     (length GLsizei-*)
     (infoLog GLchar-*)
     ->
     void))
  "Returns the information log for a shader object.

SHADER
     Specifies the shader object whose information log is to be queried.

MAXLENGTH
     Specifies the size of the character buffer for storing the returned
     information log.

LENGTH
     Returns the length of the string returned in INFOLOG (excluding the
     null terminator).

INFOLOG
     Specifies an array of characters that is used to return the
     information log.

`glGetShaderInfoLog' returns the information log for the specified
shader object.  The information log for a shader object is modified when
the shader is compiled.  The string that is returned will be null
terminated.

`glGetShaderInfoLog' returns in INFOLOG as much of the information log
as it can, up to a maximum of MAXLENGTH characters.  The number of
characters actually returned, excluding the null termination character,
is specified by LENGTH.  If the length of the returned string is not
required, a value of `NULL' can be passed in the LENGTH argument.  The
size of the buffer required to store the returned information log can be
obtained by calling `glGetShader' with the value `GL_INFO_LOG_LENGTH'.

The information log for a shader object is a string that may contain
diagnostic messages, warning messages, and other information about the
last compile operation.  When a shader object is created, its
information log will be a string of length 0.

`GL_INVALID_VALUE' is generated if SHADER is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if SHADER is not a shader object.

`GL_INVALID_VALUE' is generated if MAXLENGTH is less than 0.

`GL_INVALID_OPERATION' is generated if `glGetShaderInfoLog' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetShaderSource
     (shader GLuint)
     (bufSize GLsizei)
     (length GLsizei-*)
     (source GLchar-*)
     ->
     void))
  "Returns the source code string from a shader object.

SHADER
     Specifies the shader object to be queried.

BUFSIZE
     Specifies the size of the character buffer for storing the returned
     source code string.

LENGTH
     Returns the length of the string returned in SOURCE (excluding the
     null terminator).

SOURCE
     Specifies an array of characters that is used to return the source
     code string.

`glGetShaderSource' returns the concatenation of the source code strings
from the shader object specified by SHADER.  The source code strings for
a shader object are the result of a previous call to `glShaderSource'.
The string returned by the function will be null terminated.

`glGetShaderSource' returns in SOURCE as much of the source code string
as it can, up to a maximum of BUFSIZE characters.  The number of
characters actually returned, excluding the null termination character,
is specified by LENGTH.  If the length of the returned string is not
required, a value of `NULL' can be passed in the LENGTH argument.  The
size of the buffer required to store the returned source code string can
be obtained by calling `glGetShader' with the value
`GL_SHADER_SOURCE_LENGTH'.

`GL_INVALID_VALUE' is generated if SHADER is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if SHADER is not a shader object.

`GL_INVALID_VALUE' is generated if BUFSIZE is less than 0.

`GL_INVALID_OPERATION' is generated if `glGetShaderSource' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetShaderiv
     (shader GLuint)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Returns a parameter from a shader object.

SHADER
     Specifies the shader object to be queried.

PNAME
     Specifies the object parameter.  Accepted symbolic names are
     `GL_SHADER_TYPE', `GL_DELETE_STATUS', `GL_COMPILE_STATUS',
     `GL_INFO_LOG_LENGTH', `GL_SHADER_SOURCE_LENGTH'.

PARAMS
     Returns the requested object parameter.

`glGetShader' returns in PARAMS the value of a parameter for a specific
shader object.  The following parameters are defined:

`GL_SHADER_TYPE'
     PARAMS returns `GL_VERTEX_SHADER' if SHADER is a vertex shader
     object, and `GL_FRAGMENT_SHADER' if SHADER is a fragment shader
     object.

`GL_DELETE_STATUS'
     PARAMS returns `GL_TRUE' if SHADER is currently flagged for
     deletion, and `GL_FALSE' otherwise.

`GL_COMPILE_STATUS'
     PARAMS returns `GL_TRUE' if the last compile operation on SHADER
     was successful, and `GL_FALSE' otherwise.

`GL_INFO_LOG_LENGTH'
     PARAMS returns the number of characters in the information log for
     SHADER including the null termination character (i.e., the size of
     the character buffer required to store the information log).  If
     SHADER has no information log, a value of 0 is returned.

`GL_SHADER_SOURCE_LENGTH'
     PARAMS returns the length of the concatenation of the source
     strings that make up the shader source for the SHADER, including
     the null termination character.  (i.e., the size of the character
     buffer required to store the shader source).  If no source code
     exists, 0 is returned.

`GL_INVALID_VALUE' is generated if SHADER is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if SHADER does not refer to a shader
object.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glGetShader' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGetString (name GLenum) -> const-GLubyte*))
  "Return a string describing the current GL connection.

NAME
     Specifies a symbolic constant, one of `GL_VENDOR', `GL_RENDERER',
     `GL_VERSION', `GL_SHADING_LANGUAGE_VERSION', or `GL_EXTENSIONS'.

`glGetString' returns a pointer to a static string describing some
aspect of the current GL connection.  NAME can be one of the following:

`GL_VENDOR'


     Returns the company responsible for this GL implementation.  This
     name does not change from release to release.

`GL_RENDERER'


     Returns the name of the renderer.  This name is typically specific
     to a particular configuration of a hardware platform.  It does not
     change from release to release.

`GL_VERSION'


     Returns a version or release number.

`GL_SHADING_LANGUAGE_VERSION'


     Returns a version or release number for the shading language.

`GL_EXTENSIONS'


     Returns a space-separated list of supported extensions to GL.

Because the GL does not include queries for the performance
characteristics of an implementation, some applications are written to
recognize known platforms and modify their GL usage based on known
performance characteristics of these platforms.  Strings `GL_VENDOR' and
`GL_RENDERER' together uniquely specify a platform.  They do not change
from release to release and should be used by platform-recognition
algorithms.

Some applications want to make use of features that are not part of the
standard GL.  These features may be implemented as extensions to the
standard GL.  The `GL_EXTENSIONS' string is a space-separated list of
supported GL extensions.  (Extension names never contain a space
character.)

The `GL_VERSION' and `GL_SHADING_LANGUAGE_VERSION' strings begin with a
version number.  The version number uses one of these forms:

MAJOR_NUMBER.MINOR_NUMBERMAJOR_NUMBER.MINOR_NUMBER.RELEASE_NUMBER

Vendor-specific information may follow the version number.  Its format
depends on the implementation, but a space always separates the version
number and the vendor-specific information.

All strings are null-terminated.

`GL_INVALID_ENUM' is generated if NAME is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glGetString' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGetTexEnvfv
     (target GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetTexEnviv
     (target GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return texture environment parameters.

TARGET
     Specifies a texture environment.  May be `GL_TEXTURE_ENV',
     `GL_TEXTURE_FILTER_CONTROL', or `GL_POINT_SPRITE'.

PNAME
     Specifies the symbolic name of a texture environment parameter.
     Accepted values are `GL_TEXTURE_ENV_MODE', `GL_TEXTURE_ENV_COLOR',
     `GL_TEXTURE_LOD_BIAS', `GL_COMBINE_RGB', `GL_COMBINE_ALPHA',
     `GL_SRC0_RGB', `GL_SRC1_RGB', `GL_SRC2_RGB', `GL_SRC0_ALPHA',
     `GL_SRC1_ALPHA', `GL_SRC2_ALPHA', `GL_OPERAND0_RGB',
     `GL_OPERAND1_RGB', `GL_OPERAND2_RGB', `GL_OPERAND0_ALPHA',
     `GL_OPERAND1_ALPHA', `GL_OPERAND2_ALPHA', `GL_RGB_SCALE',
     `GL_ALPHA_SCALE', or `GL_COORD_REPLACE'.

PARAMS
     Returns the requested data.

`glGetTexEnv' returns in PARAMS selected values of a texture environment
that was specified with `glTexEnv'.  TARGET specifies a texture
environment.

When TARGET is `GL_TEXTURE_FILTER_CONTROL', PNAME must be
`GL_TEXTURE_LOD_BIAS'.  When TARGET is `GL_POINT_SPRITE', PNAME must be
`GL_COORD_REPLACE'.  When TARGET is `GL_TEXTURE_ENV', PNAME can be
`GL_TEXTURE_ENV_MODE', `GL_TEXTURE_ENV_COLOR', `GL_COMBINE_RGB',
`GL_COMBINE_ALPHA', `GL_RGB_SCALE', `GL_ALPHA_SCALE', `GL_SRC0_RGB',
`GL_SRC1_RGB', `GL_SRC2_RGB', `GL_SRC0_ALPHA', `GL_SRC1_ALPHA', or
`GL_SRC2_ALPHA'.

PNAME names a specific texture environment parameter, as follows:

`GL_TEXTURE_ENV_MODE'
     PARAMS returns the single-valued texture environment mode, a
     symbolic constant.  The initial value is `GL_MODULATE'.

`GL_TEXTURE_ENV_COLOR'
     PARAMS returns four integer or floating-point values that are the
     texture environment color.  Integer values, when requested, are
     linearly mapped from the internal floating-point representation
     such that 1.0 maps to the most positive representable integer, and
     -1.0 maps to the most negative representable integer.  The initial
     value is (0, 0, 0, 0).

`GL_TEXTURE_LOD_BIAS'
     PARAMS returns a single floating-point value that is the texture
     level-of-detail bias.  The initial value is 0.

`GL_COMBINE_RGB'
     PARAMS returns a single symbolic constant value representing the
     current RGB combine mode.  The initial value is `GL_MODULATE'.

`GL_COMBINE_ALPHA'
     PARAMS returns a single symbolic constant value representing the
     current alpha combine mode.  The initial value is `GL_MODULATE'.

`GL_SRC0_RGB'
     PARAMS returns a single symbolic constant value representing the
     texture combiner zero's RGB source.  The initial value is
     `GL_TEXTURE'.

`GL_SRC1_RGB'
     PARAMS returns a single symbolic constant value representing the
     texture combiner one's RGB source.  The initial value is
     `GL_PREVIOUS'.

`GL_SRC2_RGB'
     PARAMS returns a single symbolic constant value representing the
     texture combiner two's RGB source.  The initial value is
     `GL_CONSTANT'.

`GL_SRC0_ALPHA'
     PARAMS returns a single symbolic constant value representing the
     texture combiner zero's alpha source.  The initial value is
     `GL_TEXTURE'.

`GL_SRC1_ALPHA'
     PARAMS returns a single symbolic constant value representing the
     texture combiner one's alpha source.  The initial value is
     `GL_PREVIOUS'.

`GL_SRC2_ALPHA'
     PARAMS returns a single symbolic constant value representing the
     texture combiner two's alpha source.  The initial value is
     `GL_CONSTANT'.

`GL_OPERAND0_RGB'
     PARAMS returns a single symbolic constant value representing the
     texture combiner zero's RGB operand.  The initial value is
     `GL_SRC_COLOR'.

`GL_OPERAND1_RGB'
     PARAMS returns a single symbolic constant value representing the
     texture combiner one's RGB operand.  The initial value is
     `GL_SRC_COLOR'.

`GL_OPERAND2_RGB'
     PARAMS returns a single symbolic constant value representing the
     texture combiner two's RGB operand.  The initial value is
     `GL_SRC_ALPHA'.

`GL_OPERAND0_ALPHA'
     PARAMS returns a single symbolic constant value representing the
     texture combiner zero's alpha operand.  The initial value is
     `GL_SRC_ALPHA'.

`GL_OPERAND1_ALPHA'
     PARAMS returns a single symbolic constant value representing the
     texture combiner one's alpha operand.  The initial value is
     `GL_SRC_ALPHA'.

`GL_OPERAND2_ALPHA'
     PARAMS returns a single symbolic constant value representing the
     texture combiner two's alpha operand.  The initial value is
     `GL_SRC_ALPHA'.

`GL_RGB_SCALE'
     PARAMS returns a single floating-point value representing the
     current RGB texture combiner scaling factor.  The initial value is
     1.0.

`GL_ALPHA_SCALE'
     PARAMS returns a single floating-point value representing the
     current alpha texture combiner scaling factor.  The initial value
     is 1.0.

`GL_COORD_REPLACE'
     PARAMS returns a single boolean value representing the current
     point sprite texture coordinate replacement enable state.  The
     initial value is `GL_FALSE'.

`GL_INVALID_ENUM' is generated if TARGET or PNAME is not an accepted
value.

`GL_INVALID_OPERATION' is generated if `glGetTexEnv' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGetTexGendv
     (coord GLenum)
     (pname GLenum)
     (params GLdouble-*)
     ->
     void)
   (glGetTexGenfv
     (coord GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetTexGeniv
     (coord GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return texture coordinate generation parameters.

COORD
     Specifies a texture coordinate.  Must be `GL_S', `GL_T', `GL_R', or
     `GL_Q'.

PNAME
     Specifies the symbolic name of the value(s) to be returned.  Must
     be either `GL_TEXTURE_GEN_MODE' or the name of one of the texture
     generation plane equations: `GL_OBJECT_PLANE' or `GL_EYE_PLANE'.

PARAMS
     Returns the requested data.

`glGetTexGen' returns in PARAMS selected parameters of a texture
coordinate generation function that was specified using `glTexGen'.
COORD names one of the (S, T, R, Q) texture coordinates, using the
symbolic constant `GL_S', `GL_T', `GL_R', or `GL_Q'.

PNAME specifies one of three symbolic names:

`GL_TEXTURE_GEN_MODE'
     PARAMS returns the single-valued texture generation function, a
     symbolic constant.  The initial value is `GL_EYE_LINEAR'.

`GL_OBJECT_PLANE'
     PARAMS returns the four plane equation coefficients that specify
     object linear-coordinate generation.  Integer values, when
     requested, are mapped directly from the internal floating-point
     representation.

`GL_EYE_PLANE'
     PARAMS returns the four plane equation coefficients that specify
     eye linear-coordinate generation.  Integer values, when requested,
     are mapped directly from the internal floating-point
     representation.  The returned values are those maintained in eye
     coordinates.  They are not equal to the values specified using
     `glTexGen', unless the modelview matrix was identity when
     `glTexGen' was called.

`GL_INVALID_ENUM' is generated if COORD or PNAME is not an accepted
value.

`GL_INVALID_OPERATION' is generated if `glGetTexGen' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glGetTexImage
     (target GLenum)
     (level GLint)
     (format GLenum)
     (type GLenum)
     (img GLvoid-*)
     ->
     void))
  "Return a texture image.

TARGET
     Specifies which texture is to be obtained.  `GL_TEXTURE_1D',
     `GL_TEXTURE_2D', `GL_TEXTURE_3D', `GL_TEXTURE_CUBE_MAP_POSITIVE_X',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_X', `GL_TEXTURE_CUBE_MAP_POSITIVE_Y',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y', `GL_TEXTURE_CUBE_MAP_POSITIVE_Z',
     and `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z' are accepted.

LEVEL
     Specifies the level-of-detail number of the desired image.  Level 0
     is the base image level.  Level N is the N th mipmap reduction
     image.

FORMAT
     Specifies a pixel format for the returned data.  The supported
     formats are `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_RGB',
     `GL_BGR', `GL_RGBA', `GL_BGRA', `GL_LUMINANCE', and
     `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies a pixel type for the returned data.  The supported types
     are `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_UNSIGNED_SHORT', `GL_SHORT',
     `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2',
     `GL_UNSIGNED_BYTE_2_3_3_REV', `GL_UNSIGNED_SHORT_5_6_5',
     `GL_UNSIGNED_SHORT_5_6_5_REV', `GL_UNSIGNED_SHORT_4_4_4_4',
     `GL_UNSIGNED_SHORT_4_4_4_4_REV', `GL_UNSIGNED_SHORT_5_5_5_1',
     `GL_UNSIGNED_SHORT_1_5_5_5_REV', `GL_UNSIGNED_INT_8_8_8_8',
     `GL_UNSIGNED_INT_8_8_8_8_REV', `GL_UNSIGNED_INT_10_10_10_2', and
     `GL_UNSIGNED_INT_2_10_10_10_REV'.

IMG
     Returns the texture image.  Should be a pointer to an array of the
     type specified by TYPE.

`glGetTexImage' returns a texture image into IMG.  TARGET specifies
whether the desired texture image is one specified by `glTexImage1D'
(`GL_TEXTURE_1D'), `glTexImage2D' (`GL_TEXTURE_2D' or any of
`GL_TEXTURE_CUBE_MAP_*'), or `glTexImage3D' (`GL_TEXTURE_3D').  LEVEL
specifies the level-of-detail number of the desired image.  FORMAT and
TYPE specify the format and type of the desired image array.  See the
reference pages `glTexImage1D' and `glDrawPixels' for a description of
the acceptable values for the FORMAT and TYPE parameters, respectively.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a texture image is requested, IMG is
treated as a byte offset into the buffer object's data store.

To understand the operation of `glGetTexImage', consider the selected
internal four-component texture image to be an RGBA color buffer the
size of the image.  The semantics of `glGetTexImage' are then identical
to those of `glReadPixels', with the exception that no pixel transfer
operations are performed, when called with the same FORMAT and TYPE,
with X and Y set to 0, WIDTH set to the width of the texture image
(including border if one was specified), and HEIGHT set to 1 for 1D
images, or to the height of the texture image (including border if one
was specified) for 2D images.  Because the internal texture image is an
RGBA image, pixel formats `GL_COLOR_INDEX', `GL_STENCIL_INDEX', and
`GL_DEPTH_COMPONENT' are not accepted, and pixel type `GL_BITMAP' is not
accepted.

If the selected texture image does not contain four components, the
following mappings are applied.  Single-component textures are treated
as RGBA buffers with red set to the single-component value, green set to
0, blue set to 0, and alpha set to 1.  Two-component textures are
treated as RGBA buffers with red set to the value of component zero,
alpha set to the value of component one, and green and blue set to 0.
Finally, three-component textures are treated as RGBA buffers with red
set to component zero, green set to component one, blue set to component
two, and alpha set to 1.

To determine the required size of IMG, use `glGetTexLevelParameter' to
determine the dimensions of the internal texture image, then scale the
required number of pixels by the storage required for each pixel, based
on FORMAT and TYPE.  Be sure to take the pixel storage parameters into
account, especially `GL_PACK_ALIGNMENT'.

`GL_INVALID_ENUM' is generated if TARGET, FORMAT, or TYPE is not an
accepted value.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than
LOG_2\u2061(MAX,) , where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_OPERATION' is returned if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is returned if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV', and
FORMAT is neither `GL_RGBA' or `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and IMG is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glGetTexImage' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetTexLevelParameterfv
     (target GLenum)
     (level GLint)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetTexLevelParameteriv
     (target GLenum)
     (level GLint)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return texture parameter values for a specific level of detail.

TARGET
     Specifies the symbolic name of the target texture, either
     `GL_TEXTURE_1D', `GL_TEXTURE_2D', `GL_TEXTURE_3D',
     `GL_PROXY_TEXTURE_1D', `GL_PROXY_TEXTURE_2D',
     `GL_PROXY_TEXTURE_3D', `GL_TEXTURE_CUBE_MAP_POSITIVE_X',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_X', `GL_TEXTURE_CUBE_MAP_POSITIVE_Y',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y', `GL_TEXTURE_CUBE_MAP_POSITIVE_Z',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z', or `GL_PROXY_TEXTURE_CUBE_MAP'.

LEVEL
     Specifies the level-of-detail number of the desired image.  Level 0
     is the base image level.  Level N is the N th mipmap reduction
     image.

PNAME
     Specifies the symbolic name of a texture parameter.
     `GL_TEXTURE_WIDTH', `GL_TEXTURE_HEIGHT', `GL_TEXTURE_DEPTH',
     `GL_TEXTURE_INTERNAL_FORMAT', `GL_TEXTURE_BORDER',
     `GL_TEXTURE_RED_SIZE', `GL_TEXTURE_GREEN_SIZE',
     `GL_TEXTURE_BLUE_SIZE', `GL_TEXTURE_ALPHA_SIZE',
     `GL_TEXTURE_LUMINANCE_SIZE', `GL_TEXTURE_INTENSITY_SIZE',
     `GL_TEXTURE_DEPTH_SIZE', `GL_TEXTURE_COMPRESSED', and
     `GL_TEXTURE_COMPRESSED_IMAGE_SIZE' are accepted.

PARAMS
     Returns the requested data.

`glGetTexLevelParameter' returns in PARAMS texture parameter values for
a specific level-of-detail value, specified as LEVEL.  TARGET defines
the target texture, either `GL_TEXTURE_1D', `GL_TEXTURE_2D',
`GL_TEXTURE_3D', `GL_PROXY_TEXTURE_1D', `GL_PROXY_TEXTURE_2D',
`GL_PROXY_TEXTURE_3D', `GL_TEXTURE_CUBE_MAP_POSITIVE_X',
`GL_TEXTURE_CUBE_MAP_NEGATIVE_X', `GL_TEXTURE_CUBE_MAP_POSITIVE_Y',
`GL_TEXTURE_CUBE_MAP_NEGATIVE_Y', `GL_TEXTURE_CUBE_MAP_POSITIVE_Z',
`GL_TEXTURE_CUBE_MAP_NEGATIVE_Z', or `GL_PROXY_TEXTURE_CUBE_MAP'.

`GL_MAX_TEXTURE_SIZE', and `GL_MAX_3D_TEXTURE_SIZE' are not really
descriptive enough.  It has to report the largest square texture image
that can be accommodated with mipmaps and borders, but a long skinny
texture, or a texture without mipmaps and borders, may easily fit in
texture memory.  The proxy targets allow the user to more accurately
query whether the GL can accommodate a texture of a given configuration.
If the texture cannot be accommodated, the texture state variables,
which may be queried with `glGetTexLevelParameter', are set to 0.  If
the texture can be accommodated, the texture state values will be set as
they would be set for a non-proxy target.

PNAME specifies the texture parameter whose value or values will be
returned.

The accepted parameter names are as follows:

`GL_TEXTURE_WIDTH'


     PARAMS returns a single value, the width of the texture image.  This
     value includes the border of the texture image.  The initial value
     is 0.

`GL_TEXTURE_HEIGHT'


     PARAMS returns a single value, the height of the texture image.
     This value includes the border of the texture image.  The initial
     value is 0.

`GL_TEXTURE_DEPTH'


     PARAMS returns a single value, the depth of the texture image.  This
     value includes the border of the texture image.  The initial value
     is 0.

`GL_TEXTURE_INTERNAL_FORMAT'


     PARAMS returns a single value, the internal format of the texture
     image.

`GL_TEXTURE_BORDER'


     PARAMS returns a single value, the width in pixels of the border of
     the texture image.  The initial value is 0.

`GL_TEXTURE_RED_SIZE',
`GL_TEXTURE_GREEN_SIZE',
`GL_TEXTURE_BLUE_SIZE',
`GL_TEXTURE_ALPHA_SIZE',
`GL_TEXTURE_LUMINANCE_SIZE',
`GL_TEXTURE_INTENSITY_SIZE',
`GL_TEXTURE_DEPTH_SIZE'


     The internal storage resolution of an individual component.  The
     resolution chosen by the GL will be a close match for the
     resolution requested by the user with the component argument of
     `glTexImage1D', `glTexImage2D', `glTexImage3D', `glCopyTexImage1D',
     and `glCopyTexImage2D'.  The initial value is 0.

`GL_TEXTURE_COMPRESSED'


     PARAMS returns a single boolean value indicating if the texture
     image is stored in a compressed internal format.  The initiali
     value is `GL_FALSE'.

`GL_TEXTURE_COMPRESSED_IMAGE_SIZE'


     PARAMS returns a single integer value, the number of unsigned bytes
     of the compressed texture image that would be returned from
     `glGetCompressedTexImage'.

`GL_INVALID_ENUM' is generated if TARGET or PNAME is not an accepted
value.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than LOG_2 MAX,
where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_OPERATION' is generated if `glGetTexLevelParameter' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

`GL_INVALID_OPERATION' is generated if
`GL_TEXTURE_COMPRESSED_IMAGE_SIZE' is queried on texture images with an
uncompressed internal format or on proxy targets.")

(define-gl-procedures
  ((glGetTexParameterfv
     (target GLenum)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetTexParameteriv
     (target GLenum)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return texture parameter values.

TARGET
     Specifies the symbolic name of the target texture.  `GL_TEXTURE_1D',
     `GL_TEXTURE_2D', `GL_TEXTURE_3D', and `GL_TEXTURE_CUBE_MAP' are
     accepted.

PNAME
     Specifies the symbolic name of a texture parameter.
     `GL_TEXTURE_MAG_FILTER', `GL_TEXTURE_MIN_FILTER',
     `GL_TEXTURE_MIN_LOD', `GL_TEXTURE_MAX_LOD',
     `GL_TEXTURE_BASE_LEVEL', `GL_TEXTURE_MAX_LEVEL',
     `GL_TEXTURE_WRAP_S', `GL_TEXTURE_WRAP_T', `GL_TEXTURE_WRAP_R',
     `GL_TEXTURE_BORDER_COLOR', `GL_TEXTURE_PRIORITY',
     `GL_TEXTURE_RESIDENT', `GL_TEXTURE_COMPARE_MODE',
     `GL_TEXTURE_COMPARE_FUNC', `GL_DEPTH_TEXTURE_MODE', and
     `GL_GENERATE_MIPMAP' are accepted.

PARAMS
     Returns the texture parameters.

`glGetTexParameter' returns in PARAMS the value or values of the texture
parameter specified as PNAME.  TARGET defines the target texture, either
`GL_TEXTURE_1D', `GL_TEXTURE_2D', `GL_TEXTURE_3D', or
`GL_TEXTURE_CUBE_MAP', to specify one-, two-, or three-dimensional or
cube-mapped texturing.  PNAME accepts the same symbols as
`glTexParameter', with the same interpretations:

`GL_TEXTURE_MAG_FILTER'
     Returns the single-valued texture magnification filter, a symbolic
     constant.  The initial value is `GL_LINEAR'.

`GL_TEXTURE_MIN_FILTER'
     Returns the single-valued texture minification filter, a symbolic
     constant.  The initial value is `GL_NEAREST_MIPMAP_LINEAR'.

`GL_TEXTURE_MIN_LOD'
     Returns the single-valued texture minimum level-of-detail value.
     The initial value is -1000 .

`GL_TEXTURE_MAX_LOD'
     Returns the single-valued texture maximum level-of-detail value.
     The initial value is 1000.

`GL_TEXTURE_BASE_LEVEL'
     Returns the single-valued base texture mipmap level.  The initial
     value is 0.

`GL_TEXTURE_MAX_LEVEL'
     Returns the single-valued maximum texture mipmap array level.  The
     initial value is 1000.

`GL_TEXTURE_WRAP_S'
     Returns the single-valued wrapping function for texture coordinate
     S , a symbolic constant.  The initial value is `GL_REPEAT'.

`GL_TEXTURE_WRAP_T'
     Returns the single-valued wrapping function for texture coordinate
     T , a symbolic constant.  The initial value is `GL_REPEAT'.

`GL_TEXTURE_WRAP_R'
     Returns the single-valued wrapping function for texture coordinate
     R , a symbolic constant.  The initial value is `GL_REPEAT'.

`GL_TEXTURE_BORDER_COLOR'
     Returns four integer or floating-point numbers that comprise the
     RGBA color of the texture border.  Floating-point values are
     returned in the range [0,1] .  Integer values are returned as a
     linear mapping of the internal floating-point representation such
     that 1.0 maps to the most positive representable integer and -1.0
     maps to the most negative representable integer.  The initial value
     is (0, 0, 0, 0).

`GL_TEXTURE_PRIORITY'
     Returns the residence priority of the target texture (or the named
     texture bound to it).  The initial value is 1.  See
     `glPrioritizeTextures'.

`GL_TEXTURE_RESIDENT'
     Returns the residence status of the target texture.  If the value
     returned in PARAMS is `GL_TRUE', the texture is resident in texture
     memory.  See `glAreTexturesResident'.

`GL_TEXTURE_COMPARE_MODE'
     Returns a single-valued texture comparison mode, a symbolic
     constant.  The initial value is `GL_NONE'.  See `glTexParameter'.

`GL_TEXTURE_COMPARE_FUNC'
     Returns a single-valued texture comparison function, a symbolic
     constant.  The initial value is `GL_LEQUAL'.  See `glTexParameter'.

`GL_DEPTH_TEXTURE_MODE'
     Returns a single-valued texture format indicating how the depth
     values should be converted into color components.  The initial
     value is `GL_LUMINANCE'.  See `glTexParameter'.

`GL_GENERATE_MIPMAP'
     Returns a single boolean value indicating if automatic mipmap level
     updates are enabled.  See `glTexParameter'.

`GL_INVALID_ENUM' is generated if TARGET or PNAME is not an accepted
value.

`GL_INVALID_OPERATION' is generated if `glGetTexParameter' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetUniformLocation
     (program GLuint)
     (name const-GLchar-*)
     ->
     GLint))
  "Returns the location of a uniform variable.

PROGRAM
     Specifies the program object to be queried.

NAME
     Points to a null terminated string containing the name of the
     uniform variable whose location is to be queried.

`glGetUniformLocation ' returns an integer that represents the location
of a specific uniform variable within a program object.  NAME must be a
null terminated string that contains no white space.  NAME must be an
active uniform variable name in PROGRAM that is not a structure, an
array of structures, or a subcomponent of a vector or a matrix.  This
function returns -1 if NAME does not correspond to an active uniform
variable in PROGRAM or if NAME starts with the reserved prefix \"gl_\".

Uniform variables that are structures or arrays of structures may be
queried by calling `glGetUniformLocation' for each field within the
structure.  The array element operator \"[]\" and the structure field
operator \".\" may be used in NAME in order to select elements within an
array or fields within a structure.  The result of using these operators
is not allowed to be another structure, an array of structures, or a
subcomponent of a vector or a matrix.  Except if the last part of NAME
indicates a uniform variable array, the location of the first element of
an array can be retrieved by using the name of the array, or by using
the name appended by \"[0]\".

The actual locations assigned to uniform variables are not known until
the program object is linked successfully.  After linking has occurred,
the command `glGetUniformLocation' can be used to obtain the location of
a uniform variable.  This location value can then be passed to
`glUniform' to set the value of the uniform variable or to
`glGetUniform' in order to query the current value of the uniform
variable.  After a program object has been linked successfully, the
index values for uniform variables remain fixed until the next link
command occurs.  Uniform variable locations and values can only be
queried after a link if the link was successful.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if PROGRAM has not been successfully
linked.

`GL_INVALID_OPERATION' is generated if `glGetUniformLocation' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glGetUniformfv
     (program GLuint)
     (location GLint)
     (params GLfloat-*)
     ->
     void)
   (glGetUniformiv
     (program GLuint)
     (location GLint)
     (params GLint-*)
     ->
     void))
  "Returns the value of a uniform variable.

PROGRAM
     Specifies the program object to be queried.

LOCATION
     Specifies the location of the uniform variable to be queried.

PARAMS
     Returns the value of the specified uniform variable.

`glGetUniform' returns in PARAMS the value(s) of the specified uniform
variable.  The type of the uniform variable specified by LOCATION
determines the number of values returned.  If the uniform variable is
defined in the shader as a boolean, int, or float, a single value will
be returned.  If it is defined as a vec2, ivec2, or bvec2, two values
will be returned.  If it is defined as a vec3, ivec3, or bvec3, three
values will be returned, and so on.  To query values stored in uniform
variables declared as arrays, call `glGetUniform' for each element of
the array.  To query values stored in uniform variables declared as
structures, call `glGetUniform' for each field in the structure.  The
values for uniform variables declared as a matrix will be returned in
column major order.

The locations assigned to uniform variables are not known until the
program object is linked.  After linking has occurred, the command
`glGetUniformLocation' can be used to obtain the location of a uniform
variable.  This location value can then be passed to `glGetUniform' in
order to query the current value of the uniform variable.  After a
program object has been linked successfully, the index values for
uniform variables remain fixed until the next link command occurs.  The
uniform variable values can only be queried after a link if the link was
successful.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if PROGRAM has not been successfully
linked.

`GL_INVALID_OPERATION' is generated if LOCATION does not correspond to a
valid uniform variable location for the specified program object.

`GL_INVALID_OPERATION' is generated if `glGetUniform' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glGetVertexAttribPointerv
     (index GLuint)
     (pname GLenum)
     (pointer GLvoid-**)
     ->
     void))
  "Return the address of the specified generic vertex attribute pointer.

INDEX
     Specifies the generic vertex attribute parameter to be returned.

PNAME
     Specifies the symbolic name of the generic vertex attribute
     parameter to be returned.  Must be
     `GL_VERTEX_ATTRIB_ARRAY_POINTER'.

POINTER
     Returns the pointer value.

`glGetVertexAttribPointerv' returns pointer information.  INDEX is the
generic vertex attribute to be queried, PNAME is a symbolic constant
indicating the pointer to be returned, and PARAMS is a pointer to a
location in which to place the returned data.

If a non-zero named buffer object was bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') when the desired pointer was previously
specified, the POINTER returned is a byte offset into the buffer
object's data store.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to
`GL_MAX_VERTEX_ATTRIBS'.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.")

(define-gl-procedures
  ((glGetVertexAttribdv
     (index GLuint)
     (pname GLenum)
     (params GLdouble-*)
     ->
     void)
   (glGetVertexAttribfv
     (index GLuint)
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetVertexAttribiv
     (index GLuint)
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return a generic vertex attribute parameter.

INDEX
     Specifies the generic vertex attribute parameter to be queried.

PNAME
     Specifies the symbolic name of the vertex attribute parameter to be
     queried.  Accepted values are
     `GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING',
     `GL_VERTEX_ATTRIB_ARRAY_ENABLED', `GL_VERTEX_ATTRIB_ARRAY_SIZE',
     `GL_VERTEX_ATTRIB_ARRAY_STRIDE', `GL_VERTEX_ATTRIB_ARRAY_TYPE',
     `GL_VERTEX_ATTRIB_ARRAY_NORMALIZED', or `GL_CURRENT_VERTEX_ATTRIB'.

PARAMS
     Returns the requested data.

`glGetVertexAttrib' returns in PARAMS the value of a generic vertex
attribute parameter.  The generic vertex attribute to be queried is
specified by INDEX, and the parameter to be queried is specified by
PNAME.

The accepted parameter names are as follows:

`GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     currently bound to the binding point corresponding to generic
     vertex attribute array INDEX.  If no buffer object is bound, 0 is
     returned.  The initial value is 0.

`GL_VERTEX_ATTRIB_ARRAY_ENABLED'


     PARAMS returns a single value that is non-zero (true) if the vertex
     attribute array for INDEX is enabled and 0 (false) if it is
     disabled.  The initial value is `GL_FALSE'.

`GL_VERTEX_ATTRIB_ARRAY_SIZE'


     PARAMS returns a single value, the size of the vertex attribute
     array for INDEX.  The size is the number of values for each element
     of the vertex attribute array, and it will be 1, 2, 3, or 4.  The
     initial value is 4.

`GL_VERTEX_ATTRIB_ARRAY_STRIDE'


     PARAMS returns a single value, the array stride for (number of
     bytes between successive elements in) the vertex attribute array
     for INDEX.  A value of 0 indicates that the array elements are
     stored sequentially in memory.  The initial value is 0.

`GL_VERTEX_ATTRIB_ARRAY_TYPE'


     PARAMS returns a single value, a symbolic constant indicating the
     array type for the vertex attribute array for INDEX.  Possible
     values are `GL_BYTE', `GL_UNSIGNED_BYTE', `GL_SHORT',
     `GL_UNSIGNED_SHORT', `GL_INT', `GL_UNSIGNED_INT', `GL_FLOAT', and
     `GL_DOUBLE'.  The initial value is `GL_FLOAT'.

`GL_VERTEX_ATTRIB_ARRAY_NORMALIZED'


     PARAMS returns a single value that is non-zero (true) if
     fixed-point data types for the vertex attribute array indicated by
     INDEX are normalized when they are converted to floating point, and
     0 (false) otherwise.  The initial value is `GL_FALSE'.

`GL_CURRENT_VERTEX_ATTRIB'


     PARAMS returns four values that represent the current value for the
     generic vertex attribute specified by index.  Generic vertex
     attribute 0 is unique in that it has no current state, so an error
     will be generated if INDEX is 0.  The initial value for all other
     generic vertex attributes is (0,0,0,1).

All of the parameters except `GL_CURRENT_VERTEX_ATTRIB' represent
client-side state.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to
`GL_MAX_VERTEX_ATTRIBS'.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_OPERATION' is generated if INDEX is 0 and PNAME is
`GL_CURRENT_VERTEX_ATTRIB'.")

(define-gl-procedures
  ((glGetBooleanv
     (pname GLenum)
     (params GLboolean-*)
     ->
     void)
   (glGetDoublev
     (pname GLenum)
     (params GLdouble-*)
     ->
     void)
   (glGetFloatv
     (pname GLenum)
     (params GLfloat-*)
     ->
     void)
   (glGetIntegerv
     (pname GLenum)
     (params GLint-*)
     ->
     void))
  "Return the value or values of a selected parameter.

PNAME
     Specifies the parameter value to be returned.  The symbolic
     constants in the list below are accepted.

PARAMS
     Returns the value or values of the specified parameter.

These four commands return values for simple state variables in GL.
PNAME is a symbolic constant indicating the state variable to be
returned, and PARAMS is a pointer to an array of the indicated type in
which to place the returned data.

Type conversion is performed if PARAMS has a different type than the
state variable value being requested.  If `glGetBooleanv' is called, a
floating-point (or integer) value is converted to `GL_FALSE' if and only
if it is 0.0 (or 0).  Otherwise, it is converted to `GL_TRUE'.  If
`glGetIntegerv' is called, boolean values are returned as `GL_TRUE' or
`GL_FALSE', and most floating-point values are rounded to the nearest
integer value.  Floating-point colors and normals, however, are returned
with a linear mapping that maps 1.0 to the most positive representable
integer value and -1.0 to the most negative representable integer value.
If `glGetFloatv' or `glGetDoublev' is called, boolean values are
returned as `GL_TRUE' or `GL_FALSE', and integer values are converted to
floating-point values.

The following symbolic constants are accepted by PNAME:

`GL_ACCUM_ALPHA_BITS'


     PARAMS returns one value, the number of alpha bitplanes in the
     accumulation buffer.

`GL_ACCUM_BLUE_BITS'


     PARAMS returns one value, the number of blue bitplanes in the
     accumulation buffer.

`GL_ACCUM_CLEAR_VALUE'


     PARAMS returns four values: the red, green, blue, and alpha values
     used to clear the accumulation buffer.  Integer values, if
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 returns the most positive
     representable integer value, and -1.0 returns the most negative
     representable integer value.  The initial value is (0, 0, 0, 0).
     See `glClearAccum'.

`GL_ACCUM_GREEN_BITS'


     PARAMS returns one value, the number of green bitplanes in the
     accumulation buffer.

`GL_ACCUM_RED_BITS'


     PARAMS returns one value, the number of red bitplanes in the
     accumulation buffer.

`GL_ACTIVE_TEXTURE'


     PARAMS returns a single value indicating the active multitexture
     unit.  The initial value is `GL_TEXTURE0'.  See `glActiveTexture'.

`GL_ALIASED_POINT_SIZE_RANGE'


     PARAMS returns two values, the smallest and largest supported sizes
     for aliased points.

`GL_ALIASED_LINE_WIDTH_RANGE'


     PARAMS returns two values, the smallest and largest supported
     widths for aliased lines.

`GL_ALPHA_BIAS'


     PARAMS returns one value, the alpha bias factor used during pixel
     transfers.  The initial value is 0.  See `glPixelTransfer'.

`GL_ALPHA_BITS'


     PARAMS returns one value, the number of alpha bitplanes in each
     color buffer.

`GL_ALPHA_SCALE'


     PARAMS returns one value, the alpha scale factor used during pixel
     transfers.  The initial value is 1.  See `glPixelTransfer'.

`GL_ALPHA_TEST'


     PARAMS returns a single boolean value indicating whether alpha
     testing of fragments is enabled.  The initial value is `GL_FALSE'.
     See `glAlphaFunc'.

`GL_ALPHA_TEST_FUNC'PARAMS returns one value,


     the symbolic name of the alpha test function.  The initial value is
     `GL_ALWAYS'.  See `glAlphaFunc'.

`GL_ALPHA_TEST_REF'


     PARAMS returns one value, the reference value for the alpha test.
     The initial value is 0.  See `glAlphaFunc'.  An integer value, if
     requested, is linearly mapped from the internal floating-point
     representation such that 1.0 returns the most positive
     representable integer value, and -1.0 returns the most negative
     representable integer value.

`GL_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     currently bound to the target `GL_ARRAY_BUFFER'.  If no buffer
     object is bound to this target, 0 is returned.  The initial value
     is 0.  See `glBindBuffer'.

`GL_ATTRIB_STACK_DEPTH'


     PARAMS returns one value, the depth of the attribute stack.  If the
     stack is empty, 0 is returned.  The initial value is 0.  See
     `glPushAttrib'.

`GL_AUTO_NORMAL'


     PARAMS returns a single boolean value indicating whether 2D map
     evaluation automatically generates surface normals.  The initial
     value is `GL_FALSE'.  See `glMap2'.

`GL_AUX_BUFFERS'


     PARAMS returns one value, the number of auxiliary color buffers
     available.

`GL_BLEND'


     PARAMS returns a single boolean value indicating whether blending
     is enabled.  The initial value is `GL_FALSE'.  See `glBlendFunc'.

`GL_BLEND_COLOR'


     PARAMS returns four values, the red, green, blue, and alpha values
     which are the components of the blend color.  See `glBlendColor'.

`GL_BLEND_DST_ALPHA'


     PARAMS returns one value, the symbolic constant identifying the
     alpha destination blend function.  The initial value is `GL_ZERO'.
     See `glBlendFunc' and `glBlendFuncSeparate'.

`GL_BLEND_DST_RGB'


     PARAMS returns one value, the symbolic constant identifying the RGB
     destination blend function.  The initial value is `GL_ZERO'.  See
     `glBlendFunc' and `glBlendFuncSeparate'.

`GL_BLEND_EQUATION_RGB'


     PARAMS returns one value, a symbolic constant indicating whether
     the RGB blend equation is `GL_FUNC_ADD', `GL_FUNC_SUBTRACT',
     `GL_FUNC_REVERSE_SUBTRACT', `GL_MIN' or `GL_MAX'.  See
     `glBlendEquationSeparate'.

`GL_BLEND_EQUATION_ALPHA'


     PARAMS returns one value, a symbolic constant indicating whether
     the Alpha blend equation is `GL_FUNC_ADD', `GL_FUNC_SUBTRACT',
     `GL_FUNC_REVERSE_SUBTRACT', `GL_MIN' or `GL_MAX'.  See
     `glBlendEquationSeparate'.

`GL_BLEND_SRC_ALPHA'


     PARAMS returns one value, the symbolic constant identifying the
     alpha source blend function.  The initial value is `GL_ONE'.  See
     `glBlendFunc' and `glBlendFuncSeparate'.

`GL_BLEND_SRC_RGB'


     PARAMS returns one value, the symbolic constant identifying the RGB
     source blend function.  The initial value is `GL_ONE'.  See
     `glBlendFunc' and `glBlendFuncSeparate'.

`GL_BLUE_BIAS'


     PARAMS returns one value, the blue bias factor used during pixel
     transfers.  The initial value is 0.  See `glPixelTransfer'.

`GL_BLUE_BITS'


     PARAMS returns one value, the number of blue bitplanes in each
     color buffer.

`GL_BLUE_SCALE'


     PARAMS returns one value, the blue scale factor used during pixel
     transfers.  The initial value is 1.  See `glPixelTransfer'.

`GL_CLIENT_ACTIVE_TEXTURE'


     PARAMS returns a single integer value indicating the current client
     active multitexture unit.  The initial value is `GL_TEXTURE0'.  See
     `glClientActiveTexture'.

`GL_CLIENT_ATTRIB_STACK_DEPTH'


     PARAMS returns one value indicating the depth of the attribute
     stack.  The initial value is 0.  See `glPushClientAttrib'.

`GL_CLIP_PLANE'I


     PARAMS returns a single boolean value indicating whether the
     specified clipping plane is enabled.  The initial value is
     `GL_FALSE'.  See `glClipPlane'.

`GL_COLOR_ARRAY'


     PARAMS returns a single boolean value indicating whether the color
     array is enabled.  The initial value is `GL_FALSE'.  See
     `glColorPointer'.

`GL_COLOR_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the color array.  This buffer object would have
     been bound to the target `GL_ARRAY_BUFFER' at the time of the most
     recent call to `glColorPointer'.  If no buffer object was bound to
     this target, 0 is returned.  The initial value is 0.  See
     `glBindBuffer'.

`GL_COLOR_ARRAY_SIZE'


     PARAMS returns one value, the number of components per color in the
     color array.  The initial value is 4.  See `glColorPointer'.

`GL_COLOR_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive
     colors in the color array.  The initial value is 0.  See
     `glColorPointer'.

`GL_COLOR_ARRAY_TYPE'


     PARAMS returns one value, the data type of each component in the
     color array.  The initial value is `GL_FLOAT'.  See
     `glColorPointer'.

`GL_COLOR_CLEAR_VALUE'


     PARAMS returns four values: the red, green, blue, and alpha values
     used to clear the color buffers.  Integer values, if requested, are
     linearly mapped from the internal floating-point representation
     such that 1.0 returns the most positive representable integer
     value, and -1.0 returns the most negative representable integer
     value.  The initial value is (0, 0, 0, 0).  See `glClearColor'.

`GL_COLOR_LOGIC_OP'


     PARAMS returns a single boolean value indicating whether a
     fragment's RGBA color values are merged into the framebuffer using
     a logical operation.  The initial value is `GL_FALSE'.  See
     `glLogicOp'.

`GL_COLOR_MATERIAL'


     PARAMS returns a single boolean value indicating whether one or
     more material parameters are tracking the current color.  The
     initial value is `GL_FALSE'.  See `glColorMaterial'.

`GL_COLOR_MATERIAL_FACE'


     PARAMS returns one value, a symbolic constant indicating which
     materials have a parameter that is tracking the current color.  The
     initial value is `GL_FRONT_AND_BACK'.  See `glColorMaterial'.

`GL_COLOR_MATERIAL_PARAMETER'


     PARAMS returns one value, a symbolic constant indicating which
     material parameters are tracking the current color.  The initial
     value is `GL_AMBIENT_AND_DIFFUSE'.  See `glColorMaterial'.

`GL_COLOR_MATRIX'


     PARAMS returns sixteen values: the color matrix on the top of the
     color matrix stack.  Initially this matrix is the identity matrix.
     See `glPushMatrix'.

`GL_COLOR_MATRIX_STACK_DEPTH'


     PARAMS returns one value, the maximum supported depth of the
     projection matrix stack.  The value must be at least 2.  See
     `glPushMatrix'.

`GL_COLOR_SUM'


     PARAMS returns a single boolean value indicating whether primary
     and secondary color sum is enabled.  See `glSecondaryColor'.

`GL_COLOR_TABLE'


     PARAMS returns a single boolean value indicating whether the color
     table lookup is enabled.  See `glColorTable'.

`GL_COLOR_WRITEMASK'


     PARAMS returns four boolean values: the red, green, blue, and alpha
     write enables for the color buffers.  The initial value is
     (`GL_TRUE', `GL_TRUE', `GL_TRUE', `GL_TRUE').  See `glColorMask'.

`GL_COMPRESSED_TEXTURE_FORMATS'


     PARAMS returns a list of symbolic constants of length
     `GL_NUM_COMPRESSED_TEXTURE_FORMATS' indicating which compressed
     texture formats are available.  See `glCompressedTexImage2D'.

`GL_CONVOLUTION_1D'


     PARAMS returns a single boolean value indicating whether 1D
     convolution is enabled.  The initial value is `GL_FALSE'.  See
     `glConvolutionFilter1D'.

`GL_CONVOLUTION_2D'


     PARAMS returns a single boolean value indicating whether 2D
     convolution is enabled.  The initial value is `GL_FALSE'.  See
     `glConvolutionFilter2D'.

`GL_CULL_FACE'


     PARAMS returns a single boolean value indicating whether polygon
     culling is enabled.  The initial value is `GL_FALSE'.  See
     `glCullFace'.

`GL_CULL_FACE_MODE'


     PARAMS returns one value, a symbolic constant indicating which
     polygon faces are to be culled.  The initial value is `GL_BACK'.
     See `glCullFace'.

`GL_CURRENT_COLOR'


     PARAMS returns four values: the red, green, blue, and alpha values
     of the current color.  Integer values, if requested, are linearly
     mapped from the internal floating-point representation such that
     1.0 returns the most positive representable integer value, and -1.0
     returns the most negative representable integer value.  The initial
     value is (1, 1, 1, 1).  See `glColor'.

`GL_CURRENT_FOG_COORD'


     PARAMS returns one value, the current fog coordinate.  The initial
     value is 0.  See `glFogCoord'.

`GL_CURRENT_INDEX'


     PARAMS returns one value, the current color index.  The initial
     value is 1.  See `glIndex'.

`GL_CURRENT_NORMAL'


     PARAMS returns three values: the X, Y, and Z values of the current
     normal.  Integer values, if requested, are linearly mapped from the
     internal floating-point representation such that 1.0 returns the
     most positive representable integer value, and -1.0 returns the
     most negative representable integer value.  The initial value is
     (0, 0, 1).  See `glNormal'.

`GL_CURRENT_PROGRAM'


     PARAMS returns one value, the name of the program object that is
     currently active, or 0 if no program object is active.  See
     `glUseProgram'.

`GL_CURRENT_RASTER_COLOR'


     PARAMS returns four values: the red, green, blue, and alpha color
     values of the current raster position.  Integer values, if
     requested, are linearly mapped from the internal floating-point
     representation such that 1.0 returns the most positive
     representable integer value, and -1.0 returns the most negative
     representable integer value.  The initial value is (1, 1, 1, 1).
     See `glRasterPos'.

`GL_CURRENT_RASTER_DISTANCE'


     PARAMS returns one value, the distance from the eye to the current
     raster position.  The initial value is 0.  See `glRasterPos'.

`GL_CURRENT_RASTER_INDEX'


     PARAMS returns one value, the color index of the current raster
     position.  The initial value is 1.  See `glRasterPos'.

`GL_CURRENT_RASTER_POSITION'


     PARAMS returns four values: the X, Y, Z, and W components of the
     current raster position.  X, Y, and Z are in window coordinates,
     and W is in clip coordinates.  The initial value is (0, 0, 0, 1).
     See `glRasterPos'.

`GL_CURRENT_RASTER_POSITION_VALID'


     PARAMS returns a single boolean value indicating whether the
     current raster position is valid.  The initial value is `GL_TRUE'.
     See `glRasterPos'.

`GL_CURRENT_RASTER_SECONDARY_COLOR'


     PARAMS returns four values: the red, green, blue, and alpha
     secondary color values of the current raster position.  Integer
     values, if requested, are linearly mapped from the internal
     floating-point representation such that 1.0 returns the most
     positive representable integer value, and -1.0 returns the most
     negative representable integer value.  The initial value is (1, 1,
     1, 1).  See `glRasterPos'.

`GL_CURRENT_RASTER_TEXTURE_COORDS'


     PARAMS returns four values: the S, T, R, and Q texture coordinates
     of the current raster position.  The initial value is (0, 0, 0, 1).
     See `glRasterPos' and `glMultiTexCoord'.

`GL_CURRENT_SECONDARY_COLOR'


     PARAMS returns four values: the red, green, blue, and alpha values
     of the current secondary color.  Integer values, if requested, are
     linearly mapped from the internal floating-point representation
     such that 1.0 returns the most positive representable integer
     value, and -1.0 returns the most negative representable integer
     value.  The initial value is (0, 0, 0, 0).  See `glSecondaryColor'.

`GL_CURRENT_TEXTURE_COORDS'


     PARAMS returns four values: the S, T, R, and Q current texture
     coordinates.  The initial value is (0, 0, 0, 1).  See
     `glMultiTexCoord'.

`GL_DEPTH_BIAS'


     PARAMS returns one value, the depth bias factor used during pixel
     transfers.  The initial value is 0.  See `glPixelTransfer'.

`GL_DEPTH_BITS'


     PARAMS returns one value, the number of bitplanes in the depth
     buffer.

`GL_DEPTH_CLEAR_VALUE'


     PARAMS returns one value, the value that is used to clear the depth
     buffer.  Integer values, if requested, are linearly mapped from the
     internal floating-point representation such that 1.0 returns the
     most positive representable integer value, and -1.0 returns the
     most negative representable integer value.  The initial value is 1.
     See `glClearDepth'.

`GL_DEPTH_FUNC'


     PARAMS returns one value, the symbolic constant that indicates the
     depth comparison function.  The initial value is `GL_LESS'.  See
     `glDepthFunc'.

`GL_DEPTH_RANGE'


     PARAMS returns two values: the near and far mapping limits for the
     depth buffer.  Integer values, if requested, are linearly mapped
     from the internal floating-point representation such that 1.0
     returns the most positive representable integer value, and -1.0
     returns the most negative representable integer value.  The initial
     value is (0, 1).  See `glDepthRange'.

`GL_DEPTH_SCALE'


     PARAMS returns one value, the depth scale factor used during pixel
     transfers.  The initial value is 1.  See `glPixelTransfer'.

`GL_DEPTH_TEST'


     PARAMS returns a single boolean value indicating whether depth
     testing of fragments is enabled.  The initial value is `GL_FALSE'.
     See `glDepthFunc' and `glDepthRange'.

`GL_DEPTH_WRITEMASK'


     PARAMS returns a single boolean value indicating if the depth
     buffer is enabled for writing.  The initial value is `GL_TRUE'.  See
     `glDepthMask'.

`GL_DITHER'


     PARAMS returns a single boolean value indicating whether dithering
     of fragment colors and indices is enabled.  The initial value is
     `GL_TRUE'.

`GL_DOUBLEBUFFER'


     PARAMS returns a single boolean value indicating whether double
     buffering is supported.

`GL_DRAW_BUFFER'


     PARAMS returns one value, a symbolic constant indicating which
     buffers are being drawn to.  See `glDrawBuffer'.  The initial value
     is `GL_BACK' if there are back buffers, otherwise it is `GL_FRONT'.

`GL_DRAW_BUFFER'I


     PARAMS returns one value, a symbolic constant indicating which
     buffers are being drawn to by the corresponding output color.  See
     `glDrawBuffers'.  The initial value of `GL_DRAW_BUFFER0' is
     `GL_BACK' if there are back buffers, otherwise it is `GL_FRONT'.
     The initial values of draw buffers for all other output colors is
     `GL_NONE'.

`GL_EDGE_FLAG'


     PARAMS returns a single boolean value indicating whether the
     current edge flag is `GL_TRUE' or `GL_FALSE'.  The initial value is
     `GL_TRUE'.  See `glEdgeFlag'.

`GL_EDGE_FLAG_ARRAY'


     PARAMS returns a single boolean value indicating whether the edge
     flag array is enabled.  The initial value is `GL_FALSE'.  See
     `glEdgeFlagPointer'.

`GL_EDGE_FLAG_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the edge flag array.  This buffer object would have
     been bound to the target `GL_ARRAY_BUFFER' at the time of the most
     recent call to `glEdgeFlagPointer'.  If no buffer object was bound
     to this target, 0 is returned.  The initial value is 0.  See
     `glBindBuffer'.

`GL_EDGE_FLAG_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive edge
     flags in the edge flag array.  The initial value is 0.  See
     `glEdgeFlagPointer'.

`GL_ELEMENT_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     currently bound to the target `GL_ELEMENT_ARRAY_BUFFER'.  If no
     buffer object is bound to this target, 0 is returned.  The initial
     value is 0.  See `glBindBuffer'.

`GL_FEEDBACK_BUFFER_SIZE'


     PARAMS returns one value, the size of the feedback buffer.  See
     `glFeedbackBuffer'.

`GL_FEEDBACK_BUFFER_TYPE'


     PARAMS returns one value, the type of the feedback buffer.  See
     `glFeedbackBuffer'.

`GL_FOG'


     PARAMS returns a single boolean value indicating whether fogging is
     enabled.  The initial value is `GL_FALSE'.  See `glFog'.

`GL_FOG_COORD_ARRAY'


     PARAMS returns a single boolean value indicating whether the fog
     coordinate array is enabled.  The initial value is `GL_FALSE'.  See
     `glFogCoordPointer'.

`GL_FOG_COORD_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the fog coordinate array.  This buffer object would
     have been bound to the target `GL_ARRAY_BUFFER' at the time of the
     most recent call to `glFogCoordPointer'.  If no buffer object was
     bound to this target, 0 is returned.  The initial value is 0.  See
     `glBindBuffer'.

`GL_FOG_COORD_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive fog
     coordinates in the fog coordinate array.  The initial value is 0.
     See `glFogCoordPointer'.

`GL_FOG_COORD_ARRAY_TYPE'


     PARAMS returns one value, the type of the fog coordinate array.  The
     initial value is `GL_FLOAT'.  See `glFogCoordPointer'.

`GL_FOG_COORD_SRC'


     PARAMS returns one value, a symbolic constant indicating the source
     of the fog coordinate.  The initial value is `GL_FRAGMENT_DEPTH'.
     See `glFog'.

`GL_FOG_COLOR'


     PARAMS returns four values: the red, green, blue, and alpha
     components of the fog color.  Integer values, if requested, are
     linearly mapped from the internal floating-point representation
     such that 1.0 returns the most positive representable integer
     value, and -1.0 returns the most negative representable integer
     value.  The initial value is (0, 0, 0, 0).  See `glFog'.

`GL_FOG_DENSITY'


     PARAMS returns one value, the fog density parameter.  The initial
     value is 1.  See `glFog'.

`GL_FOG_END'


     PARAMS returns one value, the end factor for the linear fog
     equation.  The initial value is 1.  See `glFog'.

`GL_FOG_HINT'


     PARAMS returns one value, a symbolic constant indicating the mode
     of the fog hint.  The initial value is `GL_DONT_CARE'.  See
     `glHint'.

`GL_FOG_INDEX'


     PARAMS returns one value, the fog color index.  The initial value
     is 0.  See `glFog'.

`GL_FOG_MODE'


     PARAMS returns one value, a symbolic constant indicating which fog
     equation is selected.  The initial value is `GL_EXP'.  See `glFog'.

`GL_FOG_START'


     PARAMS returns one value, the start factor for the linear fog
     equation.  The initial value is 0.  See `glFog'.

`GL_FRAGMENT_SHADER_DERIVATIVE_HINT'


     PARAMS returns one value, a symbolic constant indicating the mode
     of the derivative accuracy hint for fragment shaders.  The initial
     value is `GL_DONT_CARE'.  See `glHint'.

`GL_FRONT_FACE'


     PARAMS returns one value, a symbolic constant indicating whether
     clockwise or counterclockwise polygon winding is treated as
     front-facing.  The initial value is `GL_CCW'.  See `glFrontFace'.

`GL_GENERATE_MIPMAP_HINT'


     PARAMS returns one value, a symbolic constant indicating the mode
     of the mipmap generation filtering hint.  The initial value is
     `GL_DONT_CARE'.  See `glHint'.

`GL_GREEN_BIAS'


     PARAMS returns one value, the green bias factor used during pixel
     transfers.  The initial value is 0.

`GL_GREEN_BITS'


     PARAMS returns one value, the number of green bitplanes in each
     color buffer.

`GL_GREEN_SCALE'


     PARAMS returns one value, the green scale factor used during pixel
     transfers.  The initial value is 1.  See `glPixelTransfer'.

`GL_HISTOGRAM'


     PARAMS returns a single boolean value indicating whether histogram
     is enabled.  The initial value is `GL_FALSE'.  See `glHistogram'.

`GL_INDEX_ARRAY'


     PARAMS returns a single boolean value indicating whether the color
     index array is enabled.  The initial value is `GL_FALSE'.  See
     `glIndexPointer'.

`GL_INDEX_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the color index array.  This buffer object would
     have been bound to the target `GL_ARRAY_BUFFER' at the time of the
     most recent call to `glIndexPointer'.  If no buffer object was
     bound to this target, 0 is returned.  The initial value is 0.  See
     `glBindBuffer'.

`GL_INDEX_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive color
     indexes in the color index array.  The initial value is 0.  See
     `glIndexPointer'.

`GL_INDEX_ARRAY_TYPE'


     PARAMS returns one value, the data type of indexes in the color
     index array.  The initial value is `GL_FLOAT'.  See
     `glIndexPointer'.

`GL_INDEX_BITS'


     PARAMS returns one value, the number of bitplanes in each color
     index buffer.

`GL_INDEX_CLEAR_VALUE'


     PARAMS returns one value, the color index used to clear the color
     index buffers.  The initial value is 0.  See `glClearIndex'.

`GL_INDEX_LOGIC_OP'


     PARAMS returns a single boolean value indicating whether a
     fragment's index values are merged into the framebuffer using a
     logical operation.  The initial value is `GL_FALSE'.  See
     `glLogicOp'.

`GL_INDEX_MODE'


     PARAMS returns a single boolean value indicating whether the GL is
     in color index mode (`GL_TRUE') or RGBA mode (`GL_FALSE').

`GL_INDEX_OFFSET'


     PARAMS returns one value, the offset added to color and stencil
     indices during pixel transfers.  The initial value is 0.  See
     `glPixelTransfer'.

`GL_INDEX_SHIFT'


     PARAMS returns one value, the amount that color and stencil indices
     are shifted during pixel transfers.  The initial value is 0.  See
     `glPixelTransfer'.

`GL_INDEX_WRITEMASK'


     PARAMS returns one value, a mask indicating which bitplanes of each
     color index buffer can be written.  The initial value is all 1's.
     See `glIndexMask'.

`GL_LIGHT'I


     PARAMS returns a single boolean value indicating whether the
     specified light is enabled.  The initial value is `GL_FALSE'.  See
     `glLight' and `glLightModel'.

`GL_LIGHTING'


     PARAMS returns a single boolean value indicating whether lighting
     is enabled.  The initial value is `GL_FALSE'.  See `glLightModel'.

`GL_LIGHT_MODEL_AMBIENT'


     PARAMS returns four values: the red, green, blue, and alpha
     components of the ambient intensity of the entire scene.  Integer
     values, if requested, are linearly mapped from the internal
     floating-point representation such that 1.0 returns the most
     positive representable integer value, and -1.0 returns the most
     negative representable integer value.  The initial value is (0.2,
     0.2, 0.2, 1.0).  See `glLightModel'.

`GL_LIGHT_MODEL_COLOR_CONTROL'


     PARAMS returns single enumerated value indicating whether specular
     reflection calculations are separated from normal lighting
     computations.  The initial value is `GL_SINGLE_COLOR'.

`GL_LIGHT_MODEL_LOCAL_VIEWER'


     PARAMS returns a single boolean value indicating whether specular
     reflection calculations treat the viewer as being local to the
     scene.  The initial value is `GL_FALSE'.  See `glLightModel'.

`GL_LIGHT_MODEL_TWO_SIDE'


     PARAMS returns a single boolean value indicating whether separate
     materials are used to compute lighting for front- and back-facing
     polygons.  The initial value is `GL_FALSE'.  See `glLightModel'.

`GL_LINE_SMOOTH'


     PARAMS returns a single boolean value indicating whether
     antialiasing of lines is enabled.  The initial value is `GL_FALSE'.
     See `glLineWidth'.

`GL_LINE_SMOOTH_HINT'


     PARAMS returns one value, a symbolic constant indicating the mode
     of the line antialiasing hint.  The initial value is
     `GL_DONT_CARE'.  See `glHint'.

`GL_LINE_STIPPLE'


     PARAMS returns a single boolean value indicating whether stippling
     of lines is enabled.  The initial value is `GL_FALSE'.  See
     `glLineStipple'.

`GL_LINE_STIPPLE_PATTERN'


     PARAMS returns one value, the 16-bit line stipple pattern.  The
     initial value is all 1's.  See `glLineStipple'.

`GL_LINE_STIPPLE_REPEAT'


     PARAMS returns one value, the line stipple repeat factor.  The
     initial value is 1.  See `glLineStipple'.

`GL_LINE_WIDTH'


     PARAMS returns one value, the line width as specified with
     `glLineWidth'.  The initial value is 1.

`GL_LINE_WIDTH_GRANULARITY'


     PARAMS returns one value, the width difference between adjacent
     supported widths for antialiased lines.  See `glLineWidth'.

`GL_LINE_WIDTH_RANGE'


     PARAMS returns two values: the smallest and largest supported
     widths for antialiased lines.  See `glLineWidth'.

`GL_LIST_BASE'


     PARAMS returns one value, the base offset added to all names in
     arrays presented to `glCallLists'.  The initial value is 0.  See
     `glListBase'.

`GL_LIST_INDEX'


     PARAMS returns one value, the name of the display list currently
     under construction.  0 is returned if no display list is currently
     under construction.  The initial value is 0.  See `glNewList'.

`GL_LIST_MODE'


     PARAMS returns one value, a symbolic constant indicating the
     construction mode of the display list currently under construction.
     The initial value is 0.  See `glNewList'.

`GL_LOGIC_OP_MODE'


     PARAMS returns one value, a symbolic constant indicating the
     selected logic operation mode.  The initial value is `GL_COPY'.  See
     `glLogicOp'.

`GL_MAP1_COLOR_4'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates colors.  The initial value is `GL_FALSE'.  See
     `glMap1'.

`GL_MAP1_GRID_DOMAIN'


     PARAMS returns two values: the endpoints of the 1D map's grid
     domain.  The initial value is (0, 1).  See `glMapGrid'.

`GL_MAP1_GRID_SEGMENTS'


     PARAMS returns one value, the number of partitions in the 1D map's
     grid domain.  The initial value is 1.  See `glMapGrid'.

`GL_MAP1_INDEX'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates color indices.  The initial value is
     `GL_FALSE'.  See `glMap1'.

`GL_MAP1_NORMAL'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates normals.  The initial value is `GL_FALSE'.  See
     `glMap1'.

`GL_MAP1_TEXTURE_COORD_1'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates 1D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap1'.

`GL_MAP1_TEXTURE_COORD_2'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates 2D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap1'.

`GL_MAP1_TEXTURE_COORD_3'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates 3D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap1'.

`GL_MAP1_TEXTURE_COORD_4'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates 4D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap1'.

`GL_MAP1_VERTEX_3'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates 3D vertex coordinates.  The initial value is
     `GL_FALSE'.  See `glMap1'.

`GL_MAP1_VERTEX_4'


     PARAMS returns a single boolean value indicating whether 1D
     evaluation generates 4D vertex coordinates.  The initial value is
     `GL_FALSE'.  See `glMap1'.

`GL_MAP2_COLOR_4'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates colors.  The initial value is `GL_FALSE'.  See
     `glMap2'.

`GL_MAP2_GRID_DOMAIN'


     PARAMS returns four values: the endpoints of the 2D map's I and J
     grid domains.  The initial value is (0,1; 0,1).  See `glMapGrid'.

`GL_MAP2_GRID_SEGMENTS'


     PARAMS returns two values: the number of partitions in the 2D map's
     I and J grid domains.  The initial value is (1,1).  See
     `glMapGrid'.

`GL_MAP2_INDEX'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates color indices.  The initial value is
     `GL_FALSE'.  See `glMap2'.

`GL_MAP2_NORMAL'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates normals.  The initial value is `GL_FALSE'.  See
     `glMap2'.

`GL_MAP2_TEXTURE_COORD_1'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates 1D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap2'.

`GL_MAP2_TEXTURE_COORD_2'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates 2D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap2'.

`GL_MAP2_TEXTURE_COORD_3'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates 3D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap2'.

`GL_MAP2_TEXTURE_COORD_4'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates 4D texture coordinates.  The initial value is
     `GL_FALSE'.  See `glMap2'.

`GL_MAP2_VERTEX_3'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates 3D vertex coordinates.  The initial value is
     `GL_FALSE'.  See `glMap2'.

`GL_MAP2_VERTEX_4'


     PARAMS returns a single boolean value indicating whether 2D
     evaluation generates 4D vertex coordinates.  The initial value is
     `GL_FALSE'.  See `glMap2'.

`GL_MAP_COLOR'


     PARAMS returns a single boolean value indicating if colors and
     color indices are to be replaced by table lookup during pixel
     transfers.  The initial value is `GL_FALSE'.  See
     `glPixelTransfer'.

`GL_MAP_STENCIL'


     PARAMS returns a single boolean value indicating if stencil indices
     are to be replaced by table lookup during pixel transfers.  The
     initial value is `GL_FALSE'.  See `glPixelTransfer'.

`GL_MATRIX_MODE'


     PARAMS returns one value, a symbolic constant indicating which
     matrix stack is currently the target of all matrix operations.  The
     initial value is `GL_MODELVIEW'.  See `glMatrixMode'.

`GL_MAX_3D_TEXTURE_SIZE'


     PARAMS returns one value, a rough estimate of the largest 3D
     texture that the GL can handle.  The value must be at least 16.  If
     the GL version is 1.2 or greater, use `GL_PROXY_TEXTURE_3D' to
     determine if a texture is too large.  See `glTexImage3D'.

`GL_MAX_CLIENT_ATTRIB_STACK_DEPTH'


     PARAMS returns one value indicating the maximum supported depth of
     the client attribute stack.  See `glPushClientAttrib'.

`GL_MAX_ATTRIB_STACK_DEPTH'


     PARAMS returns one value, the maximum supported depth of the
     attribute stack.  The value must be at least 16.  See
     `glPushAttrib'.

`GL_MAX_CLIP_PLANES'


     PARAMS returns one value, the maximum number of application-defined
     clipping planes.  The value must be at least 6.  See `glClipPlane'.

`GL_MAX_COLOR_MATRIX_STACK_DEPTH'


     PARAMS returns one value, the maximum supported depth of the color
     matrix stack.  The value must be at least 2.  See `glPushMatrix'.

`GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS'


     PARAMS returns one value, the maximum supported texture image units
     that can be used to access texture maps from the vertex shader and
     the fragment processor combined.  If both the vertex shader and the
     fragment processing stage access the same texture image unit, then
     that counts as using two texture image units against this limit.
     The value must be at least 2.  See `glActiveTexture'.

`GL_MAX_CUBE_MAP_TEXTURE_SIZE'


     PARAMS returns one value.  The value gives a rough estimate of the
     largest cube-map texture that the GL can handle.  The value must be
     at least 16.  If the GL version is 1.3 or greater, use
     `GL_PROXY_TEXTURE_CUBE_MAP' to determine if a texture is too large.
     See `glTexImage2D'.

`GL_MAX_DRAW_BUFFERS'


     PARAMS returns one value, the maximum number of simultaneous output
     colors allowed from a fragment shader using the `gl_FragData'
     built-in array.  The value must be at least 1.  See
     `glDrawBuffers'.

`GL_MAX_ELEMENTS_INDICES'


     PARAMS returns one value, the recommended maximum number of vertex
     array indices.  See `glDrawRangeElements'.

`GL_MAX_ELEMENTS_VERTICES'


     PARAMS returns one value, the recommended maximum number of vertex
     array vertices.  See `glDrawRangeElements'.

`GL_MAX_EVAL_ORDER'


     PARAMS returns one value, the maximum equation order supported by
     1D and 2D evaluators.  The value must be at least 8.  See `glMap1'
     and `glMap2'.

`GL_MAX_FRAGMENT_UNIFORM_COMPONENTS'


     PARAMS returns one value, the maximum number of individual
     floating-point, integer, or boolean values that can be held in
     uniform variable storage for a fragment shader.  The value must be
     at least 64.  See `glUniform'.

`GL_MAX_LIGHTS'


     PARAMS returns one value, the maximum number of lights.  The value
     must be at least 8.  See `glLight'.

`GL_MAX_LIST_NESTING'


     PARAMS returns one value, the maximum recursion depth allowed
     during display-list traversal.  The value must be at least 64.  See
     `glCallList'.

`GL_MAX_MODELVIEW_STACK_DEPTH'


     PARAMS returns one value, the maximum supported depth of the
     modelview matrix stack.  The value must be at least 32.  See
     `glPushMatrix'.

`GL_MAX_NAME_STACK_DEPTH'


     PARAMS returns one value, the maximum supported depth of the
     selection name stack.  The value must be at least 64.  See
     `glPushName'.

`GL_MAX_PIXEL_MAP_TABLE'


     PARAMS returns one value, the maximum supported size of a
     `glPixelMap' lookup table.  The value must be at least 32.  See
     `glPixelMap'.

`GL_MAX_PROJECTION_STACK_DEPTH'


     PARAMS returns one value, the maximum supported depth of the
     projection matrix stack.  The value must be at least 2.  See
     `glPushMatrix'.

`GL_MAX_TEXTURE_COORDS'


     PARAMS returns one value, the maximum number of texture coordinate
     sets available to vertex and fragment shaders.  The value must be
     at least 2.  See `glActiveTexture' and `glClientActiveTexture'.

`GL_MAX_TEXTURE_IMAGE_UNITS'


     PARAMS returns one value, the maximum supported texture image units
     that can be used to access texture maps from the fragment shader.
     The value must be at least 2.  See `glActiveTexture'.

`GL_MAX_TEXTURE_LOD_BIAS'


     PARAMS returns one value, the maximum, absolute value of the
     texture level-of-detail bias.  The value must be at least 4.

`GL_MAX_TEXTURE_SIZE'


     PARAMS returns one value.  The value gives a rough estimate of the
     largest texture that the GL can handle.  The value must be at least
     64.  If the GL version is 1.1 or greater, use `GL_PROXY_TEXTURE_1D'
     or `GL_PROXY_TEXTURE_2D' to determine if a texture is too large.
     See `glTexImage1D' and `glTexImage2D'.

`GL_MAX_TEXTURE_STACK_DEPTH'


     PARAMS returns one value, the maximum supported depth of the
     texture matrix stack.  The value must be at least 2.  See
     `glPushMatrix'.

`GL_MAX_TEXTURE_UNITS'


     PARAMS returns a single value indicating the number of conventional
     texture units supported.  Each conventional texture unit includes
     both a texture coordinate set and a texture image unit.
     Conventional texture units may be used for fixed-function
     (non-shader) rendering.  The value must be at least 2.  Additional
     texture coordinate sets and texture image units may be accessed
     from vertex and fragment shaders.  See `glActiveTexture' and
     `glClientActiveTexture'.

`GL_MAX_VARYING_FLOATS'


     PARAMS returns one value, the maximum number of interpolators
     available for processing varying variables used by vertex and
     fragment shaders.  This value represents the number of individual
     floating-point values that can be interpolated; varying variables
     declared as vectors, matrices, and arrays will all consume multiple
     interpolators.  The value must be at least 32.

`GL_MAX_VERTEX_ATTRIBS'


     PARAMS returns one value, the maximum number of 4-component generic
     vertex attributes accessible to a vertex shader.  The value must be
     at least 16.  See `glVertexAttrib'.

`GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS'


     PARAMS returns one value, the maximum supported texture image units
     that can be used to access texture maps from the vertex shader.  The
     value may be 0.  See `glActiveTexture'.

`GL_MAX_VERTEX_UNIFORM_COMPONENTS'


     PARAMS returns one value, the maximum number of individual
     floating-point, integer, or boolean values that can be held in
     uniform variable storage for a vertex shader.  The value must be at
     least 512.  See `glUniform'.

`GL_MAX_VIEWPORT_DIMS'


     PARAMS returns two values: the maximum supported width and height
     of the viewport.  These must be at least as large as the visible
     dimensions of the display being rendered to.  See `glViewport'.

`GL_MINMAX'


     PARAMS returns a single boolean value indicating whether pixel
     minmax values are computed.  The initial value is `GL_FALSE'.  See
     `glMinmax'.

`GL_MODELVIEW_MATRIX'


     PARAMS returns sixteen values: the modelview matrix on the top of
     the modelview matrix stack.  Initially this matrix is the identity
     matrix.  See `glPushMatrix'.

`GL_MODELVIEW_STACK_DEPTH'


     PARAMS returns one value, the number of matrices on the modelview
     matrix stack.  The initial value is 1.  See `glPushMatrix'.

`GL_NAME_STACK_DEPTH'


     PARAMS returns one value, the number of names on the selection name
     stack.  The initial value is 0.  See `glPushName'.

`GL_NORMAL_ARRAY'


     PARAMS returns a single boolean value, indicating whether the
     normal array is enabled.  The initial value is `GL_FALSE'.  See
     `glNormalPointer'.

`GL_NORMAL_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the normal array.  This buffer object would have
     been bound to the target `GL_ARRAY_BUFFER' at the time of the most
     recent call to `glNormalPointer'.  If no buffer object was bound to
     this target, 0 is returned.  The initial value is 0.  See
     `glBindBuffer'.

`GL_NORMAL_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive
     normals in the normal array.  The initial value is 0.  See
     `glNormalPointer'.

`GL_NORMAL_ARRAY_TYPE'


     PARAMS returns one value, the data type of each coordinate in the
     normal array.  The initial value is `GL_FLOAT'.  See
     `glNormalPointer'.

`GL_NORMALIZE'


     PARAMS returns a single boolean value indicating whether normals
     are automatically scaled to unit length after they have been
     transformed to eye coordinates.  The initial value is `GL_FALSE'.
     See `glNormal'.

`GL_NUM_COMPRESSED_TEXTURE_FORMATS'


     PARAMS returns a single integer value indicating the number of
     available compressed texture formats.  The minimum value is 0.  See
     `glCompressedTexImage2D'.

`GL_PACK_ALIGNMENT'


     PARAMS returns one value, the byte alignment used for writing pixel
     data to memory.  The initial value is 4.  See `glPixelStore'.

`GL_PACK_IMAGE_HEIGHT'


     PARAMS returns one value, the image height used for writing pixel
     data to memory.  The initial value is 0.  See `glPixelStore'.

`GL_PACK_LSB_FIRST'


     PARAMS returns a single boolean value indicating whether single-bit
     pixels being written to memory are written first to the least
     significant bit of each unsigned byte.  The initial value is
     `GL_FALSE'.  See `glPixelStore'.

`GL_PACK_ROW_LENGTH'


     PARAMS returns one value, the row length used for writing pixel
     data to memory.  The initial value is 0.  See `glPixelStore'.

`GL_PACK_SKIP_IMAGES'


     PARAMS returns one value, the number of pixel images skipped before
     the first pixel is written into memory.  The initial value is 0.
     See `glPixelStore'.

`GL_PACK_SKIP_PIXELS'


     PARAMS returns one value, the number of pixel locations skipped
     before the first pixel is written into memory.  The initial value
     is 0.  See `glPixelStore'.

`GL_PACK_SKIP_ROWS'


     PARAMS returns one value, the number of rows of pixel locations
     skipped before the first pixel is written into memory.  The initial
     value is 0.  See `glPixelStore'.

`GL_PACK_SWAP_BYTES'


     PARAMS returns a single boolean value indicating whether the bytes
     of two-byte and four-byte pixel indices and components are swapped
     before being written to memory.  The initial value is `GL_FALSE'.
     See `glPixelStore'.

`GL_PERSPECTIVE_CORRECTION_HINT'


     PARAMS returns one value, a symbolic constant indicating the mode
     of the perspective correction hint.  The initial value is
     `GL_DONT_CARE'.  See `glHint'.

`GL_PIXEL_MAP_A_TO_A_SIZE'


     PARAMS returns one value, the size of the alpha-to-alpha pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_B_TO_B_SIZE'


     PARAMS returns one value, the size of the blue-to-blue pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_G_TO_G_SIZE'


     PARAMS returns one value, the size of the green-to-green pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_I_TO_A_SIZE'


     PARAMS returns one value, the size of the index-to-alpha pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_I_TO_B_SIZE'


     PARAMS returns one value, the size of the index-to-blue pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_I_TO_G_SIZE'


     PARAMS returns one value, the size of the index-to-green pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_I_TO_I_SIZE'


     PARAMS returns one value, the size of the index-to-index pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_I_TO_R_SIZE'


     PARAMS returns one value, the size of the index-to-red pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_R_TO_R_SIZE'


     PARAMS returns one value, the size of the red-to-red pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_MAP_S_TO_S_SIZE'


     PARAMS returns one value, the size of the stencil-to-stencil pixel
     translation table.  The initial value is 1.  See `glPixelMap'.

`GL_PIXEL_PACK_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     currently bound to the target `GL_PIXEL_PACK_BUFFER'.  If no buffer
     object is bound to this target, 0 is returned.  The initial value
     is 0.  See `glBindBuffer'.

`GL_PIXEL_UNPACK_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     currently bound to the target `GL_PIXEL_UNPACK_BUFFER'.  If no
     buffer object is bound to this target, 0 is returned.  The initial
     value is 0.  See `glBindBuffer'.

`GL_POINT_DISTANCE_ATTENUATION'


     PARAMS returns three values, the coefficients for computing the
     attenuation value for points.  See `glPointParameter'.

`GL_POINT_FADE_THRESHOLD_SIZE'


     PARAMS returns one value, the point size threshold for determining
     the point size.  See `glPointParameter'.

`GL_POINT_SIZE'


     PARAMS returns one value, the point size as specified by
     `glPointSize'.  The initial value is 1.

`GL_POINT_SIZE_GRANULARITY'


     PARAMS returns one value, the size difference between adjacent
     supported sizes for antialiased points.  See `glPointSize'.

`GL_POINT_SIZE_MAX'


     PARAMS returns one value, the upper bound for the attenuated point
     sizes.  The initial value is 0.0.  See `glPointParameter'.

`GL_POINT_SIZE_MIN'


     PARAMS returns one value, the lower bound for the attenuated point
     sizes.  The initial value is 1.0.  See `glPointParameter'.

`GL_POINT_SIZE_RANGE'


     PARAMS returns two values: the smallest and largest supported sizes
     for antialiased points.  The smallest size must be at most 1, and
     the largest size must be at least 1.  See `glPointSize'.

`GL_POINT_SMOOTH'


     PARAMS returns a single boolean value indicating whether
     antialiasing of points is enabled.  The initial value is
     `GL_FALSE'.  See `glPointSize'.

`GL_POINT_SMOOTH_HINT'


     PARAMS returns one value, a symbolic constant indicating the mode
     of the point antialiasing hint.  The initial value is
     `GL_DONT_CARE'.  See `glHint'.

`GL_POINT_SPRITE'


     PARAMS returns a single boolean value indicating whether point
     sprite is enabled.  The initial value is `GL_FALSE'.

`GL_POLYGON_MODE'


     PARAMS returns two values: symbolic constants indicating whether
     front-facing and back-facing polygons are rasterized as points,
     lines, or filled polygons.  The initial value is `GL_FILL'.  See
     `glPolygonMode'.

`GL_POLYGON_OFFSET_FACTOR'


     PARAMS returns one value, the scaling factor used to determine the
     variable offset that is added to the depth value of each fragment
     generated when a polygon is rasterized.  The initial value is 0.
     See `glPolygonOffset'.

`GL_POLYGON_OFFSET_UNITS'


     PARAMS returns one value.  This value is multiplied by an
     implementation-specific value and then added to the depth value of
     each fragment generated when a polygon is rasterized.  The initial
     value is 0.  See `glPolygonOffset'.

`GL_POLYGON_OFFSET_FILL'


     PARAMS returns a single boolean value indicating whether polygon
     offset is enabled for polygons in fill mode.  The initial value is
     `GL_FALSE'.  See `glPolygonOffset'.

`GL_POLYGON_OFFSET_LINE'


     PARAMS returns a single boolean value indicating whether polygon
     offset is enabled for polygons in line mode.  The initial value is
     `GL_FALSE'.  See `glPolygonOffset'.

`GL_POLYGON_OFFSET_POINT'


     PARAMS returns a single boolean value indicating whether polygon
     offset is enabled for polygons in point mode.  The initial value is
     `GL_FALSE'.  See `glPolygonOffset'.

`GL_POLYGON_SMOOTH'


     PARAMS returns a single boolean value indicating whether
     antialiasing of polygons is enabled.  The initial value is
     `GL_FALSE'.  See `glPolygonMode'.

`GL_POLYGON_SMOOTH_HINT'


     PARAMS returns one value, a symbolic constant indicating the mode
     of the polygon antialiasing hint.  The initial value is
     `GL_DONT_CARE'.  See `glHint'.

`GL_POLYGON_STIPPLE'


     PARAMS returns a single boolean value indicating whether polygon
     stippling is enabled.  The initial value is `GL_FALSE'.  See
     `glPolygonStipple'.

`GL_POST_COLOR_MATRIX_COLOR_TABLE'


     PARAMS returns a single boolean value indicating whether post color
     matrix transformation lookup is enabled.  The initial value is
     `GL_FALSE'.  See `glColorTable'.

`GL_POST_COLOR_MATRIX_RED_BIAS'


     PARAMS returns one value, the red bias factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     0.  See `glPixelTransfer'.

`GL_POST_COLOR_MATRIX_GREEN_BIAS'


     PARAMS returns one value, the green bias factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     0.  See `glPixelTransfer'

`GL_POST_COLOR_MATRIX_BLUE_BIAS'


     PARAMS returns one value, the blue bias factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     0.  See `glPixelTransfer'.

`GL_POST_COLOR_MATRIX_ALPHA_BIAS'


     PARAMS returns one value, the alpha bias factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     0.  See `glPixelTransfer'.

`GL_POST_COLOR_MATRIX_RED_SCALE'


     PARAMS returns one value, the red scale factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     1.  See `glPixelTransfer'.

`GL_POST_COLOR_MATRIX_GREEN_SCALE'


     PARAMS returns one value, the green scale factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     1.  See `glPixelTransfer'.

`GL_POST_COLOR_MATRIX_BLUE_SCALE'


     PARAMS returns one value, the blue scale factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     1.  See `glPixelTransfer'.

`GL_POST_COLOR_MATRIX_ALPHA_SCALE'


     PARAMS returns one value, the alpha scale factor applied to RGBA
     fragments after color matrix transformations.  The initial value is
     1.  See `glPixelTransfer'.

`GL_POST_CONVOLUTION_COLOR_TABLE'


     PARAMS returns a single boolean value indicating whether post
     convolution lookup is enabled.  The initial value is `GL_FALSE'.
     See `glColorTable'.

`GL_POST_CONVOLUTION_RED_BIAS'


     PARAMS returns one value, the red bias factor applied to RGBA
     fragments after convolution.  The initial value is 0.  See
     `glPixelTransfer'.

`GL_POST_CONVOLUTION_GREEN_BIAS'


     PARAMS returns one value, the green bias factor applied to RGBA
     fragments after convolution.  The initial value is 0.  See
     `glPixelTransfer'.

`GL_POST_CONVOLUTION_BLUE_BIAS'


     PARAMS returns one value, the blue bias factor applied to RGBA
     fragments after convolution.  The initial value is 0.  See
     `glPixelTransfer'.

`GL_POST_CONVOLUTION_ALPHA_BIAS'


     PARAMS returns one value, the alpha bias factor applied to RGBA
     fragments after convolution.  The initial value is 0.  See
     `glPixelTransfer'.

`GL_POST_CONVOLUTION_RED_SCALE'


     PARAMS returns one value, the red scale factor applied to RGBA
     fragments after convolution.  The initial value is 1.  See
     `glPixelTransfer'.

`GL_POST_CONVOLUTION_GREEN_SCALE'


     PARAMS returns one value, the green scale factor applied to RGBA
     fragments after convolution.  The initial value is 1.  See
     `glPixelTransfer'.

`GL_POST_CONVOLUTION_BLUE_SCALE'


     PARAMS returns one value, the blue scale factor applied to RGBA
     fragments after convolution.  The initial value is 1.  See
     `glPixelTransfer'.

`GL_POST_CONVOLUTION_ALPHA_SCALE'


     PARAMS returns one value, the alpha scale factor applied to RGBA
     fragments after convolution.  The initial value is 1.  See
     `glPixelTransfer'.

`GL_PROJECTION_MATRIX'


     PARAMS returns sixteen values: the projection matrix on the top of
     the projection matrix stack.  Initially this matrix is the identity
     matrix.  See `glPushMatrix'.

`GL_PROJECTION_STACK_DEPTH'


     PARAMS returns one value, the number of matrices on the projection
     matrix stack.  The initial value is 1.  See `glPushMatrix'.

`GL_READ_BUFFER'


     PARAMS returns one value, a symbolic constant indicating which
     color buffer is selected for reading.  The initial value is
     `GL_BACK' if there is a back buffer, otherwise it is `GL_FRONT'.
     See `glReadPixels' and `glAccum'.

`GL_RED_BIAS'


     PARAMS returns one value, the red bias factor used during pixel
     transfers.  The initial value is 0.

`GL_RED_BITS'


     PARAMS returns one value, the number of red bitplanes in each color
     buffer.

`GL_RED_SCALE'


     PARAMS returns one value, the red scale factor used during pixel
     transfers.  The initial value is 1.  See `glPixelTransfer'.

`GL_RENDER_MODE'


     PARAMS returns one value, a symbolic constant indicating whether
     the GL is in render, select, or feedback mode.  The initial value
     is `GL_RENDER'.  See `glRenderMode'.

`GL_RESCALE_NORMAL'


     PARAMS returns single boolean value indicating whether normal
     rescaling is enabled.  See `glEnable'.

`GL_RGBA_MODE'


     PARAMS returns a single boolean value indicating whether the GL is
     in RGBA mode (true) or color index mode (false).  See `glColor'.

`GL_SAMPLE_BUFFERS'


     PARAMS returns a single integer value indicating the number of
     sample buffers associated with the framebuffer.  See
     `glSampleCoverage'.

`GL_SAMPLE_COVERAGE_VALUE'


     PARAMS returns a single positive floating-point value indicating
     the current sample coverage value.  See `glSampleCoverage'.

`GL_SAMPLE_COVERAGE_INVERT'


     PARAMS returns a single boolean value indicating if the temporary
     coverage value should be inverted.  See `glSampleCoverage'.

`GL_SAMPLES'


     PARAMS returns a single integer value indicating the coverage mask
     size.  See `glSampleCoverage'.

`GL_SCISSOR_BOX'


     PARAMS returns four values: the X and Y window coordinates of the
     scissor box, followed by its width and height.  Initially the X and
     Y window coordinates are both 0 and the width and height are set to
     the size of the window.  See `glScissor'.

`GL_SCISSOR_TEST'


     PARAMS returns a single boolean value indicating whether scissoring
     is enabled.  The initial value is `GL_FALSE'.  See `glScissor'.

`GL_SECONDARY_COLOR_ARRAY'


     PARAMS returns a single boolean value indicating whether the
     secondary color array is enabled.  The initial value is `GL_FALSE'.
     See `glSecondaryColorPointer'.

`GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the secondary color array.  This buffer object
     would have been bound to the target `GL_ARRAY_BUFFER' at the time
     of the most recent call to `glSecondaryColorPointer'.  If no buffer
     object was bound to this target, 0 is returned.  The initial value
     is 0.  See `glBindBuffer'.

`GL_SECONDARY_COLOR_ARRAY_SIZE'


     PARAMS returns one value, the number of components per color in the
     secondary color array.  The initial value is 3.  See
     `glSecondaryColorPointer'.

`GL_SECONDARY_COLOR_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive
     colors in the secondary color array.  The initial value is 0.  See
     `glSecondaryColorPointer'.

`GL_SECONDARY_COLOR_ARRAY_TYPE'


     PARAMS returns one value, the data type of each component in the
     secondary color array.  The initial value is `GL_FLOAT'.  See
     `glSecondaryColorPointer'.

`GL_SELECTION_BUFFER_SIZE'


     PARAMS return one value, the size of the selection buffer.  See
     `glSelectBuffer'.

`GL_SEPARABLE_2D'


     PARAMS returns a single boolean value indicating whether 2D
     separable convolution is enabled.  The initial value is `GL_FALSE'.
     See `glSeparableFilter2D'.

`GL_SHADE_MODEL'


     PARAMS returns one value, a symbolic constant indicating whether
     the shading mode is flat or smooth.  The initial value is
     `GL_SMOOTH'.  See `glShadeModel'.

`GL_SMOOTH_LINE_WIDTH_RANGE'


     PARAMS returns two values, the smallest and largest supported
     widths for antialiased lines.  See `glLineWidth'.

`GL_SMOOTH_LINE_WIDTH_GRANULARITY'


     PARAMS returns one value, the granularity of widths for antialiased
     lines.  See `glLineWidth'.

`GL_SMOOTH_POINT_SIZE_RANGE'


     PARAMS returns two values, the smallest and largest supported
     widths for antialiased points.  See `glPointSize'.

`GL_SMOOTH_POINT_SIZE_GRANULARITY'


     PARAMS returns one value, the granularity of sizes for antialiased
     points.  See `glPointSize'.

`GL_STENCIL_BACK_FAIL'


     PARAMS returns one value, a symbolic constant indicating what
     action is taken for back-facing polygons when the stencil test
     fails.  The initial value is `GL_KEEP'.  See `glStencilOpSeparate'.

`GL_STENCIL_BACK_FUNC'


     PARAMS returns one value, a symbolic constant indicating what
     function is used for back-facing polygons to compare the stencil
     reference value with the stencil buffer value.  The initial value
     is `GL_ALWAYS'.  See `glStencilFuncSeparate'.

`GL_STENCIL_BACK_PASS_DEPTH_FAIL'


     PARAMS returns one value, a symbolic constant indicating what
     action is taken for back-facing polygons when the stencil test
     passes, but the depth test fails.  The initial value is `GL_KEEP'.
     See `glStencilOpSeparate'.

`GL_STENCIL_BACK_PASS_DEPTH_PASS'


     PARAMS returns one value, a symbolic constant indicating what
     action is taken for back-facing polygons when the stencil test
     passes and the depth test passes.  The initial value is `GL_KEEP'.
     See `glStencilOpSeparate'.

`GL_STENCIL_BACK_REF'


     PARAMS returns one value, the reference value that is compared with
     the contents of the stencil buffer for back-facing polygons.  The
     initial value is 0.  See `glStencilFuncSeparate'.

`GL_STENCIL_BACK_VALUE_MASK'


     PARAMS returns one value, the mask that is used for back-facing
     polygons to mask both the stencil reference value and the stencil
     buffer value before they are compared.  The initial value is all
     1's.  See `glStencilFuncSeparate'.

`GL_STENCIL_BACK_WRITEMASK'


     PARAMS returns one value, the mask that controls writing of the
     stencil bitplanes for back-facing polygons.  The initial value is
     all 1's.  See `glStencilMaskSeparate'.

`GL_STENCIL_BITS'


     PARAMS returns one value, the number of bitplanes in the stencil
     buffer.

`GL_STENCIL_CLEAR_VALUE'


     PARAMS returns one value, the index to which the stencil bitplanes
     are cleared.  The initial value is 0.  See `glClearStencil'.

`GL_STENCIL_FAIL'


     PARAMS returns one value, a symbolic constant indicating what
     action is taken when the stencil test fails.  The initial value is
     `GL_KEEP'.  See `glStencilOp'.  If the GL version is 2.0 or
     greater, this stencil state only affects non-polygons and
     front-facing polygons.  Back-facing polygons use separate stencil
     state.  See `glStencilOpSeparate'.

`GL_STENCIL_FUNC'


     PARAMS returns one value, a symbolic constant indicating what
     function is used to compare the stencil reference value with the
     stencil buffer value.  The initial value is `GL_ALWAYS'.  See
     `glStencilFunc'.  If the GL version is 2.0 or greater, this stencil
     state only affects non-polygons and front-facing polygons.
     Back-facing polygons use separate stencil state.  See
     `glStencilFuncSeparate'.

`GL_STENCIL_PASS_DEPTH_FAIL'


     PARAMS returns one value, a symbolic constant indicating what
     action is taken when the stencil test passes, but the depth test
     fails.  The initial value is `GL_KEEP'.  See `glStencilOp'.  If the
     GL version is 2.0 or greater, this stencil state only affects
     non-polygons and front-facing polygons.  Back-facing polygons use
     separate stencil state.  See `glStencilOpSeparate'.

`GL_STENCIL_PASS_DEPTH_PASS'


     PARAMS returns one value, a symbolic constant indicating what
     action is taken when the stencil test passes and the depth test
     passes.  The initial value is `GL_KEEP'.  See `glStencilOp'.  If
     the GL version is 2.0 or greater, this stencil state only affects
     non-polygons and front-facing polygons.  Back-facing polygons use
     separate stencil state.  See `glStencilOpSeparate'.

`GL_STENCIL_REF'


     PARAMS returns one value, the reference value that is compared with
     the contents of the stencil buffer.  The initial value is 0.  See
     `glStencilFunc'.  If the GL version is 2.0 or greater, this stencil
     state only affects non-polygons and front-facing polygons.
     Back-facing polygons use separate stencil state.  See
     `glStencilFuncSeparate'.

`GL_STENCIL_TEST'


     PARAMS returns a single boolean value indicating whether stencil
     testing of fragments is enabled.  The initial value is `GL_FALSE'.
     See `glStencilFunc' and `glStencilOp'.

`GL_STENCIL_VALUE_MASK'


     PARAMS returns one value, the mask that is used to mask both the
     stencil reference value and the stencil buffer value before they
     are compared.  The initial value is all 1's.  See `glStencilFunc'.
     If the GL version is 2.0 or greater, this stencil state only
     affects non-polygons and front-facing polygons.  Back-facing
     polygons use separate stencil state.  See `glStencilFuncSeparate'.

`GL_STENCIL_WRITEMASK'


     PARAMS returns one value, the mask that controls writing of the
     stencil bitplanes.  The initial value is all 1's.  See
     `glStencilMask'.  If the GL version is 2.0 or greater, this stencil
     state only affects non-polygons and front-facing polygons.
     Back-facing polygons use separate stencil state.  See
     `glStencilMaskSeparate'.

`GL_STEREO'


     PARAMS returns a single boolean value indicating whether stereo
     buffers (left and right) are supported.

`GL_SUBPIXEL_BITS'


     PARAMS returns one value, an estimate of the number of bits of
     subpixel resolution that are used to position rasterized geometry
     in window coordinates.  The value must be at least 4.

`GL_TEXTURE_1D'


     PARAMS returns a single boolean value indicating whether 1D texture
     mapping is enabled.  The initial value is `GL_FALSE'.  See
     `glTexImage1D'.

`GL_TEXTURE_BINDING_1D'


     PARAMS returns a single value, the name of the texture currently
     bound to the target `GL_TEXTURE_1D'.  The initial value is 0.  See
     `glBindTexture'.

`GL_TEXTURE_2D'


     PARAMS returns a single boolean value indicating whether 2D texture
     mapping is enabled.  The initial value is `GL_FALSE'.  See
     `glTexImage2D'.

`GL_TEXTURE_BINDING_2D'


     PARAMS returns a single value, the name of the texture currently
     bound to the target `GL_TEXTURE_2D'.  The initial value is 0.  See
     `glBindTexture'.

`GL_TEXTURE_3D'


     PARAMS returns a single boolean value indicating whether 3D texture
     mapping is enabled.  The initial value is `GL_FALSE'.  See
     `glTexImage3D'.

`GL_TEXTURE_BINDING_3D'


     PARAMS returns a single value, the name of the texture currently
     bound to the target `GL_TEXTURE_3D'.  The initial value is 0.  See
     `glBindTexture'.

`GL_TEXTURE_BINDING_CUBE_MAP'


     PARAMS returns a single value, the name of the texture currently
     bound to the target `GL_TEXTURE_CUBE_MAP'.  The initial value is 0.
     See `glBindTexture'.

`GL_TEXTURE_COMPRESSION_HINT'


     PARAMS returns a single value indicating the mode of the texture
     compression hint.  The initial value is `GL_DONT_CARE'.

`GL_TEXTURE_COORD_ARRAY'


     PARAMS returns a single boolean value indicating whether the
     texture coordinate array is enabled.  The initial value is
     `GL_FALSE'.  See `glTexCoordPointer'.

`GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the texture coordinate array.  This buffer object
     would have been bound to the target `GL_ARRAY_BUFFER' at the time
     of the most recent call to `glTexCoordPointer'.  If no buffer
     object was bound to this target, 0 is returned.  The initial value
     is 0.  See `glBindBuffer'.

`GL_TEXTURE_COORD_ARRAY_SIZE'


     PARAMS returns one value, the number of coordinates per element in
     the texture coordinate array.  The initial value is 4.  See
     `glTexCoordPointer'.

`GL_TEXTURE_COORD_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive
     elements in the texture coordinate array.  The initial value is 0.
     See `glTexCoordPointer'.

`GL_TEXTURE_COORD_ARRAY_TYPE'


     PARAMS returns one value, the data type of the coordinates in the
     texture coordinate array.  The initial value is `GL_FLOAT'.  See
     `glTexCoordPointer'.

`GL_TEXTURE_CUBE_MAP'


     PARAMS returns a single boolean value indicating whether
     cube-mapped texture mapping is enabled.  The initial value is
     `GL_FALSE'.  See `glTexImage2D'.

`GL_TEXTURE_GEN_Q'


     PARAMS returns a single boolean value indicating whether automatic
     generation of the Q texture coordinate is enabled.  The initial
     value is `GL_FALSE'.  See `glTexGen'.

`GL_TEXTURE_GEN_R'


     PARAMS returns a single boolean value indicating whether automatic
     generation of the R texture coordinate is enabled.  The initial
     value is `GL_FALSE'.  See `glTexGen'.

`GL_TEXTURE_GEN_S'


     PARAMS returns a single boolean value indicating whether automatic
     generation of the S texture coordinate is enabled.  The initial
     value is `GL_FALSE'.  See `glTexGen'.

`GL_TEXTURE_GEN_T'


     PARAMS returns a single boolean value indicating whether automatic
     generation of the T texture coordinate is enabled.  The initial
     value is `GL_FALSE'.  See `glTexGen'.

`GL_TEXTURE_MATRIX'


     PARAMS returns sixteen values: the texture matrix on the top of the
     texture matrix stack.  Initially this matrix is the identity
     matrix.  See `glPushMatrix'.

`GL_TEXTURE_STACK_DEPTH'


     PARAMS returns one value, the number of matrices on the texture
     matrix stack.  The initial value is 1.  See `glPushMatrix'.

`GL_TRANSPOSE_COLOR_MATRIX'


     PARAMS returns 16 values, the elements of the color matrix in
     row-major order.  See `glLoadTransposeMatrix'.

`GL_TRANSPOSE_MODELVIEW_MATRIX'


     PARAMS returns 16 values, the elements of the modelview matrix in
     row-major order.  See `glLoadTransposeMatrix'.

`GL_TRANSPOSE_PROJECTION_MATRIX'


     PARAMS returns 16 values, the elements of the projection matrix in
     row-major order.  See `glLoadTransposeMatrix'.

`GL_TRANSPOSE_TEXTURE_MATRIX'


     PARAMS returns 16 values, the elements of the texture matrix in
     row-major order.  See `glLoadTransposeMatrix'.

`GL_UNPACK_ALIGNMENT'


     PARAMS returns one value, the byte alignment used for reading pixel
     data from memory.  The initial value is 4.  See `glPixelStore'.

`GL_UNPACK_IMAGE_HEIGHT'


     PARAMS returns one value, the image height used for reading pixel
     data from memory.  The initial is 0.  See `glPixelStore'.

`GL_UNPACK_LSB_FIRST'


     PARAMS returns a single boolean value indicating whether single-bit
     pixels being read from memory are read first from the least
     significant bit of each unsigned byte.  The initial value is
     `GL_FALSE'.  See `glPixelStore'.

`GL_UNPACK_ROW_LENGTH'


     PARAMS returns one value, the row length used for reading pixel
     data from memory.  The initial value is 0.  See `glPixelStore'.

`GL_UNPACK_SKIP_IMAGES'


     PARAMS returns one value, the number of pixel images skipped before
     the first pixel is read from memory.  The initial value is 0.  See
     `glPixelStore'.

`GL_UNPACK_SKIP_PIXELS'


     PARAMS returns one value, the number of pixel locations skipped
     before the first pixel is read from memory.  The initial value is
     0.  See `glPixelStore'.

`GL_UNPACK_SKIP_ROWS'


     PARAMS returns one value, the number of rows of pixel locations
     skipped before the first pixel is read from memory.  The initial
     value is 0.  See `glPixelStore'.

`GL_UNPACK_SWAP_BYTES'


     PARAMS returns a single boolean value indicating whether the bytes
     of two-byte and four-byte pixel indices and components are swapped
     after being read from memory.  The initial value is `GL_FALSE'.  See
     `glPixelStore'.

`GL_VERTEX_ARRAY'


     PARAMS returns a single boolean value indicating whether the vertex
     array is enabled.  The initial value is `GL_FALSE'.  See
     `glVertexPointer'.

`GL_VERTEX_ARRAY_BUFFER_BINDING'


     PARAMS returns a single value, the name of the buffer object
     associated with the vertex array.  This buffer object would have
     been bound to the target `GL_ARRAY_BUFFER' at the time of the most
     recent call to `glVertexPointer'.  If no buffer object was bound to
     this target, 0 is returned.  The initial value is 0.  See
     `glBindBuffer'.

`GL_VERTEX_ARRAY_SIZE'


     PARAMS returns one value, the number of coordinates per vertex in
     the vertex array.  The initial value is 4.  See `glVertexPointer'.

`GL_VERTEX_ARRAY_STRIDE'


     PARAMS returns one value, the byte offset between consecutive
     vertices in the vertex array.  The initial value is 0.  See
     `glVertexPointer'.

`GL_VERTEX_ARRAY_TYPE'


     PARAMS returns one value, the data type of each coordinate in the
     vertex array.  The initial value is `GL_FLOAT'.  See
     `glVertexPointer'.

`GL_VERTEX_PROGRAM_POINT_SIZE'


     PARAMS returns a single boolean value indicating whether vertex
     program point size mode is enabled.  If enabled, and a vertex
     shader is active, then the point size is taken from the shader
     built-in `gl_PointSize'.  If disabled, and a vertex shader is
     active, then the point size is taken from the point state as
     specified by `glPointSize'.  The initial value is `GL_FALSE'.

`GL_VERTEX_PROGRAM_TWO_SIDE'


     PARAMS returns a single boolean value indicating whether vertex
     program two-sided color mode is enabled.  If enabled, and a vertex
     shader is active, then the GL chooses the back color output for
     back-facing polygons, and the front color output for non-polygons
     and front-facing polygons.  If disabled, and a vertex shader is
     active, then the front color output is always selected.  The
     initial value is `GL_FALSE'.

`GL_VIEWPORT'


     PARAMS returns four values: the X and Y window coordinates of the
     viewport, followed by its width and height.  Initially the X and Y
     window coordinates are both set to 0, and the width and height are
     set to the width and height of the window into which the GL will do
     its rendering.  See `glViewport'.

`GL_ZOOM_X'


     PARAMS returns one value, the X pixel zoom factor.  The initial
     value is 1.  See `glPixelZoom'.

`GL_ZOOM_Y'


     PARAMS returns one value, the Y pixel zoom factor.  The initial
     value is 1.  See `glPixelZoom'.

Many of the boolean parameters can also be queried more easily using
`glIsEnabled'.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glGet' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glHint (target GLenum) (mode GLenum) -> void))
  "Specify implementation-specific hints.

TARGET
     Specifies a symbolic constant indicating the behavior to be
     controlled.  `GL_FOG_HINT', `GL_GENERATE_MIPMAP_HINT',
     `GL_LINE_SMOOTH_HINT', `GL_PERSPECTIVE_CORRECTION_HINT',
     `GL_POINT_SMOOTH_HINT', `GL_POLYGON_SMOOTH_HINT',
     `GL_TEXTURE_COMPRESSION_HINT', and
     `GL_FRAGMENT_SHADER_DERIVATIVE_HINT' are accepted.

MODE
     Specifies a symbolic constant indicating the desired behavior.
     `GL_FASTEST', `GL_NICEST', and `GL_DONT_CARE' are accepted.

Certain aspects of GL behavior, when there is room for interpretation,
can be controlled with hints.  A hint is specified with two arguments.
TARGET is a symbolic constant indicating the behavior to be controlled,
and MODE is another symbolic constant indicating the desired behavior.
The initial value for each TARGET is `GL_DONT_CARE'.  MODE can be one of
the following:

`GL_FASTEST'


     The most efficient option should be chosen.

`GL_NICEST'


     The most correct, or highest quality, option should be chosen.

`GL_DONT_CARE'


     No preference.

Though the implementation aspects that can be hinted are well defined,
the interpretation of the hints depends on the implementation.  The hint
aspects that can be specified with TARGET, along with suggested
semantics, are as follows:

`GL_FOG_HINT'


     Indicates the accuracy of fog calculation.  If per-pixel fog
     calculation is not efficiently supported by the GL implementation,
     hinting `GL_DONT_CARE' or `GL_FASTEST' can result in per-vertex
     calculation of fog effects.

`GL_FRAGMENT_SHADER_DERIVATIVE_HINT'


     Indicates the accuracy of the derivative calculation for the GL
     shading language fragment processing built-in functions: `dFdx',
     `dFdy', and `fwidth'.

`GL_GENERATE_MIPMAP_HINT'


     Indicates the quality of filtering when generating mipmap images.

`GL_LINE_SMOOTH_HINT'


     Indicates the sampling quality of antialiased lines.  If a larger
     filter function is applied, hinting `GL_NICEST' can result in more
     pixel fragments being generated during rasterization.

`GL_PERSPECTIVE_CORRECTION_HINT'


     Indicates the quality of color, texture coordinate, and fog
     coordinate interpolation.  If perspective-corrected parameter
     interpolation is not efficiently supported by the GL
     implementation, hinting `GL_DONT_CARE' or `GL_FASTEST' can result
     in simple linear interpolation of colors and/or texture
     coordinates.

`GL_POINT_SMOOTH_HINT'


     Indicates the sampling quality of antialiased points.  If a larger
     filter function is applied, hinting `GL_NICEST' can result in more
     pixel fragments being generated during rasterization.

`GL_POLYGON_SMOOTH_HINT'


     Indicates the sampling quality of antialiased polygons.  Hinting
     `GL_NICEST' can result in more pixel fragments being generated
     during rasterization, if a larger filter function is applied.

`GL_TEXTURE_COMPRESSION_HINT'


     Indicates the quality and performance of the compressing texture
     images.  Hinting `GL_FASTEST' indicates that texture images should
     be compressed as quickly as possible, while `GL_NICEST' indicates
     that texture images should be compressed with as little image
     quality loss as possible.  `GL_NICEST' should be selected if the
     texture is to be retrieved by `glGetCompressedTexImage' for reuse.

`GL_INVALID_ENUM' is generated if either TARGET or MODE is not an
accepted value.

`GL_INVALID_OPERATION' is generated if `glHint' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glHistogram
     (target GLenum)
     (width GLsizei)
     (internalformat GLenum)
     (sink GLboolean)
     ->
     void))
  "Define histogram table.

TARGET
     The histogram whose parameters are to be set.  Must be one of
     `GL_HISTOGRAM' or `GL_PROXY_HISTOGRAM'.

WIDTH
     The number of entries in the histogram table.  Must be a power of
     2.

INTERNALFORMAT
     The format of entries in the histogram table.  Must be one of
     `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8', `GL_ALPHA12', `GL_ALPHA16',
     `GL_LUMINANCE', `GL_LUMINANCE4', `GL_LUMINANCE8', `GL_LUMINANCE12',
     `GL_LUMINANCE16', `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_R3_G3_B2', `GL_RGB', `GL_RGB4',
     `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12', `GL_RGB16',
     `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1', `GL_RGBA8',
     `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

SINK
     If `GL_TRUE', pixels will be consumed by the histogramming process
     and no drawing or texture loading will take place.  If `GL_FALSE',
     pixels will proceed to the minmax process after histogramming.

When `GL_HISTOGRAM' is enabled, RGBA color components are converted to
histogram table indices by clamping to the range [0,1], multiplying by
the width of the histogram table, and rounding to the nearest integer.
The table entries selected by the RGBA indices are then incremented.  (If
the internal format of the histogram table includes luminance, then the
index derived from the R color component determines the luminance table
entry to be incremented.) If a histogram table entry is incremented
beyond its maximum value, then its value becomes undefined.  (This is
not an error.)

Histogramming is performed only for RGBA pixels (though these may be
specified originally as color indices and converted to RGBA by index
table lookup).  Histogramming is enabled with `glEnable' and disabled
with `glDisable'.

When TARGET is `GL_HISTOGRAM', `glHistogram' redefines the current
histogram table to have WIDTH entries of the format specified by
INTERNALFORMAT.  The entries are indexed 0 through WIDTH-1 , and all
entries are initialized to zero.  The values in the previous histogram
table, if any, are lost.  If SINK is `GL_TRUE', then pixels are
discarded after histogramming; no further processing of the pixels takes
place, and no drawing, texture loading, or pixel readback will result.

When TARGET is `GL_PROXY_HISTOGRAM', `glHistogram' computes all state
information as if the histogram table were to be redefined, but does not
actually define the new table.  If the requested histogram table is too
large to be supported, then the state information will be set to zero.
This provides a way to determine if a histogram table with the given
parameters can be supported.



`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero or is not a
power of 2.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_TABLE_TOO_LARGE' is generated if TARGET is `GL_HISTOGRAM' and the
histogram table specified is too large for the implementation.

`GL_INVALID_OPERATION' is generated if `glHistogram' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIndexMask (mask GLuint) -> void))
  "Control the writing of individual bits in the color index buffers.

MASK
     Specifies a bit mask to enable and disable the writing of
     individual bits in the color index buffers.  Initially, the mask is
     all 1's.

`glIndexMask' controls the writing of individual bits in the color index
buffers.  The least significant N bits of MASK, where N is the number of
bits in a color index buffer, specify a mask.  Where a 1 (one) appears
in the mask, it's possible to write to the corresponding bit in the
color index buffer (or buffers).  Where a 0 (zero) appears, the
corresponding bit is write-protected.

This mask is used only in color index mode, and it affects only the
buffers currently selected for writing (see `glDrawBuffer').  Initially,
all bits are enabled for writing.

`GL_INVALID_OPERATION' is generated if `glIndexMask' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIndexPointer
     (type GLenum)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of color indexes.

TYPE
     Specifies the data type of each color index in the array.  Symbolic
     constants `GL_UNSIGNED_BYTE', `GL_SHORT', `GL_INT', `GL_FLOAT', and
     `GL_DOUBLE' are accepted.  The initial value is `GL_FLOAT'.

STRIDE
     Specifies the byte offset between consecutive color indexes.  If
     STRIDE is 0, the color indexes are understood to be tightly packed
     in the array.  The initial value is 0.

POINTER
     Specifies a pointer to the first index in the array.  The initial
     value is 0.

`glIndexPointer' specifies the location and data format of an array of
color indexes to use when rendering.  TYPE specifies the data type of
each color index and STRIDE specifies the byte stride from one color
index to the next, allowing vertices and attributes to be packed into a
single array or stored in separate arrays.

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a color index array is specified,
POINTER is treated as a byte offset into the buffer object's data store.
Also, the buffer object binding (`GL_ARRAY_BUFFER_BINDING') is saved as
color index vertex array client-side state
(`GL_INDEX_ARRAY_BUFFER_BINDING').

When a color index array is specified, TYPE, STRIDE, and POINTER are
saved as client-side state, in addition to the current vertex array
buffer object binding.

To enable and disable the color index array, call `glEnableClientState'
and `glDisableClientState' with the argument `GL_INDEX_ARRAY'.  If
enabled, the color index array is used when `glDrawArrays',
`glMultiDrawArrays', `glDrawElements', `glMultiDrawElements',
`glDrawRangeElements', or `glArrayElement' is called.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glIndexs (c GLshort) -> void)
   (glIndexi (c GLint) -> void)
   (glIndexf (c GLfloat) -> void)
   (glIndexd (c GLdouble) -> void)
   (glIndexub (c GLubyte) -> void)
   (glIndexsv (c const-GLshort-*) -> void)
   (glIndexiv (c const-GLint-*) -> void)
   (glIndexfv (c const-GLfloat-*) -> void)
   (glIndexdv (c const-GLdouble-*) -> void)
   (glIndexubv (c const-GLubyte-*) -> void))
  "Set the current color index.

C
     Specifies the new value for the current color index.



`glIndex' updates the current (single-valued) color index.  It takes one
argument, the new value for the current color index.

The current index is stored as a floating-point value.  Integer values
are converted directly to floating-point values, with no special
mapping.  The initial value is 1.

Index values outside the representable range of the color index buffer
are not clamped.  However, before an index is dithered (if enabled) and
written to the frame buffer, it is converted to fixed-point format.  Any
bits in the integer portion of the resulting fixed-point value that do
not correspond to bits in the frame buffer are masked out.")

(define-gl-procedures
  ((glInitNames -> void))
  "Initialize the name stack.

The name stack is used during selection mode to allow sets of rendering
commands to be uniquely identified.  It consists of an ordered set of
unsigned integers.  `glInitNames' causes the name stack to be
initialized to its default empty state.

The name stack is always empty while the render mode is not `GL_SELECT'.
Calls to `glInitNames' while the render mode is not `GL_SELECT' are
ignored.

`GL_INVALID_OPERATION' is generated if `glInitNames' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glInterleavedArrays
     (format GLenum)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Simultaneously specify and enable several interleaved arrays.

FORMAT
     Specifies the type of array to enable.  Symbolic constants
     `GL_V2F', `GL_V3F', `GL_C4UB_V2F', `GL_C4UB_V3F', `GL_C3F_V3F',
     `GL_N3F_V3F', `GL_C4F_N3F_V3F', `GL_T2F_V3F', `GL_T4F_V4F',
     `GL_T2F_C4UB_V3F', `GL_T2F_C3F_V3F', `GL_T2F_N3F_V3F',
     `GL_T2F_C4F_N3F_V3F', and `GL_T4F_C4F_N3F_V4F' are accepted.

STRIDE
     Specifies the offset in bytes between each aggregate array element.

`glInterleavedArrays' lets you specify and enable individual color,
normal, texture and vertex arrays whose elements are part of a larger
aggregate array element.  For some implementations, this is more
efficient than specifying the arrays separately.

If STRIDE is 0, the aggregate elements are stored consecutively.
Otherwise, STRIDE bytes occur between the beginning of one aggregate
array element and the beginning of the next aggregate array element.

FORMAT serves as a ``key'' describing the extraction of individual
arrays from the aggregate array.  If FORMAT contains a T, then texture
coordinates are extracted from the interleaved array.  If C is present,
color values are extracted.  If N is present, normal coordinates are
extracted.  Vertex coordinates are always extracted.

The digits 2, 3, and 4 denote how many values are extracted.  F
indicates that values are extracted as floating-point values.  Colors
may also be extracted as 4 unsigned bytes if 4UB follows the C.  If a
color is extracted as 4 unsigned bytes, the vertex array element which
follows is located at the first possible floating-point aligned address.

`GL_INVALID_ENUM' is generated if FORMAT is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glIsBuffer (buffer GLuint) -> GLboolean))
  "Determine if a name corresponds to a buffer object.

BUFFER
     Specifies a value that may be the name of a buffer object.

`glIsBuffer' returns `GL_TRUE' if BUFFER is currently the name of a
buffer object.  If BUFFER is zero, or is a non-zero value that is not
currently the name of a buffer object, or if an error occurs,
`glIsBuffer' returns `GL_FALSE'.

A name returned by `glGenBuffers', but not yet associated with a buffer
object by calling `glBindBuffer', is not the name of a buffer object.

`GL_INVALID_OPERATION' is generated if `glIsBuffer' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIsEnabled (cap GLenum) -> GLboolean))
  "Test whether a capability is enabled.

CAP
     Specifies a symbolic constant indicating a GL capability.

`glIsEnabled' returns `GL_TRUE' if CAP is an enabled capability and
returns `GL_FALSE' otherwise.  Initially all capabilities except
`GL_DITHER' are disabled; `GL_DITHER' is initially enabled.

The following capabilities are accepted for CAP:



*Constant*
     *See*

`GL_ALPHA_TEST'
     `glAlphaFunc'

`GL_AUTO_NORMAL'
     `glEvalCoord'

`GL_BLEND'
     `glBlendFunc', `glLogicOp'

`GL_CLIP_PLANE'I
     `glClipPlane'

`GL_COLOR_ARRAY'
     `glColorPointer'

`GL_COLOR_LOGIC_OP'
     `glLogicOp'

`GL_COLOR_MATERIAL'
     `glColorMaterial'

`GL_COLOR_SUM'
     `glSecondaryColor'

`GL_COLOR_TABLE'
     `glColorTable'

`GL_CONVOLUTION_1D'
     `glConvolutionFilter1D'

`GL_CONVOLUTION_2D'
     `glConvolutionFilter2D'

`GL_CULL_FACE'
     `glCullFace'

`GL_DEPTH_TEST'
     `glDepthFunc', `glDepthRange'

`GL_DITHER'
     `glEnable'

`GL_EDGE_FLAG_ARRAY'
     `glEdgeFlagPointer'

`GL_FOG'
     `glFog'

`GL_FOG_COORD_ARRAY'
     `glFogCoordPointer'

`GL_HISTOGRAM'
     `glHistogram'

`GL_INDEX_ARRAY'
     `glIndexPointer'

`GL_INDEX_LOGIC_OP'
     `glLogicOp'

`GL_LIGHT'I
     `glLightModel', `glLight'

`GL_LIGHTING'
     `glMaterial', `glLightModel', `glLight'

`GL_LINE_SMOOTH'
     `glLineWidth'

`GL_LINE_STIPPLE'
     `glLineStipple'

`GL_MAP1_COLOR_4'
     `glMap1'

`GL_MAP1_INDEX'
     `glMap1'

`GL_MAP1_NORMAL'
     `glMap1'

`GL_MAP1_TEXTURE_COORD_1'
     `glMap1'

`GL_MAP1_TEXTURE_COORD_2'
     `glMap1'

`GL_MAP1_TEXTURE_COORD_3'
     `glMap1'

`GL_MAP1_TEXTURE_COORD_4'
     `glMap1'

`GL_MAP2_COLOR_4'
     `glMap2'

`GL_MAP2_INDEX'
     `glMap2'

`GL_MAP2_NORMAL'
     `glMap2'

`GL_MAP2_TEXTURE_COORD_1'
     `glMap2'

`GL_MAP2_TEXTURE_COORD_2'
     `glMap2'

`GL_MAP2_TEXTURE_COORD_3'
     `glMap2'

`GL_MAP2_TEXTURE_COORD_4'
     `glMap2'

`GL_MAP2_VERTEX_3'
     `glMap2'

`GL_MAP2_VERTEX_4'
     `glMap2'

`GL_MINMAX'
     `glMinmax'

`GL_MULTISAMPLE'
     `glSampleCoverage'

`GL_NORMAL_ARRAY'
     `glNormalPointer'

`GL_NORMALIZE'
     `glNormal'

`GL_POINT_SMOOTH'
     `glPointSize'

`GL_POINT_SPRITE'
     `glEnable'

`GL_POLYGON_SMOOTH'
     `glPolygonMode'

`GL_POLYGON_OFFSET_FILL'
     `glPolygonOffset'

`GL_POLYGON_OFFSET_LINE'
     `glPolygonOffset'

`GL_POLYGON_OFFSET_POINT'
     `glPolygonOffset'

`GL_POLYGON_STIPPLE'
     `glPolygonStipple'

`GL_POST_COLOR_MATRIX_COLOR_TABLE'
     `glColorTable'

`GL_POST_CONVOLUTION_COLOR_TABLE'
     `glColorTable'

`GL_RESCALE_NORMAL'
     `glNormal'

`GL_SAMPLE_ALPHA_TO_COVERAGE'
     `glSampleCoverage'

`GL_SAMPLE_ALPHA_TO_ONE'
     `glSampleCoverage'

`GL_SAMPLE_COVERAGE'
     `glSampleCoverage'

`GL_SCISSOR_TEST'
     `glScissor'

`GL_SECONDARY_COLOR_ARRAY'
     `glSecondaryColorPointer'

`GL_SEPARABLE_2D'
     `glSeparableFilter2D'

`GL_STENCIL_TEST'
     `glStencilFunc', `glStencilOp'

`GL_TEXTURE_1D'
     `glTexImage1D'

`GL_TEXTURE_2D'
     `glTexImage2D'

`GL_TEXTURE_3D'
     `glTexImage3D'

`GL_TEXTURE_COORD_ARRAY'
     `glTexCoordPointer'

`GL_TEXTURE_CUBE_MAP'
     `glTexImage2D'

`GL_TEXTURE_GEN_Q'
     `glTexGen'

`GL_TEXTURE_GEN_R'
     `glTexGen'

`GL_TEXTURE_GEN_S'
     `glTexGen'

`GL_TEXTURE_GEN_T'
     `glTexGen'

`GL_VERTEX_ARRAY'
     `glVertexPointer'

`GL_VERTEX_PROGRAM_POINT_SIZE'
     `glEnable'

`GL_VERTEX_PROGRAM_TWO_SIDE'
     `glEnable'



`GL_INVALID_ENUM' is generated if CAP is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glIsEnabled' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIsList (list GLuint) -> GLboolean))
  "Determine if a name corresponds to a display list.

LIST
     Specifies a potential display list name.

`glIsList' returns `GL_TRUE' if LIST is the name of a display list and
returns `GL_FALSE' if it is not, or if an error occurs.

A name returned by `glGenLists', but not yet associated with a display
list by calling `glNewList', is not the name of a display list.

`GL_INVALID_OPERATION' is generated if `glIsList' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIsProgram (program GLuint) -> GLboolean))
  "Determines if a name corresponds to a program object.

PROGRAM
     Specifies a potential program object.

`glIsProgram' returns `GL_TRUE' if PROGRAM is the name of a program
object previously created with `glCreateProgram' and not yet deleted
with `glDeleteProgram'.  If PROGRAM is zero or a non-zero value that is
not the name of a program object, or if an error occurs, `glIsProgram'
returns `GL_FALSE'.

`GL_INVALID_OPERATION' is generated if `glIsProgram' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIsQuery (id GLuint) -> GLboolean))
  "Determine if a name corresponds to a query object.

ID
     Specifies a value that may be the name of a query object.

`glIsQuery' returns `GL_TRUE' if ID is currently the name of a query
object.  If ID is zero, or is a non-zero value that is not currently the
name of a query object, or if an error occurs, `glIsQuery' returns
`GL_FALSE'.

A name returned by `glGenQueries', but not yet associated with a query
object by calling `glBeginQuery', is not the name of a query object.

`GL_INVALID_OPERATION' is generated if `glIsQuery' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIsShader (shader GLuint) -> GLboolean))
  "Determines if a name corresponds to a shader object.

SHADER
     Specifies a potential shader object.

`glIsShader' returns `GL_TRUE' if SHADER is the name of a shader object
previously created with `glCreateShader' and not yet deleted with
`glDeleteShader'.  If SHADER is zero or a non-zero value that is not the
name of a shader object, or if an error occurs, `glIsShader ' returns
`GL_FALSE'.

`GL_INVALID_OPERATION' is generated if `glIsShader' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glIsTexture (texture GLuint) -> GLboolean))
  "Determine if a name corresponds to a texture.

TEXTURE
     Specifies a value that may be the name of a texture.

`glIsTexture' returns `GL_TRUE' if TEXTURE is currently the name of a
texture.  If TEXTURE is zero, or is a non-zero value that is not
currently the name of a texture, or if an error occurs, `glIsTexture'
returns `GL_FALSE'.

A name returned by `glGenTextures', but not yet associated with a
texture by calling `glBindTexture', is not the name of a texture.

`GL_INVALID_OPERATION' is generated if `glIsTexture' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glLightModelf
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glLightModeli
     (pname GLenum)
     (param GLint)
     ->
     void)
   (glLightModelfv
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glLightModeliv
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Set the lighting model parameters.

PNAME
     Specifies a single-valued lighting model parameter.
     `GL_LIGHT_MODEL_LOCAL_VIEWER', `GL_LIGHT_MODEL_COLOR_CONTROL', and
     `GL_LIGHT_MODEL_TWO_SIDE' are accepted.

PARAM
     Specifies the value that PARAM will be set to.

`glLightModel' sets the lighting model parameter.  PNAME names a
parameter and PARAMS gives the new value.  There are three lighting
model parameters:

`GL_LIGHT_MODEL_AMBIENT'


     PARAMS contains four integer or floating-point values that specify
     the ambient RGBA intensity of the entire scene.  Integer values are
     mapped linearly such that the most positive representable value
     maps to 1.0, and the most negative representable value maps to -1.0
     .  Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial ambient scene
     intensity is (0.2, 0.2, 0.2, 1.0).

`GL_LIGHT_MODEL_COLOR_CONTROL'


     PARAMS must be either `GL_SEPARATE_SPECULAR_COLOR' or
     `GL_SINGLE_COLOR'.  `GL_SINGLE_COLOR' specifies that a single color
     is generated from the lighting computation for a vertex.
     `GL_SEPARATE_SPECULAR_COLOR' specifies that the specular color
     computation of lighting be stored separately from the remainder of
     the lighting computation.  The specular color is summed into the
     generated fragment's color after the application of texture mapping
     (if enabled).  The initial value is `GL_SINGLE_COLOR'.

`GL_LIGHT_MODEL_LOCAL_VIEWER'


     PARAMS is a single integer or floating-point value that specifies
     how specular reflection angles are computed.  If PARAMS is 0 (or
     0.0), specular reflection angles take the view direction to be
     parallel to and in the direction of the -Z axis, regardless of the
     location of the vertex in eye coordinates.  Otherwise, specular
     reflections are computed from the origin of the eye coordinate
     system.  The initial value is 0.

`GL_LIGHT_MODEL_TWO_SIDE'


     PARAMS is a single integer or floating-point value that specifies
     whether one- or two-sided lighting calculations are done for
     polygons.  It has no effect on the lighting calculations for
     points, lines, or bitmaps.  If PARAMS is 0 (or 0.0), one-sided
     lighting is specified, and only the FRONT material parameters are
     used in the lighting equation.  Otherwise, two-sided lighting is
     specified.  In this case, vertices of back-facing polygons are
     lighted using the BACK material parameters and have their normals
     reversed before the lighting equation is evaluated.  Vertices of
     front-facing polygons are always lighted using the FRONT material
     parameters, with no change to their normals.  The initial value is
     0.

In RGBA mode, the lighted color of a vertex is the sum of the material
emission intensity, the product of the material ambient reflectance and
the lighting model full-scene ambient intensity, and the contribution of
each enabled light source.  Each light source contributes the sum of
three terms: ambient, diffuse, and specular.  The ambient light source
contribution is the product of the material ambient reflectance and the
light's ambient intensity.  The diffuse light source contribution is the
product of the material diffuse reflectance, the light's diffuse
intensity, and the dot product of the vertex's normal with the
normalized vector from the vertex to the light source.  The specular
light source contribution is the product of the material specular
reflectance, the light's specular intensity, and the dot product of the
normalized vertex-to-eye and vertex-to-light vectors, raised to the
power of the shininess of the material.  All three light source
contributions are attenuated equally based on the distance from the
vertex to the light source and on light source direction, spread
exponent, and spread cutoff angle.  All dot products are replaced with 0
if they evaluate to a negative value.

The alpha component of the resulting lighted color is set to the alpha
value of the material diffuse reflectance.

In color index mode, the value of the lighted index of a vertex ranges
from the ambient to the specular values passed to `glMaterial' using
`GL_COLOR_INDEXES'.  Diffuse and specular coefficients, computed with a
(.30, .59, .11) weighting of the lights' colors, the shininess of the
material, and the same reflection and attenuation equations as in the
RGBA case, determine how much above ambient the resulting index is.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_ENUM' is generated if PNAME is
`GL_LIGHT_MODEL_COLOR_CONTROL' and PARAMS is not one of
`GL_SINGLE_COLOR' or `GL_SEPARATE_SPECULAR_COLOR'.

`GL_INVALID_OPERATION' is generated if `glLightModel' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glLightf
     (light GLenum)
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glLighti
     (light GLenum)
     (pname GLenum)
     (param GLint)
     ->
     void)
   (glLightfv
     (light GLenum)
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glLightiv
     (light GLenum)
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Set light source parameters.

LIGHT
     Specifies a light.  The number of lights depends on the
     implementation, but at least eight lights are supported.  They are
     identified by symbolic names of the form `GL_LIGHT' I , where i
     ranges from 0 to the value of `GL_MAX_LIGHTS' - 1.

PNAME
     Specifies a single-valued light source parameter for LIGHT.
     `GL_SPOT_EXPONENT', `GL_SPOT_CUTOFF', `GL_CONSTANT_ATTENUATION',
     `GL_LINEAR_ATTENUATION', and `GL_QUADRATIC_ATTENUATION' are
     accepted.

PARAM
     Specifies the value that parameter PNAME of light source LIGHT will
     be set to.

`glLight' sets the values of individual light source parameters.  LIGHT
names the light and is a symbolic name of the form `GL_LIGHT'I , where i
ranges from 0 to the value of `GL_MAX_LIGHTS' - 1.  PNAME specifies one
of ten light source parameters, again by symbolic name.  PARAMS is
either a single value or a pointer to an array that contains the new
values.

To enable and disable lighting calculation, call `glEnable' and
`glDisable' with argument `GL_LIGHTING'.  Lighting is initially
disabled.  When it is enabled, light sources that are enabled contribute
to the lighting calculation.  Light source I is enabled and disabled
using `glEnable' and `glDisable' with argument `GL_LIGHT'I .

The ten light parameters are as follows:

`GL_AMBIENT'
     PARAMS contains four integer or floating-point values that specify
     the ambient RGBA intensity of the light.  Integer values are mapped
     linearly such that the most positive representable value maps to
     1.0, and the most negative representable value maps to -1.0 .
     Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial ambient light
     intensity is (0, 0, 0, 1).

`GL_DIFFUSE'
     PARAMS contains four integer or floating-point values that specify
     the diffuse RGBA intensity of the light.  Integer values are mapped
     linearly such that the most positive representable value maps to
     1.0, and the most negative representable value maps to -1.0 .
     Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial value for
     `GL_LIGHT0' is (1, 1, 1, 1); for other lights, the initial value is
     (0, 0, 0, 1).

`GL_SPECULAR'
     PARAMS contains four integer or floating-point values that specify
     the specular RGBA intensity of the light.  Integer values are
     mapped linearly such that the most positive representable value
     maps to 1.0, and the most negative representable value maps to -1.0
     .  Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial value for
     `GL_LIGHT0' is (1, 1, 1, 1); for other lights, the initial value is
     (0, 0, 0, 1).

`GL_POSITION'
     PARAMS contains four integer or floating-point values that specify
     the position of the light in homogeneous object coordinates.  Both
     integer and floating-point values are mapped directly.  Neither
     integer nor floating-point values are clamped.

     The position is transformed by the modelview matrix when `glLight'
     is called (just as if it were a point), and it is stored in eye
     coordinates.  If the W component of the position is 0, the light is
     treated as a directional source.  Diffuse and specular lighting
     calculations take the light's direction, but not its actual
     position, into account, and attenuation is disabled.  Otherwise,
     diffuse and specular lighting calculations are based on the actual
     location of the light in eye coordinates, and attenuation is
     enabled.  The initial position is (0, 0, 1, 0); thus, the initial
     light source is directional, parallel to, and in the direction of
     the -Z axis.

`GL_SPOT_DIRECTION'
     PARAMS contains three integer or floating-point values that specify
     the direction of the light in homogeneous object coordinates.  Both
     integer and floating-point values are mapped directly.  Neither
     integer nor floating-point values are clamped.

     The spot direction is transformed by the upper 3x3 of the modelview
     matrix when `glLight' is called, and it is stored in eye
     coordinates.  It is significant only when `GL_SPOT_CUTOFF' is not
     180, which it is initially.  The initial direction is (0,0-1) .

`GL_SPOT_EXPONENT'
     PARAMS is a single integer or floating-point value that specifies
     the intensity distribution of the light.  Integer and
     floating-point values are mapped directly.  Only values in the
     range [0,128] are accepted.

     Effective light intensity is attenuated by the cosine of the angle
     between the direction of the light and the direction from the light
     to the vertex being lighted, raised to the power of the spot
     exponent.  Thus, higher spot exponents result in a more focused
     light source, regardless of the spot cutoff angle (see
     `GL_SPOT_CUTOFF', next paragraph).  The initial spot exponent is 0,
     resulting in uniform light distribution.

`GL_SPOT_CUTOFF'
     PARAMS is a single integer or floating-point value that specifies
     the maximum spread angle of a light source.  Integer and
     floating-point values are mapped directly.  Only values in the
     range [0,90] and the special value 180 are accepted.  If the angle
     between the direction of the light and the direction from the light
     to the vertex being lighted is greater than the spot cutoff angle,
     the light is completely masked.  Otherwise, its intensity is
     controlled by the spot exponent and the attenuation factors.  The
     initial spot cutoff is 180, resulting in uniform light
     distribution.

`GL_CONSTANT_ATTENUATION'
`GL_LINEAR_ATTENUATION'
`GL_QUADRATIC_ATTENUATION'
     PARAMS is a single integer or floating-point value that specifies
     one of the three light attenuation factors.  Integer and
     floating-point values are mapped directly.  Only nonnegative values
     are accepted.  If the light is positional, rather than directional,
     its intensity is attenuated by the reciprocal of the sum of the
     constant factor, the linear factor times the distance between the
     light and the vertex being lighted, and the quadratic factor times
     the square of the same distance.  The initial attenuation factors
     are (1, 0, 0), resulting in no attenuation.

`GL_INVALID_ENUM' is generated if either LIGHT or PNAME is not an
accepted value.

`GL_INVALID_VALUE' is generated if a spot exponent value is specified
outside the range [0,128] , or if spot cutoff is specified outside the
range [0,90] (except for the special value 180), or if a negative
attenuation factor is specified.

`GL_INVALID_OPERATION' is generated if `glLight' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glLineStipple
     (factor GLint)
     (pattern GLushort)
     ->
     void))
  "Specify the line stipple pattern.

FACTOR
     Specifies a multiplier for each bit in the line stipple pattern.  If
     FACTOR is 3, for example, each bit in the pattern is used three
     times before the next bit in the pattern is used.  FACTOR is
     clamped to the range [1, 256] and defaults to 1.

PATTERN
     Specifies a 16-bit integer whose bit pattern determines which
     fragments of a line will be drawn when the line is rasterized.  Bit
     zero is used first; the default pattern is all 1's.

Line stippling masks out certain fragments produced by rasterization;
those fragments will not be drawn.  The masking is achieved by using
three parameters: the 16-bit line stipple pattern PATTERN, the repeat
count FACTOR, and an integer stipple counter S .

Counter S is reset to 0 whenever `glBegin' is called and before each
line segment of a `glBegin'(`GL_LINES')/`glEnd' sequence is generated.
It is incremented after each fragment of a unit width aliased line
segment is generated or after each I fragments of an I width line
segment are generated.  The I fragments associated with count S are
masked out if

PATTERN bit (S/FACTOR,)%16

is 0, otherwise these fragments are sent to the frame buffer.  Bit zero
of PATTERN is the least significant bit.

Antialiased lines are treated as a sequence of 1×WIDTH rectangles for
purposes of stippling.  Whether rectangle S is rasterized or not depends
on the fragment rule described for aliased lines, counting rectangles
rather than groups of fragments.

To enable and disable line stippling, call `glEnable' and `glDisable'
with argument `GL_LINE_STIPPLE'.  When enabled, the line stipple pattern
is applied as described above.  When disabled, it is as if the pattern
were all 1's.  Initially, line stippling is disabled.

`GL_INVALID_OPERATION' is generated if `glLineStipple' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glLineWidth (width GLfloat) -> void))
  "Specify the width of rasterized lines.

WIDTH
     Specifies the width of rasterized lines.  The initial value is 1.

`glLineWidth' specifies the rasterized width of both aliased and
antialiased lines.  Using a line width other than 1 has different
effects, depending on whether line antialiasing is enabled.  To enable
and disable line antialiasing, call `glEnable' and `glDisable' with
argument `GL_LINE_SMOOTH'.  Line antialiasing is initially disabled.

If line antialiasing is disabled, the actual width is determined by
rounding the supplied width to the nearest integer.  (If the rounding
results in the value 0, it is as if the line width were 1.) If
∣ΔX,∣>=∣ΔY,∣ , I pixels are filled in each column that is rasterized,
where I is the rounded value of WIDTH.  Otherwise, I pixels are filled
in each row that is rasterized.

If antialiasing is enabled, line rasterization produces a fragment for
each pixel square that intersects the region lying within the rectangle
having width equal to the current line width, length equal to the actual
length of the line, and centered on the mathematical line segment.  The
coverage value for each fragment is the window coordinate area of the
intersection of the rectangular region with the corresponding pixel
square.  This value is saved and used in the final rasterization step.

Not all widths can be supported when line antialiasing is enabled.  If
an unsupported width is requested, the nearest supported width is used.
Only width 1 is guaranteed to be supported; others depend on the
implementation.  Likewise, there is a range for aliased line widths as
well.  To query the range of supported widths and the size difference
between supported widths within the range, call `glGet' with arguments
`GL_ALIASED_LINE_WIDTH_RANGE', `GL_SMOOTH_LINE_WIDTH_RANGE', and
`GL_SMOOTH_LINE_WIDTH_GRANULARITY'.

`GL_INVALID_VALUE' is generated if WIDTH is less than or equal to 0.

`GL_INVALID_OPERATION' is generated if `glLineWidth' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glLinkProgram (program GLuint) -> void))
  "Links a program object.

PROGRAM
     Specifies the handle of the program object to be linked.

`glLinkProgram' links the program object specified by PROGRAM.  If any
shader objects of type `GL_VERTEX_SHADER' are attached to PROGRAM, they
will be used to create an executable that will run on the programmable
vertex processor.  If any shader objects of type `GL_FRAGMENT_SHADER'
are attached to PROGRAM, they will be used to create an executable that
will run on the programmable fragment processor.

The status of the link operation will be stored as part of the program
object's state.  This value will be set to `GL_TRUE' if the program
object was linked without errors and is ready for use, and `GL_FALSE'
otherwise.  It can be queried by calling `glGetProgram' with arguments
PROGRAM and `GL_LINK_STATUS'.

As a result of a successful link operation, all active user-defined
uniform variables belonging to PROGRAM will be initialized to 0, and
each of the program object's active uniform variables will be assigned a
location that can be queried by calling `glGetUniformLocation'.  Also,
any active user-defined attribute variables that have not been bound to
a generic vertex attribute index will be bound to one at this time.

Linking of a program object can fail for a number of reasons as
specified in the OPENGL SHADING LANGUAGE SPECIFICATION.  The following
lists some of the conditions that will cause a link error.

   * The storage limit for uniform variables has been exceeded.

   * The number of active uniform variables supported by the
     implementation has been exceeded.

   * The `main' function is missing for the vertex shader or the
     fragment shader.

   * A varying variable actually used in the fragment shader is not
     declared in the same way (or is not declared at all) in the vertex
     shader.

   * A reference to a function or variable name is unresolved.

   * A shared global is declared with two different types or two
     different initial values.

   * One or more of the attached shader objects has not been
     successfully compiled.

   * Binding a generic attribute matrix caused some rows of the matrix
     to fall outside the allowed maximum of `GL_MAX_VERTEX_ATTRIBS'.

   * Not enough contiguous vertex attribute slots could be found to bind
     attribute matrices.

When a program object has been successfully linked, the program object
can be made part of current state by calling `glUseProgram'.  Whether or
not the link operation was successful, the program object's information
log will be overwritten.  The information log can be retrieved by
calling `glGetProgramInfoLog'.

`glLinkProgram' will also install the generated executables as part of
the current rendering state if the link operation was successful and the
specified program object is already currently in use as a result of a
previous call to `glUseProgram'.  If the program object currently in use
is relinked unsuccessfully, its link status will be set to `GL_FALSE' ,
but the executables and associated state will remain part of the current
state until a subsequent call to `glUseProgram' removes it from use.
After it is removed from use, it cannot be made part of current state
until it has been successfully relinked.

If PROGRAM contains shader objects of type `GL_VERTEX_SHADER' but does
not contain shader objects of type `GL_FRAGMENT_SHADER', the vertex
shader will be linked against the implicit interface for fixed
functionality fragment processing.  Similarly, if PROGRAM contains
shader objects of type `GL_FRAGMENT_SHADER' but it does not contain
shader objects of type `GL_VERTEX_SHADER', the fragment shader will be
linked against the implicit interface for fixed functionality vertex
processing.

The program object's information log is updated and the program is
generated at the time of the link operation.  After the link operation,
applications are free to modify attached shader objects, compile
attached shader objects, detach shader objects, delete shader objects,
and attach additional shader objects.  None of these operations affects
the information log or the program that is part of the program object.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if `glLinkProgram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glListBase (base GLuint) -> void))
  "Set the display-list base for .

BASE
     Specifies an integer offset that will be added to `glCallLists'
     offsets to generate display-list names.  The initial value is 0.

`glCallLists' specifies an array of offsets.  Display-list names are
generated by adding BASE to each offset.  Names that reference valid
display lists are executed; the others are ignored.

`GL_INVALID_OPERATION' is generated if `glListBase' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glLoadIdentity -> void))
  "Replace the current matrix with the identity matrix.

`glLoadIdentity' replaces the current matrix with the identity matrix.
It is semantically equivalent to calling `glLoadMatrix' with the
identity matrix



((1 0 0 0), (0 1 0 0), (0 0 1 0), (0 0 0 1),,)



but in some cases it is more efficient.

`GL_INVALID_OPERATION' is generated if `glLoadIdentity' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glLoadMatrixd (m const-GLdouble-*) -> void)
   (glLoadMatrixf (m const-GLfloat-*) -> void))
  "Replace the current matrix with the specified matrix.

M
     Specifies a pointer to 16 consecutive values, which are used as the
     elements of a 4×4 column-major matrix.

`glLoadMatrix' replaces the current matrix with the one whose elements
are specified by M.  The current matrix is the projection matrix,
modelview matrix, or texture matrix, depending on the current matrix
mode (see `glMatrixMode').

The current matrix, M, defines a transformation of coordinates.  For
instance, assume M refers to the modelview matrix.  If
V=(V\u2061[0,],V\u2061[1,]V\u2061[2,]V\u2061[3,]) is the set of object coordinates of a
vertex, and M points to an array of 16 single- or double-precision
floating-point values M={M\u2061[0,],M\u2061[1,]...M\u2061[15,]} , then the modelview
transformation M\u2061(V,) does the following:

M\u2061(V,)=((M\u2061[0,] M\u2061[4,] M\u2061[8,] M\u2061[12,]), (M\u2061[1,] M\u2061[5,] M\u2061[9,] M\u2061[13,]),
(M\u2061[2,] M\u2061[6,] M\u2061[10,] M\u2061[14,]), (M\u2061[3,] M\u2061[7,] M\u2061[11,]
M\u2061[15,]),)×((V\u2061[0,]), (V\u2061[1,]), (V\u2061[2,]), (V\u2061[3,]),)



Projection and texture transformations are similarly defined.

`GL_INVALID_OPERATION' is generated if `glLoadMatrix' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glLoadName (name GLuint) -> void))
  "Load a name onto the name stack.

NAME
     Specifies a name that will replace the top value on the name stack.

The name stack is used during selection mode to allow sets of rendering
commands to be uniquely identified.  It consists of an ordered set of
unsigned integers and is initially empty.

`glLoadName' causes NAME to replace the value on the top of the name
stack.

The name stack is always empty while the render mode is not `GL_SELECT'.
Calls to `glLoadName' while the render mode is not `GL_SELECT' are
ignored.

`GL_INVALID_OPERATION' is generated if `glLoadName' is called while the
name stack is empty.

`GL_INVALID_OPERATION' is generated if `glLoadName' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glLoadTransposeMatrixd
     (m const-GLdouble-*)
     ->
     void)
   (glLoadTransposeMatrixf
     (m const-GLfloat-*)
     ->
     void))
  "Replace the current matrix with the specified row-major ordered matrix.

M
     Specifies a pointer to 16 consecutive values, which are used as the
     elements of a 4×4 row-major matrix.

`glLoadTransposeMatrix' replaces the current matrix with the one whose
elements are specified by M.  The current matrix is the projection
matrix, modelview matrix, or texture matrix, depending on the current
matrix mode (see `glMatrixMode').

The current matrix, M, defines a transformation of coordinates.  For
instance, assume M refers to the modelview matrix.  If
V=(V\u2061[0,],V\u2061[1,]V\u2061[2,]V\u2061[3,]) is the set of object coordinates of a
vertex, and M points to an array of 16 single- or double-precision
floating-point values M={M\u2061[0,],M\u2061[1,]...M\u2061[15,]} , then the modelview
transformation M\u2061(V,) does the following:

M\u2061(V,)=((M\u2061[0,] M\u2061[1,] M\u2061[2,] M\u2061[3,]), (M\u2061[4,] M\u2061[5,] M\u2061[6,] M\u2061[7,]),
(M\u2061[8,] M\u2061[9,] M\u2061[10,] M\u2061[11,]), (M\u2061[12,] M\u2061[13,] M\u2061[14,]
M\u2061[15,]),)×((V\u2061[0,]), (V\u2061[1,]), (V\u2061[2,]), (V\u2061[3,]),)



Projection and texture transformations are similarly defined.

Calling `glLoadTransposeMatrix' with matrix M is identical in operation
to `glLoadMatrix' with M^T , where T represents the transpose.

`GL_INVALID_OPERATION' is generated if `glLoadTransposeMatrix' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glLogicOp (opcode GLenum) -> void))
  "Specify a logical pixel operation for color index rendering.

OPCODE
     Specifies a symbolic constant that selects a logical operation.  The
     following symbols are accepted: `GL_CLEAR', `GL_SET', `GL_COPY',
     `GL_COPY_INVERTED', `GL_NOOP', `GL_INVERT', `GL_AND', `GL_NAND',
     `GL_OR', `GL_NOR', `GL_XOR', `GL_EQUIV', `GL_AND_REVERSE',
     `GL_AND_INVERTED', `GL_OR_REVERSE', and `GL_OR_INVERTED'.  The
     initial value is `GL_COPY'.

`glLogicOp' specifies a logical operation that, when enabled, is applied
between the incoming color index or RGBA color and the color index or
RGBA color at the corresponding location in the frame buffer.  To enable
or disable the logical operation, call `glEnable' and `glDisable' using
the symbolic constant `GL_COLOR_LOGIC_OP' for RGBA mode or
`GL_INDEX_LOGIC_OP' for color index mode.  The initial value is disabled
for both operations.



*Opcode*
     *Resulting Operation*

`GL_CLEAR'
     0

`GL_SET'
     1

`GL_COPY'
     s

`GL_COPY_INVERTED'
     ~s

`GL_NOOP'
     d

`GL_INVERT'
     ~d

`GL_AND'
     s & d

`GL_NAND'
     ~(s & d)

`GL_OR'
     s | d

`GL_NOR'
     ~(s | d)

`GL_XOR'
     s ^ d

`GL_EQUIV'
     ~(s ^ d)

`GL_AND_REVERSE'
     s & ~d

`GL_AND_INVERTED'
     ~s & d

`GL_OR_REVERSE'
     s | ~d

`GL_OR_INVERTED'
     ~s | d

OPCODE is a symbolic constant chosen from the list above.  In the
explanation of the logical operations, S represents the incoming color
index and D represents the index in the frame buffer.  Standard
C-language operators are used.  As these bitwise operators suggest, the
logical operation is applied independently to each bit pair of the
source and destination indices or colors.

`GL_INVALID_ENUM' is generated if OPCODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glLogicOp' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glMap1f
     (target GLenum)
     (u1 GLfloat)
     (u2 GLfloat)
     (stride GLint)
     (order GLint)
     (points const-GLfloat-*)
     ->
     void)
   (glMap1d
     (target GLenum)
     (u1 GLdouble)
     (u2 GLdouble)
     (stride GLint)
     (order GLint)
     (points const-GLdouble-*)
     ->
     void))
  "Define a one-dimensional evaluator.

TARGET
     Specifies the kind of values that are generated by the evaluator.
     Symbolic constants `GL_MAP1_VERTEX_3', `GL_MAP1_VERTEX_4',
     `GL_MAP1_INDEX', `GL_MAP1_COLOR_4', `GL_MAP1_NORMAL',
     `GL_MAP1_TEXTURE_COORD_1', `GL_MAP1_TEXTURE_COORD_2',
     `GL_MAP1_TEXTURE_COORD_3', and `GL_MAP1_TEXTURE_COORD_4' are
     accepted.

U1
     U2

     Specify a linear mapping of U , as presented to `glEvalCoord1', to
     U^ , the variable that is evaluated by the equations specified by
     this command.

STRIDE
     Specifies the number of floats or doubles between the beginning of
     one control point and the beginning of the next one in the data
     structure referenced in POINTS.  This allows control points to be
     embedded in arbitrary data structures.  The only constraint is that
     the values for a particular control point must occupy contiguous
     memory locations.

ORDER
     Specifies the number of control points.  Must be positive.

POINTS
     Specifies a pointer to the array of control points.

Evaluators provide a way to use polynomial or rational polynomial
mapping to produce vertices, normals, texture coordinates, and colors.
The values produced by an evaluator are sent to further stages of GL
processing just as if they had been presented using `glVertex',
`glNormal', `glTexCoord', and `glColor' commands, except that the
generated values do not update the current normal, texture coordinates,
or color.

All polynomial or rational polynomial splines of any degree (up to the
maximum degree supported by the GL implementation) can be described
using evaluators.  These include almost all splines used in computer
graphics: B-splines, Bezier curves, Hermite splines, and so on.

Evaluators define curves based on Bernstein polynomials.  Define P\u2061(U^,)
as

P\u2061(U^,)=ΣI=0NB_I,^N\u2061(U^,)\u2062R_I



where R_I is a control point and B_I,^N\u2061(U^,) is the I th Bernstein
polynomial of degree N (ORDER = N+1 ):

B_I,^N\u2061(U^,)=((N), (I),,)\u2062U^,^I\u2062(1-U^,)^N-I,,

Recall that

0^0==1 and ((N), (0),,)==1

`glMap1' is used to define the basis and to specify what kind of values
are produced.  Once defined, a map can be enabled and disabled by
calling `glEnable' and `glDisable' with the map name, one of the nine
predefined values for TARGET described below.  `glEvalCoord1' evaluates
the one-dimensional maps that are enabled.  When `glEvalCoord1' presents
a value U , the Bernstein functions are evaluated using U^ , where
U^=U-U1,/U2-U1,

TARGET is a symbolic constant that indicates what kind of control points
are provided in POINTS, and what output is generated when the map is
evaluated.  It can assume one of nine predefined values:

`GL_MAP1_VERTEX_3'
     Each control point is three floating-point values representing X ,
     Y , and Z .  Internal `glVertex3' commands are generated when the
     map is evaluated.

`GL_MAP1_VERTEX_4'
     Each control point is four floating-point values representing X , Y
     , Z , and W .  Internal `glVertex4' commands are generated when the
     map is evaluated.

`GL_MAP1_INDEX'
     Each control point is a single floating-point value representing a
     color index.  Internal `glIndex' commands are generated when the
     map is evaluated but the current index is not updated with the
     value of these `glIndex' commands.

`GL_MAP1_COLOR_4'
     Each control point is four floating-point values representing red,
     green, blue, and alpha.  Internal `glColor4' commands are generated
     when the map is evaluated but the current color is not updated with
     the value of these `glColor4' commands.

`GL_MAP1_NORMAL'
     Each control point is three floating-point values representing the
     X , Y , and Z components of a normal vector.  Internal `glNormal'
     commands are generated when the map is evaluated but the current
     normal is not updated with the value of these `glNormal' commands.

`GL_MAP1_TEXTURE_COORD_1'
     Each control point is a single floating-point value representing
     the S texture coordinate.  Internal `glTexCoord1' commands are
     generated when the map is evaluated but the current texture
     coordinates are not updated with the value of these `glTexCoord'
     commands.

`GL_MAP1_TEXTURE_COORD_2'
     Each control point is two floating-point values representing the S
     and T texture coordinates.  Internal `glTexCoord2' commands are
     generated when the map is evaluated but the current texture
     coordinates are not updated with the value of these `glTexCoord'
     commands.

`GL_MAP1_TEXTURE_COORD_3'
     Each control point is three floating-point values representing the
     S , T , and R texture coordinates.  Internal `glTexCoord3' commands
     are generated when the map is evaluated but the current texture
     coordinates are not updated with the value of these `glTexCoord'
     commands.

`GL_MAP1_TEXTURE_COORD_4'
     Each control point is four floating-point values representing the S
     , T , R , and Q texture coordinates.  Internal `glTexCoord4'
     commands are generated when the map is evaluated but the current
     texture coordinates are not updated with the value of these
     `glTexCoord' commands.

STRIDE, ORDER, and POINTS define the array addressing for accessing the
control points.  POINTS is the location of the first control point,
which occupies one, two, three, or four contiguous memory locations,
depending on which map is being defined.  ORDER is the number of control
points in the array.  STRIDE specifies how many float or double
locations to advance the internal memory pointer to reach the next
control point.

`GL_INVALID_ENUM' is generated if TARGET is not an accepted value.

`GL_INVALID_VALUE' is generated if U1 is equal to U2.

`GL_INVALID_VALUE' is generated if STRIDE is less than the number of
values in a control point.

`GL_INVALID_VALUE' is generated if ORDER is less than 1 or greater than
the return value of `GL_MAX_EVAL_ORDER'.

`GL_INVALID_OPERATION' is generated if `glMap1' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.

`GL_INVALID_OPERATION' is generated if `glMap1' is called and the value
of `GL_ACTIVE_TEXTURE' is not `GL_TEXTURE0'.")

(define-gl-procedures
  ((glMap2f
     (target GLenum)
     (u1 GLfloat)
     (u2 GLfloat)
     (ustride GLint)
     (uorder GLint)
     (v1 GLfloat)
     (v2 GLfloat)
     (vstride GLint)
     (vorder GLint)
     (points const-GLfloat-*)
     ->
     void)
   (glMap2d
     (target GLenum)
     (u1 GLdouble)
     (u2 GLdouble)
     (ustride GLint)
     (uorder GLint)
     (v1 GLdouble)
     (v2 GLdouble)
     (vstride GLint)
     (vorder GLint)
     (points const-GLdouble-*)
     ->
     void))
  "Define a two-dimensional evaluator.

TARGET
     Specifies the kind of values that are generated by the evaluator.
     Symbolic constants `GL_MAP2_VERTEX_3', `GL_MAP2_VERTEX_4',
     `GL_MAP2_INDEX', `GL_MAP2_COLOR_4', `GL_MAP2_NORMAL',
     `GL_MAP2_TEXTURE_COORD_1', `GL_MAP2_TEXTURE_COORD_2',
     `GL_MAP2_TEXTURE_COORD_3', and `GL_MAP2_TEXTURE_COORD_4' are
     accepted.

U1
     U2

     Specify a linear mapping of U , as presented to `glEvalCoord2', to
     U^ , one of the two variables that are evaluated by the equations
     specified by this command.  Initially, U1 is 0 and U2 is 1.

USTRIDE
     Specifies the number of floats or doubles between the beginning of
     control point R_IJ and the beginning of control point R_(I+1,)\u2062J, ,
     where I and J are the U and V control point indices, respectively.
     This allows control points to be embedded in arbitrary data
     structures.  The only constraint is that the values for a
     particular control point must occupy contiguous memory locations.
     The initial value of USTRIDE is 0.

UORDER
     Specifies the dimension of the control point array in the U axis.
     Must be positive.  The initial value is 1.

V1
     V2

     Specify a linear mapping of V , as presented to `glEvalCoord2', to
     V^ , one of the two variables that are evaluated by the equations
     specified by this command.  Initially, V1 is 0 and V2 is 1.

VSTRIDE
     Specifies the number of floats or doubles between the beginning of
     control point R_IJ and the beginning of control point R_I\u2061(J+1,), ,
     where I and J are the U and V control point indices, respectively.
     This allows control points to be embedded in arbitrary data
     structures.  The only constraint is that the values for a
     particular control point must occupy contiguous memory locations.
     The initial value of VSTRIDE is 0.

VORDER
     Specifies the dimension of the control point array in the V axis.
     Must be positive.  The initial value is 1.

POINTS
     Specifies a pointer to the array of control points.

Evaluators provide a way to use polynomial or rational polynomial
mapping to produce vertices, normals, texture coordinates, and colors.
The values produced by an evaluator are sent on to further stages of GL
processing just as if they had been presented using `glVertex',
`glNormal', `glTexCoord', and `glColor' commands, except that the
generated values do not update the current normal, texture coordinates,
or color.

All polynomial or rational polynomial splines of any degree (up to the
maximum degree supported by the GL implementation) can be described
using evaluators.  These include almost all surfaces used in computer
graphics, including B-spline surfaces, NURBS surfaces, Bezier surfaces,
and so on.

Evaluators define surfaces based on bivariate Bernstein polynomials.
Define P\u2061(U^,V^) as

P\u2061(U^,V^)=ΣI=0NΣJ=0MB_I,^N\u2061(U^,)\u2062B_J,^M\u2061(V^,)\u2062R_IJ



where R_IJ is a control point, B_I,^N\u2061(U^,) is the I th Bernstein
polynomial of degree N (UORDER = N+1 )

B_I,^N\u2061(U^,)=((N), (I),,)\u2062U^,^I\u2062(1-U^,)^N-I,,

and B_J,^M\u2061(V^,) is the J th Bernstein polynomial of degree M (VORDER =
M+1 )

B_J,^M\u2061(V^,)=((M), (J),,)\u2062V^,^J\u2062(1-V^,)^M-J,,

Recall that 0^0==1 and ((N), (0),,)==1

`glMap2' is used to define the basis and to specify what kind of values
are produced.  Once defined, a map can be enabled and disabled by
calling `glEnable' and `glDisable' with the map name, one of the nine
predefined values for TARGET, described below.  When `glEvalCoord2'
presents values U and V , the bivariate Bernstein polynomials are
evaluated using U^ and V^ , where

U^=U-U1,/U2-U1,

V^=V-V1,/V2-V1,

TARGET is a symbolic constant that indicates what kind of control points
are provided in POINTS, and what output is generated when the map is
evaluated.  It can assume one of nine predefined values:

`GL_MAP2_VERTEX_3'
     Each control point is three floating-point values representing X ,
     Y , and Z .  Internal `glVertex3' commands are generated when the
     map is evaluated.

`GL_MAP2_VERTEX_4'
     Each control point is four floating-point values representing X , Y
     , Z , and W .  Internal `glVertex4' commands are generated when the
     map is evaluated.

`GL_MAP2_INDEX'
     Each control point is a single floating-point value representing a
     color index.  Internal `glIndex' commands are generated when the
     map is evaluated but the current index is not updated with the
     value of these `glIndex' commands.

`GL_MAP2_COLOR_4'
     Each control point is four floating-point values representing red,
     green, blue, and alpha.  Internal `glColor4' commands are generated
     when the map is evaluated but the current color is not updated with
     the value of these `glColor4' commands.

`GL_MAP2_NORMAL'
     Each control point is three floating-point values representing the
     X , Y , and Z components of a normal vector.  Internal `glNormal'
     commands are generated when the map is evaluated but the current
     normal is not updated with the value of these `glNormal' commands.

`GL_MAP2_TEXTURE_COORD_1'
     Each control point is a single floating-point value representing
     the S texture coordinate.  Internal `glTexCoord1' commands are
     generated when the map is evaluated but the current texture
     coordinates are not updated with the value of these `glTexCoord'
     commands.

`GL_MAP2_TEXTURE_COORD_2'
     Each control point is two floating-point values representing the S
     and T texture coordinates.  Internal `glTexCoord2' commands are
     generated when the map is evaluated but the current texture
     coordinates are not updated with the value of these `glTexCoord'
     commands.

`GL_MAP2_TEXTURE_COORD_3'
     Each control point is three floating-point values representing the
     S , T , and R texture coordinates.  Internal `glTexCoord3' commands
     are generated when the map is evaluated but the current texture
     coordinates are not updated with the value of these `glTexCoord'
     commands.

`GL_MAP2_TEXTURE_COORD_4'
     Each control point is four floating-point values representing the S
     , T , R , and Q texture coordinates.  Internal `glTexCoord4'
     commands are generated when the map is evaluated but the current
     texture coordinates are not updated with the value of these
     `glTexCoord' commands.

USTRIDE, UORDER, VSTRIDE, VORDER, and POINTS define the array addressing
for accessing the control points.  POINTS is the location of the first
control point, which occupies one, two, three, or four contiguous memory
locations, depending on which map is being defined.  There are
UORDER×VORDER control points in the array.  USTRIDE specifies how many
float or double locations are skipped to advance the internal memory
pointer from control point R_I\u2062J, to control point R_(I+1,)\u2062J, .  VSTRIDE
specifies how many float or double locations are skipped to advance the
internal memory pointer from control point R_I\u2062J, to control point
R_I\u2061(J+1,), .

`GL_INVALID_ENUM' is generated if TARGET is not an accepted value.

`GL_INVALID_VALUE' is generated if U1 is equal to U2, or if V1 is equal
to V2.

`GL_INVALID_VALUE' is generated if either USTRIDE or VSTRIDE is less
than the number of values in a control point.

`GL_INVALID_VALUE' is generated if either UORDER or VORDER is less than
1 or greater than the return value of `GL_MAX_EVAL_ORDER'.

`GL_INVALID_OPERATION' is generated if `glMap2' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.

`GL_INVALID_OPERATION' is generated if `glMap2' is called and the value
of `GL_ACTIVE_TEXTURE' is not `GL_TEXTURE0'.")

(define-gl-procedures
  ((glMapBuffer
     (target GLenum)
     (access GLenum)
     ->
     void-*)
   (glUnmapBuffer (target GLenum) -> GLboolean))
  "Map a buffer object's data store.

TARGET
     Specifies the target buffer object being mapped.  The symbolic
     constant must be `GL_ARRAY_BUFFER', `GL_ELEMENT_ARRAY_BUFFER',
     `GL_PIXEL_PACK_BUFFER', or `GL_PIXEL_UNPACK_BUFFER'.

ACCESS
     Specifies the access policy, indicating whether it will be possible
     to read from, write to, or both read from and write to the buffer
     object's mapped data store.  The symbolic constant must be
     `GL_READ_ONLY', `GL_WRITE_ONLY', or `GL_READ_WRITE'.

`glMapBuffer' maps to the client's address space the entire data store
of the buffer object currently bound to TARGET.  The data can then be
directly read and/or written relative to the returned pointer, depending
on the specified ACCESS policy.  If the GL is unable to map the buffer
object's data store, `glMapBuffer' generates an error and returns
`NULL'.  This may occur for system-specific reasons, such as low virtual
memory availability.

If a mapped data store is accessed in a way inconsistent with the
specified ACCESS policy, no error is generated, but performance may be
negatively impacted and system errors, including program termination,
may result.  Unlike the USAGE parameter of `glBufferData', ACCESS is not
a hint, and does in fact constrain the usage of the mapped data store on
some GL implementations.  In order to achieve the highest performance
available, a buffer object's data store should be used in ways
consistent with both its specified USAGE and ACCESS parameters.

A mapped data store must be unmapped with `glUnmapBuffer' before its
buffer object is used.  Otherwise an error will be generated by any GL
command that attempts to dereference the buffer object's data store.
When a data store is unmapped, the pointer to its data store becomes
invalid.  `glUnmapBuffer' returns `GL_TRUE' unless the data store
contents have become corrupt during the time the data store was mapped.
This can occur for system-specific reasons that affect the availability
of graphics memory, such as screen mode changes.  In such situations,
`GL_FALSE' is returned and the data store contents are undefined.  An
application must detect this rare condition and reinitialize the data
store.

A buffer object's mapped data store is automatically unmapped when the
buffer object is deleted or its data store is recreated with
`glBufferData'.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_ARRAY_BUFFER',
`GL_ELEMENT_ARRAY_BUFFER', `GL_PIXEL_PACK_BUFFER', or
`GL_PIXEL_UNPACK_BUFFER'.

`GL_INVALID_ENUM' is generated if ACCESS is not `GL_READ_ONLY',
`GL_WRITE_ONLY', or `GL_READ_WRITE'.

`GL_OUT_OF_MEMORY' is generated when `glMapBuffer' is executed if the GL
is unable to map the buffer object's data store.  This may occur for a
variety of system-specific reasons, such as the absence of sufficient
remaining virtual memory.

`GL_INVALID_OPERATION' is generated if the reserved buffer object name 0
is bound to TARGET.

`GL_INVALID_OPERATION' is generated if `glMapBuffer' is executed for a
buffer object whose data store is already mapped.

`GL_INVALID_OPERATION' is generated if `glUnmapBuffer' is executed for a
buffer object whose data store is not currently mapped.

`GL_INVALID_OPERATION' is generated if `glMapBuffer' or `glUnmapBuffer'
is executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glMapGrid1d
     (un GLint)
     (u1 GLdouble)
     (u2 GLdouble)
     ->
     void)
   (glMapGrid1f
     (un GLint)
     (u1 GLfloat)
     (u2 GLfloat)
     ->
     void)
   (glMapGrid2d
     (un GLint)
     (u1 GLdouble)
     (u2 GLdouble)
     (vn GLint)
     (v1 GLdouble)
     (v2 GLdouble)
     ->
     void)
   (glMapGrid2f
     (un GLint)
     (u1 GLfloat)
     (u2 GLfloat)
     (vn GLint)
     (v1 GLfloat)
     (v2 GLfloat)
     ->
     void))
  "Define a one- or two-dimensional mesh.

UN
     Specifies the number of partitions in the grid range interval [U1,
     U2].  Must be positive.

U1
     U2

     Specify the mappings for integer grid domain values I=0 and I=UN .

VN
     Specifies the number of partitions in the grid range interval [V1,
     V2] (`glMapGrid2' only).

V1
     V2

     Specify the mappings for integer grid domain values J=0 and J=VN
     (`glMapGrid2' only).

`glMapGrid' and `glEvalMesh' are used together to efficiently generate
and evaluate a series of evenly-spaced map domain values.  `glEvalMesh'
steps through the integer domain of a one- or two-dimensional grid,
whose range is the domain of the evaluation maps specified by `glMap1'
and `glMap2'.

`glMapGrid1' and `glMapGrid2' specify the linear grid mappings between
the I (or I and J ) integer grid coordinates, to the U (or U and V )
floating-point evaluation map coordinates.  See `glMap1' and `glMap2'
for details of how U and V coordinates are evaluated.

`glMapGrid1' specifies a single linear mapping such that integer grid
coordinate 0 maps exactly to U1, and integer grid coordinate UN maps
exactly to U2.  All other integer grid coordinates I are mapped so that

U=I\u2061(U2-U1,)/UN+U1

`glMapGrid2' specifies two such linear mappings.  One maps integer grid
coordinate I=0 exactly to U1, and integer grid coordinate I=UN exactly
to U2.  The other maps integer grid coordinate J=0 exactly to V1, and
integer grid coordinate J=VN exactly to V2.  Other integer grid
coordinates I and J are mapped such that

U=I\u2061(U2-U1,)/UN+U1

V=J\u2061(V2-V1,)/VN+V1

The mappings specified by `glMapGrid' are used identically by
`glEvalMesh' and `glEvalPoint'.

`GL_INVALID_VALUE' is generated if either UN or VN is not positive.

`GL_INVALID_OPERATION' is generated if `glMapGrid' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glMaterialf
     (face GLenum)
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glMateriali
     (face GLenum)
     (pname GLenum)
     (param GLint)
     ->
     void)
   (glMaterialfv
     (face GLenum)
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glMaterialiv
     (face GLenum)
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Specify material parameters for the lighting model.

FACE
     Specifies which face or faces are being updated.  Must be one of
     `GL_FRONT', `GL_BACK', or `GL_FRONT_AND_BACK'.

PNAME
     Specifies the single-valued material parameter of the face or faces
     that is being updated.  Must be `GL_SHININESS'.

PARAM
     Specifies the value that parameter `GL_SHININESS' will be set to.

`glMaterial' assigns values to material parameters.  There are two
matched sets of material parameters.  One, the FRONT-FACING set, is used
to shade points, lines, bitmaps, and all polygons (when two-sided
lighting is disabled), or just front-facing polygons (when two-sided
lighting is enabled).  The other set, BACK-FACING, is used to shade
back-facing polygons only when two-sided lighting is enabled.  Refer to
the `glLightModel' reference page for details concerning one- and
two-sided lighting calculations.

`glMaterial' takes three arguments.  The first, FACE, specifies whether
the `GL_FRONT' materials, the `GL_BACK' materials, or both
`GL_FRONT_AND_BACK' materials will be modified.  The second, PNAME,
specifies which of several parameters in one or both sets will be
modified.  The third, PARAMS, specifies what value or values will be
assigned to the specified parameter.

Material parameters are used in the lighting equation that is optionally
applied to each vertex.  The equation is discussed in the `glLightModel'
reference page.  The parameters that can be specified using
`glMaterial', and their interpretations by the lighting equation, are as
follows:

`GL_AMBIENT'
     PARAMS contains four integer or floating-point values that specify
     the ambient RGBA reflectance of the material.  Integer values are
     mapped linearly such that the most positive representable value
     maps to 1.0, and the most negative representable value maps to -1.0
     .  Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial ambient reflectance
     for both front- and back-facing materials is (0.2, 0.2, 0.2, 1.0).

`GL_DIFFUSE'
     PARAMS contains four integer or floating-point values that specify
     the diffuse RGBA reflectance of the material.  Integer values are
     mapped linearly such that the most positive representable value
     maps to 1.0, and the most negative representable value maps to -1.0
     .  Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial diffuse reflectance
     for both front- and back-facing materials is (0.8, 0.8, 0.8, 1.0).

`GL_SPECULAR'
     PARAMS contains four integer or floating-point values that specify
     the specular RGBA reflectance of the material.  Integer values are
     mapped linearly such that the most positive representable value
     maps to 1.0, and the most negative representable value maps to -1.0
     .  Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial specular
     reflectance for both front- and back-facing materials is (0, 0, 0,
     1).

`GL_EMISSION'
     PARAMS contains four integer or floating-point values that specify
     the RGBA emitted light intensity of the material.  Integer values
     are mapped linearly such that the most positive representable value
     maps to 1.0, and the most negative representable value maps to -1.0
     .  Floating-point values are mapped directly.  Neither integer nor
     floating-point values are clamped.  The initial emission intensity
     for both front- and back-facing materials is (0, 0, 0, 1).

`GL_SHININESS'
     PARAMS is a single integer or floating-point value that specifies
     the RGBA specular exponent of the material.  Integer and
     floating-point values are mapped directly.  Only values in the
     range [0,128] are accepted.  The initial specular exponent for both
     front- and back-facing materials is 0.

`GL_AMBIENT_AND_DIFFUSE'
     Equivalent to calling `glMaterial' twice with the same parameter
     values, once with `GL_AMBIENT' and once with `GL_DIFFUSE'.

`GL_COLOR_INDEXES'
     PARAMS contains three integer or floating-point values specifying
     the color indices for ambient, diffuse, and specular lighting.
     These three values, and `GL_SHININESS', are the only material
     values used by the color index mode lighting equation.  Refer to
     the `glLightModel' reference page for a discussion of color index
     lighting.

`GL_INVALID_ENUM' is generated if either FACE or PNAME is not an
accepted value.

`GL_INVALID_VALUE' is generated if a specular exponent outside the range
[0,128] is specified.")

(define-gl-procedures
  ((glMatrixMode (mode GLenum) -> void))
  "Specify which matrix is the current matrix.

MODE
     Specifies which matrix stack is the target for subsequent matrix
     operations.  Three values are accepted: `GL_MODELVIEW',
     `GL_PROJECTION', and `GL_TEXTURE'.  The initial value is
     `GL_MODELVIEW'.  Additionally, if the `ARB_imaging' extension is
     supported, `GL_COLOR' is also accepted.

`glMatrixMode' sets the current matrix mode.  MODE can assume one of
four values:

`GL_MODELVIEW'
     Applies subsequent matrix operations to the modelview matrix stack.

`GL_PROJECTION'
     Applies subsequent matrix operations to the projection matrix
     stack.

`GL_TEXTURE'
     Applies subsequent matrix operations to the texture matrix stack.

`GL_COLOR'
     Applies subsequent matrix operations to the color matrix stack.

To find out which matrix stack is currently the target of all matrix
operations, call `glGet' with argument `GL_MATRIX_MODE'.  The initial
value is `GL_MODELVIEW'.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glMatrixMode' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glMinmax
     (target GLenum)
     (internalformat GLenum)
     (sink GLboolean)
     ->
     void))
  "Define minmax table.

TARGET
     The minmax table whose parameters are to be set.  Must be
     `GL_MINMAX'.

INTERNALFORMAT
     The format of entries in the minmax table.  Must be one of
     `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8', `GL_ALPHA12', `GL_ALPHA16',
     `GL_LUMINANCE', `GL_LUMINANCE4', `GL_LUMINANCE8', `GL_LUMINANCE12',
     `GL_LUMINANCE16', `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_R3_G3_B2', `GL_RGB', `GL_RGB4',
     `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12', `GL_RGB16',
     `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1', `GL_RGBA8',
     `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

SINK
     If `GL_TRUE', pixels will be consumed by the minmax process and no
     drawing or texture loading will take place.  If `GL_FALSE', pixels
     will proceed to the final conversion process after minmax.

When `GL_MINMAX' is enabled, the RGBA components of incoming pixels are
compared to the minimum and maximum values for each component, which are
stored in the two-element minmax table.  (The first element stores the
minima, and the second element stores the maxima.) If a pixel component
is greater than the corresponding component in the maximum element, then
the maximum element is updated with the pixel component value.  If a
pixel component is less than the corresponding component in the minimum
element, then the minimum element is updated with the pixel component
value.  (In both cases, if the internal format of the minmax table
includes luminance, then the R color component of incoming pixels is
used for comparison.) The contents of the minmax table may be retrieved
at a later time by calling `glGetMinmax'.  The minmax operation is
enabled or disabled by calling `glEnable' or `glDisable', respectively,
with an argument of `GL_MINMAX'.

`glMinmax' redefines the current minmax table to have entries of the
format specified by INTERNALFORMAT.  The maximum element is initialized
with the smallest possible component values, and the minimum element is
initialized with the largest possible component values.  The values in
the previous minmax table, if any, are lost.  If SINK is `GL_TRUE', then
pixels are discarded after minmax; no further processing of the pixels
takes place, and no drawing, texture loading, or pixel readback will
result.



`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_INVALID_OPERATION' is generated if `glMinmax' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glMultiDrawArrays
     (mode GLenum)
     (first GLint-*)
     (count GLsizei-*)
     (primcount GLsizei)
     ->
     void))
  "Render multiple sets of primitives from array data.

MODE
     Specifies what kind of primitives to render.  Symbolic constants
     `GL_POINTS', `GL_LINE_STRIP', `GL_LINE_LOOP', `GL_LINES',
     `GL_TRIANGLE_STRIP', `GL_TRIANGLE_FAN', `GL_TRIANGLES',
     `GL_QUAD_STRIP', `GL_QUADS', and `GL_POLYGON' are accepted.

FIRST
     Points to an array of starting indices in the enabled arrays.

COUNT
     Points to an array of the number of indices to be rendered.

PRIMCOUNT
     Specifies the size of the first and count

`glMultiDrawArrays' specifies multiple sets of geometric primitives with
very few subroutine calls.  Instead of calling a GL procedure to pass
each individual vertex, normal, texture coordinate, edge flag, or color,
you can prespecify separate arrays of vertices, normals, and colors and
use them to construct a sequence of primitives with a single call to
`glMultiDrawArrays'.

`glMultiDrawArrays' behaves identically to `glDrawArrays' except that
PRIMCOUNT separate ranges of elements are specified instead.

When `glMultiDrawArrays' is called, it uses COUNT sequential elements
from each enabled array to construct a sequence of geometric primitives,
beginning with element FIRST.  MODE specifies what kind of primitives
are constructed, and how the array elements construct those primitives.
If `GL_VERTEX_ARRAY' is not enabled, no geometric primitives are
generated.

Vertex attributes that are modified by `glMultiDrawArrays' have an
unspecified value after `glMultiDrawArrays' returns.  For example, if
`GL_COLOR_ARRAY' is enabled, the value of the current color is undefined
after `glMultiDrawArrays' executes.  Attributes that aren't modified
remain well defined.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_VALUE' is generated if PRIMCOUNT is negative.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to an enabled array and the buffer object's data store is
currently mapped.

`GL_INVALID_OPERATION' is generated if `glMultiDrawArrays' is executed
between the execution of `glBegin' and the corresponding `glEnd'.")

(define-gl-procedures
  ((glMultiDrawElements
     (mode GLenum)
     (count const-GLsizei-*)
     (type GLenum)
     (indices const-GLvoid-**)
     (primcount GLsizei)
     ->
     void))
  "Render multiple sets of primitives by specifying indices of array data
elements.

MODE
     Specifies what kind of primitives to render.  Symbolic constants
     `GL_POINTS', `GL_LINE_STRIP', `GL_LINE_LOOP', `GL_LINES',
     `GL_TRIANGLE_STRIP', `GL_TRIANGLE_FAN', `GL_TRIANGLES',
     `GL_QUAD_STRIP', `GL_QUADS', and `GL_POLYGON' are accepted.

COUNT
     Points to an array of the elements counts.

TYPE
     Specifies the type of the values in INDICES.  Must be one of
     `GL_UNSIGNED_BYTE', `GL_UNSIGNED_SHORT', or `GL_UNSIGNED_INT'.

INDICES
     Specifies a pointer to the location where the indices are stored.

PRIMCOUNT
     Specifies the size of the COUNT array.

`glMultiDrawElements' specifies multiple sets of geometric primitives
with very few subroutine calls.  Instead of calling a GL function to
pass each individual vertex, normal, texture coordinate, edge flag, or
color, you can prespecify separate arrays of vertices, normals, and so
on, and use them to construct a sequence of primitives with a single
call to `glMultiDrawElements'.

`glMultiDrawElements' is identical in operation to `glDrawElements'
except that PRIMCOUNT separate lists of elements are specified.

Vertex attributes that are modified by `glMultiDrawElements' have an
unspecified value after `glMultiDrawElements' returns.  For example, if
`GL_COLOR_ARRAY' is enabled, the value of the current color is undefined
after `glMultiDrawElements' executes.  Attributes that aren't modified
maintain their previous values.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_VALUE' is generated if PRIMCOUNT is negative.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to an enabled array or the element array and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if `glMultiDrawElements' is executed
between the execution of `glBegin' and the corresponding `glEnd'.")

(define-gl-procedures
  ((glMultiTexCoord1s
     (target GLenum)
     (s GLshort)
     ->
     void)
   (glMultiTexCoord1i
     (target GLenum)
     (s GLint)
     ->
     void)
   (glMultiTexCoord1f
     (target GLenum)
     (s GLfloat)
     ->
     void)
   (glMultiTexCoord1d
     (target GLenum)
     (s GLdouble)
     ->
     void)
   (glMultiTexCoord2s
     (target GLenum)
     (s GLshort)
     (t GLshort)
     ->
     void)
   (glMultiTexCoord2i
     (target GLenum)
     (s GLint)
     (t GLint)
     ->
     void)
   (glMultiTexCoord2f
     (target GLenum)
     (s GLfloat)
     (t GLfloat)
     ->
     void)
   (glMultiTexCoord2d
     (target GLenum)
     (s GLdouble)
     (t GLdouble)
     ->
     void)
   (glMultiTexCoord3s
     (target GLenum)
     (s GLshort)
     (t GLshort)
     (r GLshort)
     ->
     void)
   (glMultiTexCoord3i
     (target GLenum)
     (s GLint)
     (t GLint)
     (r GLint)
     ->
     void)
   (glMultiTexCoord3f
     (target GLenum)
     (s GLfloat)
     (t GLfloat)
     (r GLfloat)
     ->
     void)
   (glMultiTexCoord3d
     (target GLenum)
     (s GLdouble)
     (t GLdouble)
     (r GLdouble)
     ->
     void)
   (glMultiTexCoord4s
     (target GLenum)
     (s GLshort)
     (t GLshort)
     (r GLshort)
     (q GLshort)
     ->
     void)
   (glMultiTexCoord4i
     (target GLenum)
     (s GLint)
     (t GLint)
     (r GLint)
     (q GLint)
     ->
     void)
   (glMultiTexCoord4f
     (target GLenum)
     (s GLfloat)
     (t GLfloat)
     (r GLfloat)
     (q GLfloat)
     ->
     void)
   (glMultiTexCoord4d
     (target GLenum)
     (s GLdouble)
     (t GLdouble)
     (r GLdouble)
     (q GLdouble)
     ->
     void)
   (glMultiTexCoord1sv
     (target GLenum)
     (v const-GLshort-*)
     ->
     void)
   (glMultiTexCoord1iv
     (target GLenum)
     (v const-GLint-*)
     ->
     void)
   (glMultiTexCoord1fv
     (target GLenum)
     (v const-GLfloat-*)
     ->
     void)
   (glMultiTexCoord1dv
     (target GLenum)
     (v const-GLdouble-*)
     ->
     void)
   (glMultiTexCoord2sv
     (target GLenum)
     (v const-GLshort-*)
     ->
     void)
   (glMultiTexCoord2iv
     (target GLenum)
     (v const-GLint-*)
     ->
     void)
   (glMultiTexCoord2fv
     (target GLenum)
     (v const-GLfloat-*)
     ->
     void)
   (glMultiTexCoord2dv
     (target GLenum)
     (v const-GLdouble-*)
     ->
     void)
   (glMultiTexCoord3sv
     (target GLenum)
     (v const-GLshort-*)
     ->
     void)
   (glMultiTexCoord3iv
     (target GLenum)
     (v const-GLint-*)
     ->
     void)
   (glMultiTexCoord3fv
     (target GLenum)
     (v const-GLfloat-*)
     ->
     void)
   (glMultiTexCoord3dv
     (target GLenum)
     (v const-GLdouble-*)
     ->
     void)
   (glMultiTexCoord4sv
     (target GLenum)
     (v const-GLshort-*)
     ->
     void)
   (glMultiTexCoord4iv
     (target GLenum)
     (v const-GLint-*)
     ->
     void)
   (glMultiTexCoord4fv
     (target GLenum)
     (v const-GLfloat-*)
     ->
     void)
   (glMultiTexCoord4dv
     (target GLenum)
     (v const-GLdouble-*)
     ->
     void))
  "Set the current texture coordinates.

TARGET
     Specifies the texture unit whose coordinates should be modified.
     The number of texture units is implementation dependent, but must
     be at least two.  Symbolic constant must be one of `GL_TEXTURE' I ,
     where i ranges from 0 to `GL_MAX_TEXTURE_COORDS' - 1, which is an
     implementation-dependent value.

S
     T

     R

     Q

     Specify S, T, R, and Q texture coordinates for TARGET texture unit.
     Not all parameters are present in all forms of the command.

`glMultiTexCoord' specifies texture coordinates in one, two, three, or
four dimensions.  `glMultiTexCoord1' sets the current texture
coordinates to (S,001) ; a call to `glMultiTexCoord2' sets them to
(S,T01) .  Similarly, `glMultiTexCoord3' specifies the texture
coordinates as (S,TR1) , and `glMultiTexCoord4' defines all four
components explicitly as (S,TRQ) .

The current texture coordinates are part of the data that is associated
with each vertex and with the current raster position.  Initially, the
values for (S,TRQ) are (0,001) .")

(define-gl-procedures
  ((glMultMatrixd (m const-GLdouble-*) -> void)
   (glMultMatrixf (m const-GLfloat-*) -> void))
  "Multiply the current matrix with the specified matrix.

M
     Points to 16 consecutive values that are used as the elements of a
     4×4 column-major matrix.

`glMultMatrix' multiplies the current matrix with the one specified
using M, and replaces the current matrix with the product.

The current matrix is determined by the current matrix mode (see
`glMatrixMode').  It is either the projection matrix, modelview matrix,
or the texture matrix.

`GL_INVALID_OPERATION' is generated if `glMultMatrix' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glMultTransposeMatrixd
     (m const-GLdouble-*)
     ->
     void)
   (glMultTransposeMatrixf
     (m const-GLfloat-*)
     ->
     void))
  "Multiply the current matrix with the specified row-major ordered matrix.

M
     Points to 16 consecutive values that are used as the elements of a
     4×4 row-major matrix.

`glMultTransposeMatrix' multiplies the current matrix with the one
specified using M, and replaces the current matrix with the product.

The current matrix is determined by the current matrix mode (see
`glMatrixMode').  It is either the projection matrix, modelview matrix,
or the texture matrix.

`GL_INVALID_OPERATION' is generated if `glMultTransposeMatrix' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glNewList (list GLuint) (mode GLenum) -> void)
   (glEndList -> void))
  "Create or replace a display list.

LIST
     Specifies the display-list name.

MODE
     Specifies the compilation mode, which can be `GL_COMPILE' or
     `GL_COMPILE_AND_EXECUTE'.

Display lists are groups of GL commands that have been stored for
subsequent execution.  Display lists are created with `glNewList'.  All
subsequent commands are placed in the display list, in the order issued,
until `glEndList' is called.

`glNewList' has two arguments.  The first argument, LIST, is a positive
integer that becomes the unique name for the display list.  Names can be
created and reserved with `glGenLists' and tested for uniqueness with
`glIsList'.  The second argument, MODE, is a symbolic constant that can
assume one of two values:

`GL_COMPILE'
     Commands are merely compiled.

`GL_COMPILE_AND_EXECUTE'
     Commands are executed as they are compiled into the display list.

Certain commands are not compiled into the display list but are executed
immediately, regardless of the display-list mode.  These commands are
`glAreTexturesResident', `glColorPointer', `glDeleteLists',
`glDeleteTextures', `glDisableClientState', `glEdgeFlagPointer',
`glEnableClientState', `glFeedbackBuffer', `glFinish', `glFlush',
`glGenLists', `glGenTextures', `glIndexPointer', `glInterleavedArrays',
`glIsEnabled', `glIsList', `glIsTexture', `glNormalPointer',
`glPopClientAttrib', `glPixelStore', `glPushClientAttrib',
`glReadPixels', `glRenderMode', `glSelectBuffer', `glTexCoordPointer',
`glVertexPointer', and all of the `glGet' commands.

Similarly, `glTexImage1D', `glTexImage2D', and `glTexImage3D' are
executed immediately and not compiled into the display list when their
first argument is `GL_PROXY_TEXTURE_1D', `GL_PROXY_TEXTURE_1D', or
`GL_PROXY_TEXTURE_3D', respectively.

When the `ARB_imaging' extension is supported, `glHistogram' executes
immediately when its argument is `GL_PROXY_HISTOGRAM'.  Similarly,
`glColorTable' executes immediately when its first argument is
`GL_PROXY_COLOR_TABLE', `GL_PROXY_POST_CONVOLUTION_COLOR_TABLE', or
`GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE'.

For OpenGL versions 1.3 and greater, or when the `ARB_multitexture'
extension is supported, `glClientActiveTexture' is not compiled into
display lists, but executed immediately.

When `glEndList' is encountered, the display-list definition is
completed by associating the list with the unique name LIST (specified
in the `glNewList' command).  If a display list with name LIST already
exists, it is replaced only when `glEndList' is called.

`GL_INVALID_VALUE' is generated if LIST is 0.

`GL_INVALID_ENUM' is generated if MODE is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glEndList' is called without a
preceding `glNewList', or if `glNewList' is called while a display list
is being defined.

`GL_INVALID_OPERATION' is generated if `glNewList' or `glEndList' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.

`GL_OUT_OF_MEMORY' is generated if there is insufficient memory to
compile the display list.  If the GL version is 1.1 or greater, no
change is made to the previous contents of the display list, if any, and
no other change is made to the GL state.  (It is as if no attempt had
been made to create the new display list.)")

(define-gl-procedures
  ((glNormalPointer
     (type GLenum)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of normals.

TYPE
     Specifies the data type of each coordinate in the array.  Symbolic
     constants `GL_BYTE', `GL_SHORT', `GL_INT', `GL_FLOAT', and
     `GL_DOUBLE' are accepted.  The initial value is `GL_FLOAT'.

STRIDE
     Specifies the byte offset between consecutive normals.  If STRIDE
     is 0, the normals are understood to be tightly packed in the array.
     The initial value is 0.

POINTER
     Specifies a pointer to the first coordinate of the first normal in
     the array.  The initial value is 0.

`glNormalPointer' specifies the location and data format of an array of
normals to use when rendering.  TYPE specifies the data type of each
normal coordinate, and STRIDE specifies the byte stride from one normal
to the next, allowing vertices and attributes to be packed into a single
array or stored in separate arrays.  (Single-array storage may be more
efficient on some implementations; see `glInterleavedArrays'.)

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a normal array is specified, POINTER
is treated as a byte offset into the buffer object's data store.  Also,
the buffer object binding (`GL_ARRAY_BUFFER_BINDING') is saved as normal
vertex array client-side state (`GL_NORMAL_ARRAY_BUFFER_BINDING').

When a normal array is specified, TYPE, STRIDE, and POINTER are saved as
client-side state, in addition to the current vertex array buffer object
binding.

To enable and disable the normal array, call `glEnableClientState' and
`glDisableClientState' with the argument `GL_NORMAL_ARRAY'.  If enabled,
the normal array is used when `glDrawArrays', `glMultiDrawArrays',
`glDrawElements', `glMultiDrawElements', `glDrawRangeElements', or
`glArrayElement' is called.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glNormal3b
     (nx GLbyte)
     (ny GLbyte)
     (nz GLbyte)
     ->
     void)
   (glNormal3d
     (nx GLdouble)
     (ny GLdouble)
     (nz GLdouble)
     ->
     void)
   (glNormal3f
     (nx GLfloat)
     (ny GLfloat)
     (nz GLfloat)
     ->
     void)
   (glNormal3i
     (nx GLint)
     (ny GLint)
     (nz GLint)
     ->
     void)
   (glNormal3s
     (nx GLshort)
     (ny GLshort)
     (nz GLshort)
     ->
     void)
   (glNormal3bv (v const-GLbyte-*) -> void)
   (glNormal3dv (v const-GLdouble-*) -> void)
   (glNormal3fv (v const-GLfloat-*) -> void)
   (glNormal3iv (v const-GLint-*) -> void)
   (glNormal3sv (v const-GLshort-*) -> void))
  "Set the current normal vector.

NX
     NY

     NZ

     Specify the X , Y , and Z coordinates of the new current normal.
     The initial value of the current normal is the unit vector, (0, 0,
     1).



The current normal is set to the given coordinates whenever `glNormal'
is issued.  Byte, short, or integer arguments are converted to
floating-point format with a linear mapping that maps the most positive
representable integer value to 1.0 and the most negative representable
integer value to -1.0 .

Normals specified with `glNormal' need not have unit length.  If
`GL_NORMALIZE' is enabled, then normals of any length specified with
`glNormal' are normalized after transformation.  If `GL_RESCALE_NORMAL'
is enabled, normals are scaled by a scaling factor derived from the
modelview matrix.  `GL_RESCALE_NORMAL' requires that the originally
specified normals were of unit length, and that the modelview matrix
contain only uniform scales for proper results.  To enable and disable
normalization, call `glEnable' and `glDisable' with either
`GL_NORMALIZE' or `GL_RESCALE_NORMAL'.  Normalization is initially
disabled.")

(define-gl-procedures
  ((glOrtho
     (left GLdouble)
     (right GLdouble)
     (bottom GLdouble)
     (top GLdouble)
     (nearVal GLdouble)
     (farVal GLdouble)
     ->
     void))
  "Multiply the current matrix with an orthographic matrix.

LEFT
     RIGHT

     Specify the coordinates for the left and right vertical clipping
     planes.

BOTTOM
     TOP

     Specify the coordinates for the bottom and top horizontal clipping
     planes.

NEARVAL
     FARVAL

     Specify the distances to the nearer and farther depth clipping
     planes.  These values are negative if the plane is to be behind the
     viewer.

`glOrtho' describes a transformation that produces a parallel
projection.  The current matrix (see `glMatrixMode') is multiplied by
this matrix and the result replaces the current matrix, as if
`glMultMatrix' were called with the following matrix as its argument:

((2/RIGHT-LEFT,, 0 0 T_X,), (0 2/TOP-BOTTOM,, 0 T_Y,), (0 0
-2/FARVAL-NEARVAL,, T_Z,), (0 0 0 1),)

where T_X=-RIGHT+LEFT,/RIGHT-LEFT,, T_Y=-TOP+BOTTOM,/TOP-BOTTOM,,
T_Z=-FARVAL+NEARVAL,/FARVAL-NEARVAL,,

Typically, the matrix mode is `GL_PROJECTION', and (LEFT,BOTTOM-NEARVAL)
and (RIGHT,TOP-NEARVAL) specify the points on the near clipping plane
that are mapped to the lower left and upper right corners of the window,
respectively, assuming that the eye is located at (0, 0, 0).  -FARVAL
specifies the location of the far clipping plane.  Both NEARVAL and
FARVAL can be either positive or negative.

Use `glPushMatrix' and `glPopMatrix' to save and restore the current
matrix stack.

`GL_INVALID_VALUE' is generated if LEFT = RIGHT, or BOTTOM = TOP, or
NEAR = FAR.

`GL_INVALID_OPERATION' is generated if `glOrtho' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glPassThrough (token GLfloat) -> void))
  "Place a marker in the feedback buffer.

TOKEN
     Specifies a marker value to be placed in the feedback buffer
     following a `GL_PASS_THROUGH_TOKEN'.



Feedback is a GL render mode.  The mode is selected by calling
`glRenderMode' with `GL_FEEDBACK'.  When the GL is in feedback mode, no
pixels are produced by rasterization.  Instead, information about
primitives that would have been rasterized is fed back to the
application using the GL.  See the `glFeedbackBuffer' reference page for
a description of the feedback buffer and the values in it.

`glPassThrough' inserts a user-defined marker in the feedback buffer
when it is executed in feedback mode.  TOKEN is returned as if it were a
primitive; it is indicated with its own unique identifying value:
`GL_PASS_THROUGH_TOKEN'.  The order of `glPassThrough' commands with
respect to the specification of graphics primitives is maintained.

`GL_INVALID_OPERATION' is generated if `glPassThrough' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glPixelMapfv
     (map GLenum)
     (mapsize GLsizei)
     (values const-GLfloat-*)
     ->
     void)
   (glPixelMapuiv
     (map GLenum)
     (mapsize GLsizei)
     (values const-GLuint-*)
     ->
     void)
   (glPixelMapusv
     (map GLenum)
     (mapsize GLsizei)
     (values const-GLushort-*)
     ->
     void))
  "Set up pixel transfer maps.

MAP
     Specifies a symbolic map name.  Must be one of the following:
     `GL_PIXEL_MAP_I_TO_I', `GL_PIXEL_MAP_S_TO_S',
     `GL_PIXEL_MAP_I_TO_R', `GL_PIXEL_MAP_I_TO_G',
     `GL_PIXEL_MAP_I_TO_B', `GL_PIXEL_MAP_I_TO_A',
     `GL_PIXEL_MAP_R_TO_R', `GL_PIXEL_MAP_G_TO_G',
     `GL_PIXEL_MAP_B_TO_B', or `GL_PIXEL_MAP_A_TO_A'.

MAPSIZE
     Specifies the size of the map being defined.

VALUES
     Specifies an array of MAPSIZE values.

`glPixelMap' sets up translation tables, or MAPS, used by
`glCopyPixels', `glCopyTexImage1D', `glCopyTexImage2D',
`glCopyTexSubImage1D', `glCopyTexSubImage2D', `glCopyTexSubImage3D',
`glDrawPixels', `glReadPixels', `glTexImage1D', `glTexImage2D',
`glTexImage3D', `glTexSubImage1D', `glTexSubImage2D', and
`glTexSubImage3D'.  Additionally, if the `ARB_imaging' subset is
supported, the routines `glColorTable', `glColorSubTable',
`glConvolutionFilter1D', `glConvolutionFilter2D', `glHistogram',
`glMinmax', and `glSeparableFilter2D'.  Use of these maps is described
completely in the `glPixelTransfer' reference page, and partly in the
reference pages for the pixel and texture image commands.  Only the
specification of the maps is described in this reference page.

MAP is a symbolic map name, indicating one of ten maps to set.  MAPSIZE
specifies the number of entries in the map, and VALUES is a pointer to
an array of MAPSIZE map values.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a pixel
transfer map is specified, VALUES is treated as a byte offset into the
buffer object's data store.

The ten maps are as follows:

`GL_PIXEL_MAP_I_TO_I'
     Maps color indices to color indices.

`GL_PIXEL_MAP_S_TO_S'
     Maps stencil indices to stencil indices.

`GL_PIXEL_MAP_I_TO_R'
     Maps color indices to red components.

`GL_PIXEL_MAP_I_TO_G'
     Maps color indices to green components.

`GL_PIXEL_MAP_I_TO_B'
     Maps color indices to blue components.

`GL_PIXEL_MAP_I_TO_A'
     Maps color indices to alpha components.

`GL_PIXEL_MAP_R_TO_R'
     Maps red components to red components.

`GL_PIXEL_MAP_G_TO_G'
     Maps green components to green components.

`GL_PIXEL_MAP_B_TO_B'
     Maps blue components to blue components.

`GL_PIXEL_MAP_A_TO_A'
     Maps alpha components to alpha components.

The entries in a map can be specified as single-precision floating-point
numbers, unsigned short integers, or unsigned int integers.  Maps that
store color component values (all but `GL_PIXEL_MAP_I_TO_I' and
`GL_PIXEL_MAP_S_TO_S') retain their values in floating-point format,
with unspecified mantissa and exponent sizes.  Floating-point values
specified by `glPixelMapfv' are converted directly to the internal
floating-point format of these maps, then clamped to the range [0,1].
Unsigned integer values specified by `glPixelMapusv' and `glPixelMapuiv'
are converted linearly such that the largest representable integer maps
to 1.0, and 0 maps to 0.0.

Maps that store indices, `GL_PIXEL_MAP_I_TO_I' and
`GL_PIXEL_MAP_S_TO_S', retain their values in fixed-point format, with
an unspecified number of bits to the right of the binary point.
Floating-point values specified by `glPixelMapfv' are converted directly
to the internal fixed-point format of these maps.  Unsigned integer
values specified by `glPixelMapusv' and `glPixelMapuiv' specify integer
values, with all 0's to the right of the binary point.

The following table shows the initial sizes and values for each of the
maps.  Maps that are indexed by either color or stencil indices must
have MAPSIZE = 2^N for some N or the results are undefined.  The maximum
allowable size for each map depends on the implementation and can be
determined by calling `glGet' with argument `GL_MAX_PIXEL_MAP_TABLE'.
The single maximum applies to all maps; it is at least 32.

*MAP*
     *Lookup Index*, *Lookup Value*, *Initial Size*, *Initial Value*

`GL_PIXEL_MAP_I_TO_I'
     color index , color index , 1 , 0

`GL_PIXEL_MAP_S_TO_S'
     stencil index , stencil index , 1 , 0

`GL_PIXEL_MAP_I_TO_R'
     color index , R , 1 , 0

`GL_PIXEL_MAP_I_TO_G'
     color index , G , 1 , 0

`GL_PIXEL_MAP_I_TO_B'
     color index , B , 1 , 0

`GL_PIXEL_MAP_I_TO_A'
     color index , A , 1 , 0

`GL_PIXEL_MAP_R_TO_R'
     R , R , 1 , 0

`GL_PIXEL_MAP_G_TO_G'
     G , G , 1 , 0

`GL_PIXEL_MAP_B_TO_B'
     B , B , 1 , 0

`GL_PIXEL_MAP_A_TO_A'
     A , A , 1 , 0

`GL_INVALID_ENUM' is generated if MAP is not an accepted value.

`GL_INVALID_VALUE' is generated if MAPSIZE is less than one or larger
than `GL_MAX_PIXEL_MAP_TABLE'.

`GL_INVALID_VALUE' is generated if MAP is `GL_PIXEL_MAP_I_TO_I',
`GL_PIXEL_MAP_S_TO_S', `GL_PIXEL_MAP_I_TO_R', `GL_PIXEL_MAP_I_TO_G',
`GL_PIXEL_MAP_I_TO_B', or `GL_PIXEL_MAP_I_TO_A', and MAPSIZE is not a
power of two.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated by `glPixelMapfv' if a non-zero
buffer object name is bound to the `GL_PIXEL_UNPACK_BUFFER' target and
VALUES is not evenly divisible into the number of bytes needed to store
in memory a GLfloat datum.

`GL_INVALID_OPERATION' is generated by `glPixelMapuiv' if a non-zero
buffer object name is bound to the `GL_PIXEL_UNPACK_BUFFER' target and
VALUES is not evenly divisible into the number of bytes needed to store
in memory a GLuint datum.

`GL_INVALID_OPERATION' is generated by `glPixelMapusv' if a non-zero
buffer object name is bound to the `GL_PIXEL_UNPACK_BUFFER' target and
VALUES is not evenly divisible into the number of bytes needed to store
in memory a GLushort datum.

`GL_INVALID_OPERATION' is generated if `glPixelMap' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glPixelStoref
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glPixelStorei
     (pname GLenum)
     (param GLint)
     ->
     void))
  "Set pixel storage modes.

PNAME
     Specifies the symbolic name of the parameter to be set.  Six values
     affect the packing of pixel data into memory: `GL_PACK_SWAP_BYTES',
     `GL_PACK_LSB_FIRST', `GL_PACK_ROW_LENGTH', `GL_PACK_IMAGE_HEIGHT',
     `GL_PACK_SKIP_PIXELS', `GL_PACK_SKIP_ROWS', `GL_PACK_SKIP_IMAGES',
     and `GL_PACK_ALIGNMENT'.  Six more affect the unpacking of pixel
     data FROM memory: `GL_UNPACK_SWAP_BYTES', `GL_UNPACK_LSB_FIRST',
     `GL_UNPACK_ROW_LENGTH', `GL_UNPACK_IMAGE_HEIGHT',
     `GL_UNPACK_SKIP_PIXELS', `GL_UNPACK_SKIP_ROWS',
     `GL_UNPACK_SKIP_IMAGES', and `GL_UNPACK_ALIGNMENT'.

PARAM
     Specifies the value that PNAME is set to.

`glPixelStore' sets pixel storage modes that affect the operation of
subsequent `glDrawPixels' and `glReadPixels' as well as the unpacking of
polygon stipple patterns (see `glPolygonStipple'), bitmaps (see
`glBitmap'), texture patterns (see `glTexImage1D', `glTexImage2D',
`glTexImage3D', `glTexSubImage1D', `glTexSubImage2D',
`glTexSubImage3D').  Additionally, if the `ARB_imaging' extension is
supported, pixel storage modes affect convolution filters (see
`glConvolutionFilter1D', `glConvolutionFilter2D', and
`glSeparableFilter2D', color table (see `glColorTable', and
`glColorSubTable', and unpacking histogram (See `glHistogram'), and
minmax (See `glMinmax') data.

PNAME is a symbolic constant indicating the parameter to be set, and
PARAM is the new value.  Six of the twelve storage parameters affect how
pixel data is returned to client memory.  They are as follows:

`GL_PACK_SWAP_BYTES'
     If true, byte ordering for multibyte color components, depth
     components, color indices, or stencil indices is reversed.  That
     is, if a four-byte component consists of bytes B_0 , B_1 , B_2 ,
     B_3 , it is stored in memory as B_3 , B_2 , B_1 , B_0 if
     `GL_PACK_SWAP_BYTES' is true.  `GL_PACK_SWAP_BYTES' has no effect
     on the memory order of components within a pixel, only on the order
     of bytes within components or indices.  For example, the three
     components of a `GL_RGB' format pixel are always stored with red
     first, green second, and blue third, regardless of the value of
     `GL_PACK_SWAP_BYTES'.

`GL_PACK_LSB_FIRST'
     If true, bits are ordered within a byte from least significant to
     most significant; otherwise, the first bit in each byte is the most
     significant one.  This parameter is significant for bitmap data
     only.

`GL_PACK_ROW_LENGTH'
     If greater than 0, `GL_PACK_ROW_LENGTH' defines the number of
     pixels in a row.  If the first pixel of a row is placed at location
     P in memory, then the location of the first pixel of the next row
     is obtained by skipping

     K={(N\u2062L), (A/S,\u2062⌈S\u2062N\u2062L,/A,⌉)\u2062(S>=A), (S<A),

     components or indices, where N is the number of components or
     indices in a pixel, L is the number of pixels in a row
     (`GL_PACK_ROW_LENGTH' if it is greater than 0, the WIDTH argument
     to the pixel routine otherwise), A is the value of
     `GL_PACK_ALIGNMENT', and S is the size, in bytes, of a single
     component (if A<S , then it is as if A=S ).  In the case of 1-bit
     values, the location of the next row is obtained by skipping

     K=8\u2062A\u2062⌈N\u2062L,/8\u2062A,,⌉

     components or indices.

     The word COMPONENT in this description refers to the nonindex
     values red, green, blue, alpha, and depth.  Storage format
     `GL_RGB', for example, has three components per pixel: first red,
     then green, and finally blue.

`GL_PACK_IMAGE_HEIGHT'
     If greater than 0, `GL_PACK_IMAGE_HEIGHT' defines the number of
     pixels in an image three-dimensional texture volume, where
     ``image'' is defined by all pixels sharing the same third dimension
     index.  If the first pixel of a row is placed at location P in
     memory, then the location of the first pixel of the next row is
     obtained by skipping

     K={(N\u2062L\u2062H), (A/S,\u2062⌈S\u2062N\u2062L\u2062H,/A,⌉)\u2062(S>=A), (S<A),

     components or indices, where N is the number of components or
     indices in a pixel, L is the number of pixels in a row
     (`GL_PACK_ROW_LENGTH' if it is greater than 0, the WIDTH argument
     to `glTexImage3D' otherwise), H is the number of rows in a pixel
     image (`GL_PACK_IMAGE_HEIGHT' if it is greater than 0, the HEIGHT
     argument to the `glTexImage3D' routine otherwise), A is the value
     of `GL_PACK_ALIGNMENT', and S is the size, in bytes, of a single
     component (if A<S , then it is as if A=S ).

     The word COMPONENT in this description refers to the nonindex
     values red, green, blue, alpha, and depth.  Storage format
     `GL_RGB', for example, has three components per pixel: first red,
     then green, and finally blue.

`GL_PACK_SKIP_PIXELS', `GL_PACK_SKIP_ROWS', and `GL_PACK_SKIP_IMAGES'
     These values are provided as a convenience to the programmer; they
     provide no functionality that cannot be duplicated simply by
     incrementing the pointer passed to `glReadPixels'.  Setting
     `GL_PACK_SKIP_PIXELS' to I is equivalent to incrementing the
     pointer by I\u2062N components or indices, where N is the number of
     components or indices in each pixel.  Setting `GL_PACK_SKIP_ROWS'
     to J is equivalent to incrementing the pointer by J\u2062M components or
     indices, where M is the number of components or indices per row, as
     just computed in the `GL_PACK_ROW_LENGTH' section.  Setting
     `GL_PACK_SKIP_IMAGES' to K is equivalent to incrementing the
     pointer by K\u2062P , where P is the number of components or indices per
     image, as computed in the `GL_PACK_IMAGE_HEIGHT' section.

`GL_PACK_ALIGNMENT'
     Specifies the alignment requirements for the start of each pixel
     row in memory.  The allowable values are 1 (byte-alignment), 2
     (rows aligned to even-numbered bytes), 4 (word-alignment), and 8
     (rows start on double-word boundaries).

The other six of the twelve storage parameters affect how pixel data is
read from client memory.  These values are significant for
`glDrawPixels', `glTexImage1D', `glTexImage2D', `glTexImage3D',
`glTexSubImage1D', `glTexSubImage2D', `glTexSubImage3D', `glBitmap', and
`glPolygonStipple'.

Additionally, if the `ARB_imaging' extension is supported,
`glColorTable', `glColorSubTable', `glConvolutionFilter1D',
`glConvolutionFilter2D', and `glSeparableFilter2D'.  They are as
follows:

`GL_UNPACK_SWAP_BYTES'
     If true, byte ordering for multibyte color components, depth
     components, color indices, or stencil indices is reversed.  That
     is, if a four-byte component consists of bytes B_0 , B_1 , B_2 ,
     B_3 , it is taken from memory as B_3 , B_2 , B_1 , B_0 if
     `GL_UNPACK_SWAP_BYTES' is true.  `GL_UNPACK_SWAP_BYTES' has no
     effect on the memory order of components within a pixel, only on
     the order of bytes within components or indices.  For example, the
     three components of a `GL_RGB' format pixel are always stored with
     red first, green second, and blue third, regardless of the value of
     `GL_UNPACK_SWAP_BYTES'.

`GL_UNPACK_LSB_FIRST'
     If true, bits are ordered within a byte from least significant to
     most significant; otherwise, the first bit in each byte is the most
     significant one.  This is relevant only for bitmap data.

`GL_UNPACK_ROW_LENGTH'
     If greater than 0, `GL_UNPACK_ROW_LENGTH' defines the number of
     pixels in a row.  If the first pixel of a row is placed at location
     P in memory, then the location of the first pixel of the next row
     is obtained by skipping

     K={(N\u2062L), (A/S,\u2062⌈S\u2062N\u2062L,/A,⌉)\u2062(S>=A), (S<A),

     components or indices, where N is the number of components or
     indices in a pixel, L is the number of pixels in a row
     (`GL_UNPACK_ROW_LENGTH' if it is greater than 0, the WIDTH argument
     to the pixel routine otherwise), A is the value of
     `GL_UNPACK_ALIGNMENT', and S is the size, in bytes, of a single
     component (if A<S , then it is as if A=S ).  In the case of 1-bit
     values, the location of the next row is obtained by skipping

     K=8\u2062A\u2062⌈N\u2062L,/8\u2062A,,⌉

     components or indices.

     The word COMPONENT in this description refers to the nonindex
     values red, green, blue, alpha, and depth.  Storage format
     `GL_RGB', for example, has three components per pixel: first red,
     then green, and finally blue.

`GL_UNPACK_IMAGE_HEIGHT'
     If greater than 0, `GL_UNPACK_IMAGE_HEIGHT' defines the number of
     pixels in an image of a three-dimensional texture volume.  Where
     ``image'' is defined by all pixel sharing the same third dimension
     index.  If the first pixel of a row is placed at location P in
     memory, then the location of the first pixel of the next row is
     obtained by skipping

     K={(N\u2062L\u2062H), (A/S,\u2062⌈S\u2062N\u2062L\u2062H,/A,⌉)\u2062(S>=A), (S<A),

     components or indices, where N is the number of components or
     indices in a pixel, L is the number of pixels in a row
     (`GL_UNPACK_ROW_LENGTH' if it is greater than 0, the WIDTH argument
     to `glTexImage3D' otherwise), H is the number of rows in an image
     (`GL_UNPACK_IMAGE_HEIGHT' if it is greater than 0, the HEIGHT
     argument to `glTexImage3D' otherwise), A is the value of
     `GL_UNPACK_ALIGNMENT', and S is the size, in bytes, of a single
     component (if A<S , then it is as if A=S ).

     The word COMPONENT in this description refers to the nonindex
     values red, green, blue, alpha, and depth.  Storage format
     `GL_RGB', for example, has three components per pixel: first red,
     then green, and finally blue.

`GL_UNPACK_SKIP_PIXELS' and `GL_UNPACK_SKIP_ROWS'
     These values are provided as a convenience to the programmer; they
     provide no functionality that cannot be duplicated by incrementing
     the pointer passed to `glDrawPixels', `glTexImage1D',
     `glTexImage2D', `glTexSubImage1D', `glTexSubImage2D', `glBitmap',
     or `glPolygonStipple'.  Setting `GL_UNPACK_SKIP_PIXELS' to I is
     equivalent to incrementing the pointer by I\u2062N components or
     indices, where N is the number of components or indices in each
     pixel.  Setting `GL_UNPACK_SKIP_ROWS' to J is equivalent to
     incrementing the pointer by J\u2062K components or indices, where K is
     the number of components or indices per row, as just computed in
     the `GL_UNPACK_ROW_LENGTH' section.

`GL_UNPACK_ALIGNMENT'
     Specifies the alignment requirements for the start of each pixel
     row in memory.  The allowable values are 1 (byte-alignment), 2
     (rows aligned to even-numbered bytes), 4 (word-alignment), and 8
     (rows start on double-word boundaries).

The following table gives the type, initial value, and range of valid
values for each storage parameter that can be set with `glPixelStore'.



*PNAME*
     *Type*, *Initial Value*, *Valid Range*

`GL_PACK_SWAP_BYTES'
     boolean , false , true or false

`GL_PACK_LSB_FIRST'
     boolean , false , true or false

`GL_PACK_ROW_LENGTH'
     integer , 0 , [0,∞)

`GL_PACK_IMAGE_HEIGHT'
     integer , 0 , [0,∞)

`GL_PACK_SKIP_ROWS'
     integer , 0 , [0,∞)

`GL_PACK_SKIP_PIXELS'
     integer , 0 , [0,∞)

`GL_PACK_SKIP_IMAGES'
     integer , 0 , [0,∞)

`GL_PACK_ALIGNMENT'
     integer , 4 , 1, 2, 4, or 8

`GL_UNPACK_SWAP_BYTES'
     boolean , false , true or false

`GL_UNPACK_LSB_FIRST'
     boolean , false , true or false

`GL_UNPACK_ROW_LENGTH'
     integer , 0 , [0,∞)

`GL_UNPACK_IMAGE_HEIGHT'
     integer , 0 , [0,∞)

`GL_UNPACK_SKIP_ROWS'
     integer , 0 , [0,∞)

`GL_UNPACK_SKIP_PIXELS'
     integer , 0 , [0,∞)

`GL_UNPACK_SKIP_IMAGES'
     integer , 0 , [0,∞)

`GL_UNPACK_ALIGNMENT'
     integer , 4 , 1, 2, 4, or 8

`glPixelStoref' can be used to set any pixel store parameter.  If the
parameter type is boolean, then if PARAM is 0, the parameter is false;
otherwise it is set to true.  If PNAME is a integer type parameter,
PARAM is rounded to the nearest integer.

Likewise, `glPixelStorei' can also be used to set any of the pixel store
parameters.  Boolean parameters are set to false if PARAM is 0 and true
otherwise.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_VALUE' is generated if a negative row length, pixel skip, or
row skip value is specified, or if alignment is specified as other than
1, 2, 4, or 8.

`GL_INVALID_OPERATION' is generated if `glPixelStore' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glPixelTransferf
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glPixelTransferi
     (pname GLenum)
     (param GLint)
     ->
     void))
  "Set pixel transfer modes.

PNAME
     Specifies the symbolic name of the pixel transfer parameter to be
     set.  Must be one of the following: `GL_MAP_COLOR',
     `GL_MAP_STENCIL', `GL_INDEX_SHIFT', `GL_INDEX_OFFSET',
     `GL_RED_SCALE', `GL_RED_BIAS', `GL_GREEN_SCALE', `GL_GREEN_BIAS',
     `GL_BLUE_SCALE', `GL_BLUE_BIAS', `GL_ALPHA_SCALE', `GL_ALPHA_BIAS',
     `GL_DEPTH_SCALE', or `GL_DEPTH_BIAS'.

     Additionally, if the `ARB_imaging' extension is supported, the
     following symbolic names are accepted:
     `GL_POST_COLOR_MATRIX_RED_SCALE',
     `GL_POST_COLOR_MATRIX_GREEN_SCALE',
     `GL_POST_COLOR_MATRIX_BLUE_SCALE',
     `GL_POST_COLOR_MATRIX_ALPHA_SCALE',
     `GL_POST_COLOR_MATRIX_RED_BIAS', `GL_POST_COLOR_MATRIX_GREEN_BIAS',
     `GL_POST_COLOR_MATRIX_BLUE_BIAS',
     `GL_POST_COLOR_MATRIX_ALPHA_BIAS', `GL_POST_CONVOLUTION_RED_SCALE',
     `GL_POST_CONVOLUTION_GREEN_SCALE',
     `GL_POST_CONVOLUTION_BLUE_SCALE',
     `GL_POST_CONVOLUTION_ALPHA_SCALE', `GL_POST_CONVOLUTION_RED_BIAS',
     `GL_POST_CONVOLUTION_GREEN_BIAS', `GL_POST_CONVOLUTION_BLUE_BIAS',
     and `GL_POST_CONVOLUTION_ALPHA_BIAS'.

PARAM
     Specifies the value that PNAME is set to.

`glPixelTransfer' sets pixel transfer modes that affect the operation of
subsequent `glCopyPixels', `glCopyTexImage1D', `glCopyTexImage2D',
`glCopyTexSubImage1D', `glCopyTexSubImage2D', `glCopyTexSubImage3D',
`glDrawPixels', `glReadPixels', `glTexImage1D', `glTexImage2D',
`glTexImage3D', `glTexSubImage1D', `glTexSubImage2D', and
`glTexSubImage3D' commands.  Additionally, if the `ARB_imaging' subset
is supported, the routines `glColorTable', `glColorSubTable',
`glConvolutionFilter1D', `glConvolutionFilter2D', `glHistogram',
`glMinmax', and `glSeparableFilter2D' are also affected.  The algorithms
that are specified by pixel transfer modes operate on pixels after they
are read from the frame buffer (`glCopyPixels'`glCopyTexImage1D',
`glCopyTexImage2D', `glCopyTexSubImage1D', `glCopyTexSubImage2D',
`glCopyTexSubImage3D', and `glReadPixels'), or unpacked from client
memory (`glDrawPixels', `glTexImage1D', `glTexImage2D', `glTexImage3D',
`glTexSubImage1D', `glTexSubImage2D', and `glTexSubImage3D').  Pixel
transfer operations happen in the same order, and in the same manner,
regardless of the command that resulted in the pixel operation.  Pixel
storage modes (see `glPixelStore') control the unpacking of pixels being
read from client memory and the packing of pixels being written back
into client memory.

Pixel transfer operations handle four fundamental pixel types: COLOR,
COLOR INDEX, DEPTH, and STENCIL.  COLOR pixels consist of four
floating-point values with unspecified mantissa and exponent sizes,
scaled such that 0 represents zero intensity and 1 represents full
intensity.  COLOR INDICES comprise a single fixed-point value, with
unspecified precision to the right of the binary point.  DEPTH pixels
comprise a single floating-point value, with unspecified mantissa and
exponent sizes, scaled such that 0.0 represents the minimum depth buffer
value, and 1.0 represents the maximum depth buffer value.  Finally,
STENCIL pixels comprise a single fixed-point value, with unspecified
precision to the right of the binary point.

The pixel transfer operations performed on the four basic pixel types
are as follows:

COLOR
     Each of the four color components is multiplied by a scale factor,
     then added to a bias factor.  That is, the red component is
     multiplied by `GL_RED_SCALE', then added to `GL_RED_BIAS'; the
     green component is multiplied by `GL_GREEN_SCALE', then added to
     `GL_GREEN_BIAS'; the blue component is multiplied by
     `GL_BLUE_SCALE', then added to `GL_BLUE_BIAS'; and the alpha
     component is multiplied by `GL_ALPHA_SCALE', then added to
     `GL_ALPHA_BIAS'.  After all four color components are scaled and
     biased, each is clamped to the range [0,1] .  All color, scale, and
     bias values are specified with `glPixelTransfer'.

     If `GL_MAP_COLOR' is true, each color component is scaled by the
     size of the corresponding color-to-color map, then replaced by the
     contents of that map indexed by the scaled component.  That is, the
     red component is scaled by `GL_PIXEL_MAP_R_TO_R_SIZE', then
     replaced by the contents of `GL_PIXEL_MAP_R_TO_R' indexed by
     itself.  The green component is scaled by
     `GL_PIXEL_MAP_G_TO_G_SIZE', then replaced by the contents of
     `GL_PIXEL_MAP_G_TO_G' indexed by itself.  The blue component is
     scaled by `GL_PIXEL_MAP_B_TO_B_SIZE', then replaced by the contents
     of `GL_PIXEL_MAP_B_TO_B' indexed by itself.  And the alpha
     component is scaled by `GL_PIXEL_MAP_A_TO_A_SIZE', then replaced by
     the contents of `GL_PIXEL_MAP_A_TO_A' indexed by itself.  All
     components taken from the maps are then clamped to the range [0,1]
     .  `GL_MAP_COLOR' is specified with `glPixelTransfer'.  The
     contents of the various maps are specified with `glPixelMap'.

     If the `ARB_imaging' extension is supported, each of the four color
     components may be scaled and biased after transformation by the
     color matrix.  That is, the red component is multiplied by
     `GL_POST_COLOR_MATRIX_RED_SCALE', then added to
     `GL_POST_COLOR_MATRIX_RED_BIAS'; the green component is multiplied
     by `GL_POST_COLOR_MATRIX_GREEN_SCALE', then added to
     `GL_POST_COLOR_MATRIX_GREEN_BIAS'; the blue component is multiplied
     by `GL_POST_COLOR_MATRIX_BLUE_SCALE', then added to
     `GL_POST_COLOR_MATRIX_BLUE_BIAS'; and the alpha component is
     multiplied by `GL_POST_COLOR_MATRIX_ALPHA_SCALE', then added to
     `GL_POST_COLOR_MATRIX_ALPHA_BIAS'.  After all four color components
     are scaled and biased, each is clamped to the range [0,1] .

     Similarly, if the `ARB_imaging' extension is supported, each of the
     four color components may be scaled and biased after processing by
     the enabled convolution filter.  That is, the red component is
     multiplied by `GL_POST_CONVOLUTION_RED_SCALE', then added to
     `GL_POST_CONVOLUTION_RED_BIAS'; the green component is multiplied
     by `GL_POST_CONVOLUTION_GREEN_SCALE', then added to
     `GL_POST_CONVOLUTION_GREEN_BIAS'; the blue component is multiplied
     by `GL_POST_CONVOLUTION_BLUE_SCALE', then added to
     `GL_POST_CONVOLUTION_BLUE_BIAS'; and the alpha component is
     multiplied by `GL_POST_CONVOLUTION_ALPHA_SCALE', then added to
     `GL_POST_CONVOLUTION_ALPHA_BIAS'.  After all four color components
     are scaled and biased, each is clamped to the range [0,1] .

COLOR INDEX
     Each color index is shifted left by `GL_INDEX_SHIFT' bits; any bits
     beyond the number of fraction bits carried by the fixed-point index
     are filled with zeros.  If `GL_INDEX_SHIFT' is negative, the shift
     is to the right, again zero filled.  Then `GL_INDEX_OFFSET' is
     added to the index.  `GL_INDEX_SHIFT' and `GL_INDEX_OFFSET' are
     specified with `glPixelTransfer'.

     From this point, operation diverges depending on the required
     format of the resulting pixels.  If the resulting pixels are to be
     written to a color index buffer, or if they are being read back to
     client memory in `GL_COLOR_INDEX' format, the pixels continue to be
     treated as indices.  If `GL_MAP_COLOR' is true, each index is
     masked by 2^N-1 , where N is `GL_PIXEL_MAP_I_TO_I_SIZE', then
     replaced by the contents of `GL_PIXEL_MAP_I_TO_I' indexed by the
     masked value.  `GL_MAP_COLOR' is specified with `glPixelTransfer'.
     The contents of the index map is specified with `glPixelMap'.

     If the resulting pixels are to be written to an RGBA color buffer,
     or if they are read back to client memory in a format other than
     `GL_COLOR_INDEX', the pixels are converted from indices to colors
     by referencing the four maps `GL_PIXEL_MAP_I_TO_R',
     `GL_PIXEL_MAP_I_TO_G', `GL_PIXEL_MAP_I_TO_B', and
     `GL_PIXEL_MAP_I_TO_A'.  Before being dereferenced, the index is
     masked by 2^N-1 , where N is `GL_PIXEL_MAP_I_TO_R_SIZE' for the red
     map, `GL_PIXEL_MAP_I_TO_G_SIZE' for the green map,
     `GL_PIXEL_MAP_I_TO_B_SIZE' for the blue map, and
     `GL_PIXEL_MAP_I_TO_A_SIZE' for the alpha map.  All components taken
     from the maps are then clamped to the range [0,1] .  The contents
     of the four maps is specified with `glPixelMap'.

DEPTH
     Each depth value is multiplied by `GL_DEPTH_SCALE', added to
     `GL_DEPTH_BIAS', then clamped to the range [0,1] .

STENCIL
     Each index is shifted `GL_INDEX_SHIFT' bits just as a color index
     is, then added to `GL_INDEX_OFFSET'.  If `GL_MAP_STENCIL' is true,
     each index is masked by 2^N-1 , where N is
     `GL_PIXEL_MAP_S_TO_S_SIZE', then replaced by the contents of
     `GL_PIXEL_MAP_S_TO_S' indexed by the masked value.

The following table gives the type, initial value, and range of valid
values for each of the pixel transfer parameters that are set with
`glPixelTransfer'.



*PNAME*
     *Type*, *Initial Value*, *Valid Range*

`GL_MAP_COLOR'
     boolean , false , true/false

`GL_MAP_STENCIL'
     boolean , false , true/false

`GL_INDEX_SHIFT'
     integer , 0 , (-∞,∞)

`GL_INDEX_OFFSET'
     integer , 0 , (-∞,∞)

`GL_RED_SCALE'
     float , 1 , (-∞,∞)

`GL_GREEN_SCALE'
     float , 1 , (-∞,∞)

`GL_BLUE_SCALE'
     float , 1 , (-∞,∞)

`GL_ALPHA_SCALE'
     float , 1 , (-∞,∞)

`GL_DEPTH_SCALE'
     float , 1 , (-∞,∞)

`GL_RED_BIAS'
     float , 0 , (-∞,∞)

`GL_GREEN_BIAS'
     float , 0 , (-∞,∞)

`GL_BLUE_BIAS'
     float , 0 , (-∞,∞)

`GL_ALPHA_BIAS'
     float , 0 , (-∞,∞)

`GL_DEPTH_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_COLOR_MATRIX_RED_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_COLOR_MATRIX_GREEN_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_COLOR_MATRIX_BLUE_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_COLOR_MATRIX_ALPHA_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_COLOR_MATRIX_RED_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_COLOR_MATRIX_GREEN_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_COLOR_MATRIX_BLUE_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_COLOR_MATRIX_ALPHA_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_CONVOLUTION_RED_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_CONVOLUTION_GREEN_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_CONVOLUTION_BLUE_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_CONVOLUTION_ALPHA_SCALE'
     float , 1 , (-∞,∞)

`GL_POST_CONVOLUTION_RED_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_CONVOLUTION_GREEN_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_CONVOLUTION_BLUE_BIAS'
     float , 0 , (-∞,∞)

`GL_POST_CONVOLUTION_ALPHA_BIAS'
     float , 0 , (-∞,∞)

`glPixelTransferf' can be used to set any pixel transfer parameter.  If
the parameter type is boolean, 0 implies false and any other value
implies true.  If PNAME is an integer parameter, PARAM is rounded to the
nearest integer.

Likewise, `glPixelTransferi' can be used to set any of the pixel
transfer parameters.  Boolean parameters are set to false if PARAM is 0
and to true otherwise.  PARAM is converted to floating point before
being assigned to real-valued parameters.

`GL_INVALID_ENUM' is generated if PNAME is not an accepted value.

`GL_INVALID_OPERATION' is generated if `glPixelTransfer' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glPixelZoom
     (xfactor GLfloat)
     (yfactor GLfloat)
     ->
     void))
  "Specify the pixel zoom factors.

XFACTOR
     YFACTOR

     Specify the X and Y zoom factors for pixel write operations.

`glPixelZoom' specifies values for the X and Y zoom factors.  During the
execution of `glDrawPixels' or `glCopyPixels', if (XR , YR ) is the
current raster position, and a given element is in the M th row and N th
column of the pixel rectangle, then pixels whose centers are in the
rectangle with corners at

(XR+N·XFACTOR , YR+M·YFACTOR )

(XR+(N+1,)·XFACTOR , YR+(M+1,)·YFACTOR )

are candidates for replacement.  Any pixel whose center lies on the
bottom or left edge of this rectangular region is also modified.

Pixel zoom factors are not limited to positive values.  Negative zoom
factors reflect the resulting image about the current raster position.

`GL_INVALID_OPERATION' is generated if `glPixelZoom' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glPointParameterf
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glPointParameteri
     (pname GLenum)
     (param GLint)
     ->
     void)
   (glPointParameterfv
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glPointParameteriv
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Specify point parameters.

PNAME
     Specifies a single-valued point parameter.  `GL_POINT_SIZE_MIN',
     `GL_POINT_SIZE_MAX', `GL_POINT_FADE_THRESHOLD_SIZE', and
     `GL_POINT_SPRITE_COORD_ORIGIN' are accepted.

PARAM
     Specifies the value that PNAME will be set to.

The following values are accepted for PNAME:

`GL_POINT_SIZE_MIN'


     PARAMS is a single floating-point value that specifies the minimum
     point size.  The default value is 0.0.

`GL_POINT_SIZE_MAX'


     PARAMS is a single floating-point value that specifies the maximum
     point size.  The default value is 1.0.

`GL_POINT_FADE_THRESHOLD_SIZE'


     PARAMS is a single floating-point value that specifies the
     threshold value to which point sizes are clamped if they exceed the
     specified value.  The default value is 1.0.

`GL_POINT_DISTANCE_ATTENUATION'


     PARAMS is an array of three floating-point values that specify the
     coefficients used for scaling the computed point size.  The default
     values are (1,00) .

`GL_POINT_SPRITE_COORD_ORIGIN'


     PARAMS is a single enum specifying the point sprite texture
     coordinate origin, either `GL_LOWER_LEFT' or `GL_UPPER_LEFT'.  The
     default value is `GL_UPPER_LEFT'.

`GL_INVALID_VALUE' is generated If the value specified for
`GL_POINT_SIZE_MIN', `GL_POINT_SIZE_MAX', or
`GL_POINT_FADE_THRESHOLD_SIZE' is less than zero.

`GL_INVALID_ENUM' is generated If the value specified for
`GL_POINT_SPRITE_COORD_ORIGIN' is not `GL_LOWER_LEFT' or
`GL_UPPER_LEFT'.

If the value for `GL_POINT_SIZE_MIN' is greater than
`GL_POINT_SIZE_MAX', the point size after clamping is undefined, but no
error is generated.")

(define-gl-procedures
  ((glPointSize (size GLfloat) -> void))
  "Specify the diameter of rasterized points.

SIZE
     Specifies the diameter of rasterized points.  The initial value is
     1.

`glPointSize' specifies the rasterized diameter of both aliased and
antialiased points.  Using a point size other than 1 has different
effects, depending on whether point antialiasing is enabled.  To enable
and disable point antialiasing, call `glEnable' and `glDisable' with
argument `GL_POINT_SMOOTH'.  Point antialiasing is initially disabled.

The specified point size is multiplied with a distance attenuation
factor and clamped to the specified point size range, and further
clamped to the implementation-dependent point size range to produce the
derived point size using

POINTSIZE=CLAMP\u2062(SIZE×√(1/A+B×D+C×D^2,,,),,)

where D is the eye-coordinate distance from the eye to the vertex, and A
, B , and C are the distance attenuation coefficients (see
`glPointParameter').

If multisampling is disabled, the computed point size is used as the
point's width.

If multisampling is enabled, the point may be faded by modifying the
point alpha value (see `glSampleCoverage') instead of allowing the point
width to go below a given threshold (see `glPointParameter').  In this
case, the width is further modified in the following manner:

POINTWIDTH={(POINTSIZE), (THRESHOLD)\u2062(POINTSIZE>=THRESHOLD),
(OTHERWISE),

The point alpha value is modified by computing:

POINTALPHA={(1), ((POINTSIZE/THRESHOLD,)^2)\u2062(POINTSIZE>=THRESHOLD),
(OTHERWISE),

If point antialiasing is disabled, the actual size is determined by
rounding the supplied size to the nearest integer.  (If the rounding
results in the value 0, it is as if the point size were 1.) If the
rounded size is odd, then the center point (X , Y ) of the pixel
fragment that represents the point is computed as

(⌊X_W,⌋+.5,⌊Y_W,⌋+.5)

where W subscripts indicate window coordinates.  All pixels that lie
within the square grid of the rounded size centered at (X , Y ) make up
the fragment.  If the size is even, the center point is

(⌊X_W+.5,⌋,⌊Y_W+.5,⌋)

and the rasterized fragment's centers are the half-integer window
coordinates within the square of the rounded size centered at (X,Y) .
All pixel fragments produced in rasterizing a nonantialiased point are
assigned the same associated data, that of the vertex corresponding to
the point.

If antialiasing is enabled, then point rasterization produces a fragment
for each pixel square that intersects the region lying within the circle
having diameter equal to the current point size and centered at the
point's (X_W,Y_W) .  The coverage value for each fragment is the window
coordinate area of the intersection of the circular region with the
corresponding pixel square.  This value is saved and used in the final
rasterization step.  The data associated with each fragment is the data
associated with the point being rasterized.

Not all sizes are supported when point antialiasing is enabled.  If an
unsupported size is requested, the nearest supported size is used.  Only
size 1 is guaranteed to be supported; others depend on the
implementation.  To query the range of supported sizes and the size
difference between supported sizes within the range, call `glGet' with
arguments `GL_SMOOTH_POINT_SIZE_RANGE' and
`GL_SMOOTH_POINT_SIZE_GRANULARITY'.  For aliased points, query the
supported ranges and granularity with `glGet' with arguments
`GL_ALIASED_POINT_SIZE_RANGE'.

`GL_INVALID_VALUE' is generated if SIZE is less than or equal to 0.

`GL_INVALID_OPERATION' is generated if `glPointSize' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glPolygonMode
     (face GLenum)
     (mode GLenum)
     ->
     void))
  "Select a polygon rasterization mode.

FACE
     Specifies the polygons that MODE applies to.  Must be `GL_FRONT'
     for front-facing polygons, `GL_BACK' for back-facing polygons, or
     `GL_FRONT_AND_BACK' for front- and back-facing polygons.

MODE
     Specifies how polygons will be rasterized.  Accepted values are
     `GL_POINT', `GL_LINE', and `GL_FILL'.  The initial value is
     `GL_FILL' for both front- and back-facing polygons.

`glPolygonMode' controls the interpretation of polygons for
rasterization.  FACE describes which polygons MODE applies to:
front-facing polygons (`GL_FRONT'), back-facing polygons (`GL_BACK'), or
both (`GL_FRONT_AND_BACK').  The polygon mode affects only the final
rasterization of polygons.  In particular, a polygon's vertices are lit
and the polygon is clipped and possibly culled before these modes are
applied.

Three modes are defined and can be specified in MODE:

`GL_POINT'
     Polygon vertices that are marked as the start of a boundary edge
     are drawn as points.  Point attributes such as `GL_POINT_SIZE' and
     `GL_POINT_SMOOTH' control the rasterization of the points.  Polygon
     rasterization attributes other than `GL_POLYGON_MODE' have no
     effect.

`GL_LINE'
     Boundary edges of the polygon are drawn as line segments.  They are
     treated as connected line segments for line stippling; the line
     stipple counter and pattern are not reset between segments (see
     `glLineStipple').  Line attributes such as `GL_LINE_WIDTH' and
     `GL_LINE_SMOOTH' control the rasterization of the lines.  Polygon
     rasterization attributes other than `GL_POLYGON_MODE' have no
     effect.

`GL_FILL'
     The interior of the polygon is filled.  Polygon attributes such as
     `GL_POLYGON_STIPPLE' and `GL_POLYGON_SMOOTH' control the
     rasterization of the polygon.

`GL_INVALID_ENUM' is generated if either FACE or MODE is not an accepted
value.

`GL_INVALID_OPERATION' is generated if `glPolygonMode' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glPolygonOffset
     (factor GLfloat)
     (units GLfloat)
     ->
     void))
  "Set the scale and units used to calculate depth values.

FACTOR
     Specifies a scale factor that is used to create a variable depth
     offset for each polygon.  The initial value is 0.

UNITS
     Is multiplied by an implementation-specific value to create a
     constant depth offset.  The initial value is 0.

When `GL_POLYGON_OFFSET_FILL', `GL_POLYGON_OFFSET_LINE', or
`GL_POLYGON_OFFSET_POINT' is enabled, each fragment's DEPTH value will
be offset after it is interpolated from the DEPTH values of the
appropriate vertices.  The value of the offset is FACTOR×DZ+R×UNITS ,
where DZ is a measurement of the change in depth relative to the screen
area of the polygon, and R is the smallest value that is guaranteed to
produce a resolvable offset for a given implementation.  The offset is
added before the depth test is performed and before the value is written
into the depth buffer.

`glPolygonOffset' is useful for rendering hidden-line images, for
applying decals to surfaces, and for rendering solids with highlighted
edges.

`GL_INVALID_OPERATION' is generated if `glPolygonOffset' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glPolygonStipple
     (pattern const-GLubyte-*)
     ->
     void))
  "Set the polygon stippling pattern.

PATTERN
     Specifies a pointer to a 32×32 stipple pattern that will be
     unpacked from memory in the same way that `glDrawPixels' unpacks
     pixels.

Polygon stippling, like line stippling (see `glLineStipple'), masks out
certain fragments produced by rasterization, creating a pattern.
Stippling is independent of polygon antialiasing.

PATTERN is a pointer to a 32×32 stipple pattern that is stored in memory
just like the pixel data supplied to a `glDrawPixels' call with height
and WIDTH both equal to 32, a pixel format of `GL_COLOR_INDEX', and data
type of `GL_BITMAP'.  That is, the stipple pattern is represented as a
32×32 array of 1-bit color indices packed in unsigned bytes.
`glPixelStore' parameters like `GL_UNPACK_SWAP_BYTES' and
`GL_UNPACK_LSB_FIRST' affect the assembling of the bits into a stipple
pattern.  Pixel transfer operations (shift, offset, pixel map) are not
applied to the stipple image, however.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a stipple
pattern is specified, PATTERN is treated as a byte offset into the
buffer object's data store.

To enable and disable polygon stippling, call `glEnable' and `glDisable'
with argument `GL_POLYGON_STIPPLE'.  Polygon stippling is initially
disabled.  If it's enabled, a rasterized polygon fragment with window
coordinates X_W and Y_W is sent to the next stage of the GL if and only
if the (X_W%32 )th bit in the (Y_W%32 )th row of the stipple pattern is
1 (one).  When polygon stippling is disabled, it is as if the stipple
pattern consists of all 1's.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if `glPolygonStipple' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glPrioritizeTextures
     (n GLsizei)
     (textures const-GLuint-*)
     (priorities const-GLclampf-*)
     ->
     void))
  "Set texture residence priority.

N
     Specifies the number of textures to be prioritized.

TEXTURES
     Specifies an array containing the names of the textures to be
     prioritized.

PRIORITIES
     Specifies an array containing the texture priorities.  A priority
     given in an element of PRIORITIES applies to the texture named by
     the corresponding element of TEXTURES.

`glPrioritizeTextures' assigns the N texture priorities given in
PRIORITIES to the N textures named in TEXTURES.

The GL establishes a ``working set'' of textures that are resident in
texture memory.  These textures may be bound to a texture target much
more efficiently than textures that are not resident.  By specifying a
priority for each texture, `glPrioritizeTextures' allows applications to
guide the GL implementation in determining which textures should be
resident.

The priorities given in PRIORITIES are clamped to the range [0,1] before
they are assigned.  0 indicates the lowest priority; textures with
priority 0 are least likely to be resident.  1 indicates the highest
priority; textures with priority 1 are most likely to be resident.
However, textures are not guaranteed to be resident until they are used.

`glPrioritizeTextures' silently ignores attempts to prioritize texture 0
or any texture name that does not correspond to an existing texture.

`glPrioritizeTextures' does not require that any of the textures named
by TEXTURES be bound to a texture target.  `glTexParameter' may also be
used to set a texture's priority, but only if the texture is currently
bound.  This is the only way to set the priority of a default texture.

`GL_INVALID_VALUE' is generated if N is negative.

`GL_INVALID_OPERATION' is generated if `glPrioritizeTextures' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glPushAttrib (mask GLbitfield) -> void)
   (glPopAttrib -> void))
  "Push and pop the server attribute stack.

MASK
     Specifies a mask that indicates which attributes to save.  Values
     for MASK are listed below.

`glPushAttrib' takes one argument, a mask that indicates which groups of
state variables to save on the attribute stack.  Symbolic constants are
used to set bits in the mask.  MASK is typically constructed by
specifying the bitwise-or of several of these constants together.  The
special mask `GL_ALL_ATTRIB_BITS' can be used to save all stackable
states.

The symbolic mask constants and their associated GL state are as follows
(the second column lists which attributes are saved):



`GL_ACCUM_BUFFER_BIT'
     Accumulation buffer clear value

`GL_COLOR_BUFFER_BIT'
     `GL_ALPHA_TEST' enable bit

.
     Alpha test function and reference value

.
     `GL_BLEND' enable bit

.
     Blending source and destination functions

.
     Constant blend color

.
     Blending equation

.
     `GL_DITHER' enable bit

.
     `GL_DRAW_BUFFER' setting

.
     `GL_COLOR_LOGIC_OP' enable bit

.
     `GL_INDEX_LOGIC_OP' enable bit

.
     Logic op function

.
     Color mode and index mode clear values

.
     Color mode and index mode writemasks

`GL_CURRENT_BIT'
     Current RGBA color

.
     Current color index

.
     Current normal vector

.
     Current texture coordinates

.
     Current raster position

.
     `GL_CURRENT_RASTER_POSITION_VALID' flag

.
     RGBA color associated with current raster position

.
     Color index associated with current raster position

.
     Texture coordinates associated with current raster position

.
     `GL_EDGE_FLAG' flag

`GL_DEPTH_BUFFER_BIT'
     `GL_DEPTH_TEST' enable bit

.
     Depth buffer test function

.
     Depth buffer clear value

.
     `GL_DEPTH_WRITEMASK' enable bit

`GL_ENABLE_BIT'
     `GL_ALPHA_TEST' flag

.
     `GL_AUTO_NORMAL' flag

.
     `GL_BLEND' flag

.
     Enable bits for the user-definable clipping planes

.
     `GL_COLOR_MATERIAL'

.
     `GL_CULL_FACE' flag

.
     `GL_DEPTH_TEST' flag

.
     `GL_DITHER' flag

.
     `GL_FOG' flag

.
     `GL_LIGHT'I where `0' <= I < `GL_MAX_LIGHTS'

.
     `GL_LIGHTING' flag

.
     `GL_LINE_SMOOTH' flag

.
     `GL_LINE_STIPPLE' flag

.
     `GL_COLOR_LOGIC_OP' flag

.
     `GL_INDEX_LOGIC_OP' flag

.
     `GL_MAP1_'X where X is a map type

.
     `GL_MAP2_'X where X is a map type

.
     `GL_MULTISAMPLE' flag

.
     `GL_NORMALIZE' flag

.
     `GL_POINT_SMOOTH' flag

.
     `GL_POLYGON_OFFSET_LINE' flag

.
     `GL_POLYGON_OFFSET_FILL' flag

.
     `GL_POLYGON_OFFSET_POINT' flag

.
     `GL_POLYGON_SMOOTH' flag

.
     `GL_POLYGON_STIPPLE' flag

.
     `GL_SAMPLE_ALPHA_TO_COVERAGE' flag

.
     `GL_SAMPLE_ALPHA_TO_ONE' flag

.
     `GL_SAMPLE_COVERAGE' flag

.
     `GL_SCISSOR_TEST' flag

.
     `GL_STENCIL_TEST' flag

.
     `GL_TEXTURE_1D' flag

.
     `GL_TEXTURE_2D' flag

.
     `GL_TEXTURE_3D' flag

.
     Flags `GL_TEXTURE_GEN_'X where X is S, T, R, or Q

`GL_EVAL_BIT'
     `GL_MAP1_'X enable bits, where X is a map type

.
     `GL_MAP2_'X enable bits, where X is a map type

.
     1D grid endpoints and divisions

.
     2D grid endpoints and divisions

.
     `GL_AUTO_NORMAL' enable bit

`GL_FOG_BIT'
     `GL_FOG' enable bit

.
     Fog color

.
     Fog density

.
     Linear fog start

.
     Linear fog end

.
     Fog index

.
     `GL_FOG_MODE' value

`GL_HINT_BIT'
     `GL_PERSPECTIVE_CORRECTION_HINT' setting

.
     `GL_POINT_SMOOTH_HINT' setting

.
     `GL_LINE_SMOOTH_HINT' setting

.
     `GL_POLYGON_SMOOTH_HINT' setting

.
     `GL_FOG_HINT' setting

.
     `GL_GENERATE_MIPMAP_HINT' setting

.
     `GL_TEXTURE_COMPRESSION_HINT' setting

`GL_LIGHTING_BIT'
     `GL_COLOR_MATERIAL' enable bit

.
     `GL_COLOR_MATERIAL_FACE' value

.
     Color material parameters that are tracking the current color

.
     Ambient scene color

.
     `GL_LIGHT_MODEL_LOCAL_VIEWER' value

.
     `GL_LIGHT_MODEL_TWO_SIDE' setting

.
     `GL_LIGHTING' enable bit

.
     Enable bit for each light

.
     Ambient, diffuse, and specular intensity for each light

.
     Direction, position, exponent, and cutoff angle for each light

.
     Constant, linear, and quadratic attenuation factors for each light

.
     Ambient, diffuse, specular, and emissive color for each material

.
     Ambient, diffuse, and specular color indices for each material

.
     Specular exponent for each material

.
     `GL_SHADE_MODEL' setting

`GL_LINE_BIT'
     `GL_LINE_SMOOTH' flag

.
     `GL_LINE_STIPPLE' enable bit

.
     Line stipple pattern and repeat counter

.
     Line width

`GL_LIST_BIT'
     `GL_LIST_BASE' setting

`GL_MULTISAMPLE_BIT'
     `GL_MULTISAMPLE' flag

.
     `GL_SAMPLE_ALPHA_TO_COVERAGE' flag

.
     `GL_SAMPLE_ALPHA_TO_ONE' flag

.
     `GL_SAMPLE_COVERAGE' flag

.
     `GL_SAMPLE_COVERAGE_VALUE' value

.
     `GL_SAMPLE_COVERAGE_INVERT' value

`GL_PIXEL_MODE_BIT'
     `GL_RED_BIAS' and `GL_RED_SCALE' settings

.
     `GL_GREEN_BIAS' and `GL_GREEN_SCALE' values

.
     `GL_BLUE_BIAS' and `GL_BLUE_SCALE'

.
     `GL_ALPHA_BIAS' and `GL_ALPHA_SCALE'

.
     `GL_DEPTH_BIAS' and `GL_DEPTH_SCALE'

.
     `GL_INDEX_OFFSET' and `GL_INDEX_SHIFT' values

.
     `GL_MAP_COLOR' and `GL_MAP_STENCIL' flags

.
     `GL_ZOOM_X' and `GL_ZOOM_Y' factors

.
     `GL_READ_BUFFER' setting

`GL_POINT_BIT'
     `GL_POINT_SMOOTH' flag

.
     Point size

`GL_POLYGON_BIT'
     `GL_CULL_FACE' enable bit

.
     `GL_CULL_FACE_MODE' value

.
     `GL_FRONT_FACE' indicator

.
     `GL_POLYGON_MODE' setting

.
     `GL_POLYGON_SMOOTH' flag

.
     `GL_POLYGON_STIPPLE' enable bit

.
     `GL_POLYGON_OFFSET_FILL' flag

.
     `GL_POLYGON_OFFSET_LINE' flag

.
     `GL_POLYGON_OFFSET_POINT' flag

.
     `GL_POLYGON_OFFSET_FACTOR'

.
     `GL_POLYGON_OFFSET_UNITS'

`GL_POLYGON_STIPPLE_BIT'
     Polygon stipple image

`GL_SCISSOR_BIT'
     `GL_SCISSOR_TEST' flag

.
     Scissor box

`GL_STENCIL_BUFFER_BIT'
     `GL_STENCIL_TEST' enable bit

.
     Stencil function and reference value

.
     Stencil value mask

.
     Stencil fail, pass, and depth buffer pass actions

.
     Stencil buffer clear value

.
     Stencil buffer writemask

`GL_TEXTURE_BIT'
     Enable bits for the four texture coordinates

.
     Border color for each texture image

.
     Minification function for each texture image

.
     Magnification function for each texture image

.
     Texture coordinates and wrap mode for each texture image

.
     Color and mode for each texture environment

.
     Enable bits `GL_TEXTURE_GEN_'X, X is S, T, R, and Q

.
     `GL_TEXTURE_GEN_MODE' setting for S, T, R, and Q

.
     `glTexGen' plane equations for S, T, R, and Q

.
     Current texture bindings (for example, `GL_TEXTURE_BINDING_2D')

`GL_TRANSFORM_BIT'
     Coefficients of the six clipping planes

.
     Enable bits for the user-definable clipping planes

.
     `GL_MATRIX_MODE' value

.
     `GL_NORMALIZE' flag

.
     `GL_RESCALE_NORMAL' flag

`GL_VIEWPORT_BIT'
     Depth range (near and far)

.
     Viewport origin and extent

`glPopAttrib' restores the values of the state variables saved with the
last `glPushAttrib' command.  Those not saved are left unchanged.

It is an error to push attributes onto a full stack or to pop attributes
off an empty stack.  In either case, the error flag is set and no other
change is made to GL state.

Initially, the attribute stack is empty.

`GL_STACK_OVERFLOW' is generated if `glPushAttrib' is called while the
attribute stack is full.

`GL_STACK_UNDERFLOW' is generated if `glPopAttrib' is called while the
attribute stack is empty.

`GL_INVALID_OPERATION' is generated if `glPushAttrib' or `glPopAttrib'
is executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glPushClientAttrib (mask GLbitfield) -> void)
   (glPopClientAttrib -> void))
  "Push and pop the client attribute stack.

MASK
     Specifies a mask that indicates which attributes to save.  Values
     for MASK are listed below.

`glPushClientAttrib' takes one argument, a mask that indicates which
groups of client-state variables to save on the client attribute stack.
Symbolic constants are used to set bits in the mask.  MASK is typically
constructed by specifying the bitwise-or of several of these constants
together.  The special mask `GL_CLIENT_ALL_ATTRIB_BITS' can be used to
save all stackable client state.

The symbolic mask constants and their associated GL client state are as
follows (the second column lists which attributes are saved):

`GL_CLIENT_PIXEL_STORE_BIT' Pixel storage modes
`GL_CLIENT_VERTEX_ARRAY_BIT' Vertex arrays (and enables)

`glPopClientAttrib' restores the values of the client-state variables
saved with the last `glPushClientAttrib'.  Those not saved are left
unchanged.

It is an error to push attributes onto a full client attribute stack or
to pop attributes off an empty stack.  In either case, the error flag is
set, and no other change is made to GL state.

Initially, the client attribute stack is empty.

`GL_STACK_OVERFLOW' is generated if `glPushClientAttrib' is called while
the attribute stack is full.

`GL_STACK_UNDERFLOW' is generated if `glPopClientAttrib' is called while
the attribute stack is empty.")

(define-gl-procedures
  ((glPushMatrix -> void) (glPopMatrix -> void))
  "Push and pop the current matrix stack.

There is a stack of matrices for each of the matrix modes.  In
`GL_MODELVIEW' mode, the stack depth is at least 32.  In the other
modes, `GL_COLOR', `GL_PROJECTION', and `GL_TEXTURE', the depth is at
least 2.  The current matrix in any mode is the matrix on the top of the
stack for that mode.

`glPushMatrix' pushes the current matrix stack down by one, duplicating
the current matrix.  That is, after a `glPushMatrix' call, the matrix on
top of the stack is identical to the one below it.

`glPopMatrix' pops the current matrix stack, replacing the current
matrix with the one below it on the stack.

Initially, each of the stacks contains one matrix, an identity matrix.

It is an error to push a full matrix stack or to pop a matrix stack that
contains only a single matrix.  In either case, the error flag is set
and no other change is made to GL state.

`GL_STACK_OVERFLOW' is generated if `glPushMatrix' is called while the
current matrix stack is full.

`GL_STACK_UNDERFLOW' is generated if `glPopMatrix' is called while the
current matrix stack contains only a single matrix.

`GL_INVALID_OPERATION' is generated if `glPushMatrix' or `glPopMatrix'
is executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glPushName (name GLuint) -> void)
   (glPopName -> void))
  "Push and pop the name stack.

NAME
     Specifies a name that will be pushed onto the name stack.

The name stack is used during selection mode to allow sets of rendering
commands to be uniquely identified.  It consists of an ordered set of
unsigned integers and is initially empty.

`glPushName' causes NAME to be pushed onto the name stack.  `glPopName'
pops one name off the top of the stack.

The maximum name stack depth is implementation-dependent; call
`GL_MAX_NAME_STACK_DEPTH' to find out the value for a particular
implementation.  It is an error to push a name onto a full stack or to
pop a name off an empty stack.  It is also an error to manipulate the
name stack between the execution of `glBegin' and the corresponding
execution of `glEnd'.  In any of these cases, the error flag is set and
no other change is made to GL state.

The name stack is always empty while the render mode is not `GL_SELECT'.
Calls to `glPushName' or `glPopName' while the render mode is not
`GL_SELECT' are ignored.

`GL_STACK_OVERFLOW' is generated if `glPushName' is called while the
name stack is full.

`GL_STACK_UNDERFLOW' is generated if `glPopName' is called while the
name stack is empty.

`GL_INVALID_OPERATION' is generated if `glPushName' or `glPopName' is
executed between a call to `glBegin' and the corresponding call to
`glEnd'.")

(define-gl-procedures
  ((glRasterPos2s (x GLshort) (y GLshort) -> void)
   (glRasterPos2i (x GLint) (y GLint) -> void)
   (glRasterPos2f (x GLfloat) (y GLfloat) -> void)
   (glRasterPos2d (x GLdouble) (y GLdouble) -> void)
   (glRasterPos3s
     (x GLshort)
     (y GLshort)
     (z GLshort)
     ->
     void)
   (glRasterPos3i
     (x GLint)
     (y GLint)
     (z GLint)
     ->
     void)
   (glRasterPos3f
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     ->
     void)
   (glRasterPos3d
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     ->
     void)
   (glRasterPos4s
     (x GLshort)
     (y GLshort)
     (z GLshort)
     (w GLshort)
     ->
     void)
   (glRasterPos4i
     (x GLint)
     (y GLint)
     (z GLint)
     (w GLint)
     ->
     void)
   (glRasterPos4f
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     (w GLfloat)
     ->
     void)
   (glRasterPos4d
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     (w GLdouble)
     ->
     void)
   (glRasterPos2sv (v const-GLshort-*) -> void)
   (glRasterPos2iv (v const-GLint-*) -> void)
   (glRasterPos2fv (v const-GLfloat-*) -> void)
   (glRasterPos2dv (v const-GLdouble-*) -> void)
   (glRasterPos3sv (v const-GLshort-*) -> void)
   (glRasterPos3iv (v const-GLint-*) -> void)
   (glRasterPos3fv (v const-GLfloat-*) -> void)
   (glRasterPos3dv (v const-GLdouble-*) -> void)
   (glRasterPos4sv (v const-GLshort-*) -> void)
   (glRasterPos4iv (v const-GLint-*) -> void)
   (glRasterPos4fv (v const-GLfloat-*) -> void)
   (glRasterPos4dv (v const-GLdouble-*) -> void))
  "Specify the raster position for pixel operations.

X
     Y

     Z

     W

     Specify the X , Y , Z , and W object coordinates (if present) for
     the raster position.

The GL maintains a 3D position in window coordinates.  This position,
called the raster position, is used to position pixel and bitmap write
operations.  It is maintained with subpixel accuracy.  See `glBitmap',
`glDrawPixels', and `glCopyPixels'.

The current raster position consists of three window coordinates (X , Y
, Z ), a clip coordinate value (W ), an eye coordinate distance, a valid
bit, and associated color data and texture coordinates.  The W
coordinate is a clip coordinate, because W is not projected to window
coordinates.  `glRasterPos4' specifies object coordinates X , Y , Z ,
and W explicitly.  `glRasterPos3' specifies object coordinate X , Y ,
and Z explicitly, while W is implicitly set to 1.  `glRasterPos2' uses
the argument values for X and Y while implicitly setting Z and W to 0
and 1.

The object coordinates presented by `glRasterPos' are treated just like
those of a `glVertex' command: They are transformed by the current
modelview and projection matrices and passed to the clipping stage.  If
the vertex is not culled, then it is projected and scaled to window
coordinates, which become the new current raster position, and the
`GL_CURRENT_RASTER_POSITION_VALID' flag is set.  If the vertex IS
culled, then the valid bit is cleared and the current raster position
and associated color and texture coordinates are undefined.

The current raster position also includes some associated color data and
texture coordinates.  If lighting is enabled, then
`GL_CURRENT_RASTER_COLOR' (in RGBA mode) or `GL_CURRENT_RASTER_INDEX'
(in color index mode) is set to the color produced by the lighting
calculation (see `glLight', `glLightModel', and `glShadeModel').  If
lighting is disabled, current color (in RGBA mode, state variable
`GL_CURRENT_COLOR') or color index (in color index mode, state variable
`GL_CURRENT_INDEX') is used to update the current raster color.
`GL_CURRENT_RASTER_SECONDARY_COLOR' (in RGBA mode) is likewise updated.

Likewise, `GL_CURRENT_RASTER_TEXTURE_COORDS' is updated as a function of
`GL_CURRENT_TEXTURE_COORDS', based on the texture matrix and the texture
generation functions (see `glTexGen').  Finally, the distance from the
origin of the eye coordinate system to the vertex as transformed by only
the modelview matrix replaces `GL_CURRENT_RASTER_DISTANCE'.

Initially, the current raster position is (0, 0, 0, 1), the current
raster distance is 0, the valid bit is set, the associated RGBA color is
(1, 1, 1, 1), the associated color index is 1, and the associated
texture coordinates are (0, 0, 0, 1).  In RGBA mode,
`GL_CURRENT_RASTER_INDEX' is always 1; in color index mode, the current
raster RGBA color always maintains its initial value.

`GL_INVALID_OPERATION' is generated if `glRasterPos' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glReadBuffer (mode GLenum) -> void))
  "Select a color buffer source for pixels.

MODE
     Specifies a color buffer.  Accepted values are `GL_FRONT_LEFT',
     `GL_FRONT_RIGHT', `GL_BACK_LEFT', `GL_BACK_RIGHT', `GL_FRONT',
     `GL_BACK', `GL_LEFT', `GL_RIGHT', and `GL_AUX'I, where I is between
     0 and the value of `GL_AUX_BUFFERS' minus 1.

`glReadBuffer' specifies a color buffer as the source for subsequent
`glReadPixels', `glCopyTexImage1D', `glCopyTexImage2D',
`glCopyTexSubImage1D', `glCopyTexSubImage2D', `glCopyTexSubImage3D', and
`glCopyPixels' commands.  MODE accepts one of twelve or more predefined
values.  (`GL_AUX0' through `GL_AUX3' are always defined.) In a fully
configured system, `GL_FRONT', `GL_LEFT', and `GL_FRONT_LEFT' all name
the front left buffer, `GL_FRONT_RIGHT' and `GL_RIGHT' name the front
right buffer, and `GL_BACK_LEFT' and `GL_BACK' name the back left
buffer.

Nonstereo double-buffered configurations have only a front left and a
back left buffer.  Single-buffered configurations have a front left and
a front right buffer if stereo, and only a front left buffer if
nonstereo.  It is an error to specify a nonexistent buffer to
`glReadBuffer'.

MODE is initially `GL_FRONT' in single-buffered configurations and
`GL_BACK' in double-buffered configurations.

`GL_INVALID_ENUM' is generated if MODE is not one of the twelve (or
more) accepted values.

`GL_INVALID_OPERATION' is generated if MODE specifies a buffer that does
not exist.

`GL_INVALID_OPERATION' is generated if `glReadBuffer' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glReadPixels
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (type GLenum)
     (data GLvoid-*)
     ->
     void))
  "Read a block of pixels from the frame buffer.

X
     Y

     Specify the window coordinates of the first pixel that is read from
     the frame buffer.  This location is the lower left corner of a
     rectangular block of pixels.

WIDTH
     HEIGHT

     Specify the dimensions of the pixel rectangle.  WIDTH and HEIGHT of
     one correspond to a single pixel.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are accepted: `GL_COLOR_INDEX', `GL_STENCIL_INDEX',
     `GL_DEPTH_COMPONENT', `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA',
     `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA', `GL_LUMINANCE', and
     `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type of the pixel data.  Must be one of
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Returns the pixel data.

`glReadPixels' returns pixel data from the frame buffer, starting with
the pixel whose lower left corner is at location (X, Y), into client
memory starting at location DATA.  Several parameters control the
processing of the pixel data before it is placed into client memory.
These parameters are set with three commands: `glPixelStore',
`glPixelTransfer', and `glPixelMap'.  This reference page describes the
effects on `glReadPixels' of most, but not all of the parameters
specified by these three commands.

If a non-zero named buffer object is bound to the `GL_PIXEL_PACK_BUFFER'
target (see `glBindBuffer') while a block of pixels is requested, DATA
is treated as a byte offset into the buffer object's data store rather
than a pointer to client memory.

When the `ARB_imaging' extension is supported, the pixel data may be
processed by additional operations including color table lookup, color
matrix transformations, convolutions, histograms, and minimum and
maximum pixel value computations.

`glReadPixels' returns values from each pixel with lower left corner at
(X+I,Y+J) for 0<=I<WIDTH and 0<=J<HEIGHT .  This pixel is said to be the
I th pixel in the J th row.  Pixels are returned in row order from the
lowest to the highest row, left to right in each row.

FORMAT specifies the format for the returned pixel values; accepted
values are:

`GL_COLOR_INDEX'
     Color indices are read from the color buffer selected by
     `glReadBuffer'.  Each index is converted to fixed point, shifted
     left or right depending on the value and sign of `GL_INDEX_SHIFT',
     and added to `GL_INDEX_OFFSET'.  If `GL_MAP_COLOR' is `GL_TRUE',
     indices are replaced by their mappings in the table
     `GL_PIXEL_MAP_I_TO_I'.

`GL_STENCIL_INDEX'
     Stencil values are read from the stencil buffer.  Each index is
     converted to fixed point, shifted left or right depending on the
     value and sign of `GL_INDEX_SHIFT', and added to `GL_INDEX_OFFSET'.
     If `GL_MAP_STENCIL' is `GL_TRUE', indices are replaced by their
     mappings in the table `GL_PIXEL_MAP_S_TO_S'.

`GL_DEPTH_COMPONENT'
     Depth values are read from the depth buffer.  Each component is
     converted to floating point such that the minimum depth value maps
     to 0 and the maximum value maps to 1.  Each component is then
     multiplied by `GL_DEPTH_SCALE', added to `GL_DEPTH_BIAS', and
     finally clamped to the range [0,1] .

`GL_RED'
`GL_GREEN'
`GL_BLUE'
`GL_ALPHA'
`GL_RGB'
`GL_BGR'
`GL_RGBA'
`GL_BGRA'
`GL_LUMINANCE'
`GL_LUMINANCE_ALPHA'
     Processing differs depending on whether color buffers store color
     indices or RGBA color components.  If color indices are stored,
     they are read from the color buffer selected by `glReadBuffer'.
     Each index is converted to fixed point, shifted left or right
     depending on the value and sign of `GL_INDEX_SHIFT', and added to
     `GL_INDEX_OFFSET'.  Indices are then replaced by the red, green,
     blue, and alpha values obtained by indexing the tables
     `GL_PIXEL_MAP_I_TO_R', `GL_PIXEL_MAP_I_TO_G',
     `GL_PIXEL_MAP_I_TO_B', and `GL_PIXEL_MAP_I_TO_A'.  Each table must
     be of size 2^N , but N may be different for different tables.
     Before an index is used to look up a value in a table of size 2^N ,
     it must be masked against 2^N-1 .

     If RGBA color components are stored in the color buffers, they are
     read from the color buffer selected by `glReadBuffer'.  Each color
     component is converted to floating point such that zero intensity
     maps to 0.0 and full intensity maps to 1.0.  Each component is then
     multiplied by `GL_c_SCALE' and added to `GL_c_BIAS', where C is
     RED, GREEN, BLUE, or ALPHA.  Finally, if `GL_MAP_COLOR' is
     `GL_TRUE', each component is clamped to the range [0,1] , scaled to
     the size of its corresponding table, and is then replaced by its
     mapping in the table `GL_PIXEL_MAP_c_TO_c', where C is R, G, B, or
     A.

     Unneeded data is then discarded.  For example, `GL_RED' discards
     the green, blue, and alpha components, while `GL_RGB' discards only
     the alpha component.  `GL_LUMINANCE' computes a single-component
     value as the sum of the red, green, and blue components, and
     `GL_LUMINANCE_ALPHA' does the same, while keeping alpha as a second
     value.  The final values are clamped to the range [0,1] .

The shift, scale, bias, and lookup factors just described are all
specified by `glPixelTransfer'.  The lookup table contents themselves
are specified by `glPixelMap'.

Finally, the indices or components are converted to the proper format,
as specified by TYPE.  If FORMAT is `GL_COLOR_INDEX' or
`GL_STENCIL_INDEX' and TYPE is not `GL_FLOAT', each index is masked with
the mask value given in the following table.  If TYPE is `GL_FLOAT',
then each integer index is converted to single-precision floating-point
format.

If FORMAT is `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_RGB',
`GL_BGR', `GL_RGBA', `GL_BGRA', `GL_LUMINANCE', or `GL_LUMINANCE_ALPHA'
and TYPE is not `GL_FLOAT', each component is multiplied by the
multiplier shown in the following table.  If type is `GL_FLOAT', then
each component is passed as is (or converted to the client's
single-precision floating-point format if it is different from the one
used by the GL).



TYPE
     *Index Mask*, *Component Conversion*

`GL_UNSIGNED_BYTE'
     2^8-1 , (2^8-1,)\u2062C

`GL_BYTE'
     2^7-1 , (2^8-1,)\u2062C-1,/2

`GL_BITMAP'
     1 , 1

`GL_UNSIGNED_SHORT'
     2^16-1 , (2^16-1,)\u2062C

`GL_SHORT'
     2^15-1 , (2^16-1,)\u2062C-1,/2

`GL_UNSIGNED_INT'
     2^32-1 , (2^32-1,)\u2062C

`GL_INT'
     2^31-1 , (2^32-1,)\u2062C-1,/2

`GL_FLOAT'
     none , C

Return values are placed in memory as follows.  If FORMAT is
`GL_COLOR_INDEX', `GL_STENCIL_INDEX', `GL_DEPTH_COMPONENT', `GL_RED',
`GL_GREEN', `GL_BLUE', `GL_ALPHA', or `GL_LUMINANCE', a single value is
returned and the data for the I th pixel in the J th row is placed in
location (J,)\u2062WIDTH+I .  `GL_RGB' and `GL_BGR' return three values,
`GL_RGBA' and `GL_BGRA' return four values, and `GL_LUMINANCE_ALPHA'
returns two values for each pixel, with all values corresponding to a
single pixel occupying contiguous space in DATA.  Storage parameters set
by `glPixelStore', such as `GL_PACK_LSB_FIRST' and `GL_PACK_SWAP_BYTES',
affect the way that data is written into memory.  See `glPixelStore' for
a description.

`GL_INVALID_ENUM' is generated if FORMAT or TYPE is not an accepted
value.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
`GL_COLOR_INDEX' or `GL_STENCIL_INDEX'.

`GL_INVALID_VALUE' is generated if either WIDTH or HEIGHT is negative.

`GL_INVALID_OPERATION' is generated if FORMAT is `GL_COLOR_INDEX' and
the color buffers store RGBA color components.

`GL_INVALID_OPERATION' is generated if FORMAT is `GL_STENCIL_INDEX' and
there is no stencil buffer.

`GL_INVALID_OPERATION' is generated if FORMAT is `GL_DEPTH_COMPONENT'
and there is no depth buffer.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

The formats `GL_BGR', and `GL_BGRA' and types `GL_UNSIGNED_BYTE_3_3_2',
`GL_UNSIGNED_BYTE_2_3_3_REV', `GL_UNSIGNED_SHORT_5_6_5',
`GL_UNSIGNED_SHORT_5_6_5_REV', `GL_UNSIGNED_SHORT_4_4_4_4',
`GL_UNSIGNED_SHORT_4_4_4_4_REV', `GL_UNSIGNED_SHORT_5_5_5_1',
`GL_UNSIGNED_SHORT_1_5_5_5_REV', `GL_UNSIGNED_INT_8_8_8_8',
`GL_UNSIGNED_INT_8_8_8_8_REV', `GL_UNSIGNED_INT_10_10_10_2', and
`GL_UNSIGNED_INT_2_10_10_10_REV' are available only if the GL version is
1.2 or greater.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the buffer object's data
store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and the data would be packed
to the buffer object such that the memory writes required would exceed
the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_PACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glReadPixels' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glRectd
     (x1 GLdouble)
     (y1 GLdouble)
     (x2 GLdouble)
     (y2 GLdouble)
     ->
     void)
   (glRectf
     (x1 GLfloat)
     (y1 GLfloat)
     (x2 GLfloat)
     (y2 GLfloat)
     ->
     void)
   (glRecti
     (x1 GLint)
     (y1 GLint)
     (x2 GLint)
     (y2 GLint)
     ->
     void)
   (glRects
     (x1 GLshort)
     (y1 GLshort)
     (x2 GLshort)
     (y2 GLshort)
     ->
     void)
   (glRectdv
     (v1 const-GLdouble-*)
     (v2 const-GLdouble-*)
     ->
     void)
   (glRectfv
     (v1 const-GLfloat-*)
     (v2 const-GLfloat-*)
     ->
     void)
   (glRectiv
     (v1 const-GLint-*)
     (v2 const-GLint-*)
     ->
     void)
   (glRectsv
     (v1 const-GLshort-*)
     (v2 const-GLshort-*)
     ->
     void))
  "Draw a rectangle.

X1
     Y1

     Specify one vertex of a rectangle.

X2
     Y2

     Specify the opposite vertex of the rectangle.

`glRect' supports efficient specification of rectangles as two corner
points.  Each rectangle command takes four arguments, organized either
as two consecutive pairs of (X,Y) coordinates or as two pointers to
arrays, each containing an (X,Y) pair.  The resulting rectangle is
defined in the Z=0 plane.

`glRect'(X1, Y1, X2, Y2) is exactly equivalent to the following
sequence: Note that if the second vertex is above and to the right of
the first vertex, the rectangle is constructed with a counterclockwise
winding.

     
     glBegin(`GL_POLYGON');
     glVertex2(X1, Y1);
     glVertex2(X2, Y1);
     glVertex2(X2, Y2);
     glVertex2(X1, Y2);
     glEnd(); 

`GL_INVALID_OPERATION' is generated if `glRect' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glRenderMode (mode GLenum) -> GLint))
  "Set rasterization mode.

MODE
     Specifies the rasterization mode.  Three values are accepted:
     `GL_RENDER', `GL_SELECT', and `GL_FEEDBACK'.  The initial value is
     `GL_RENDER'.

`glRenderMode' sets the rasterization mode.  It takes one argument,
MODE, which can assume one of three predefined values:

`GL_RENDER'
     Render mode.  Primitives are rasterized, producing pixel fragments,
     which are written into the frame buffer.  This is the normal mode
     and also the default mode.

`GL_SELECT'
     Selection mode.  No pixel fragments are produced, and no change to
     the frame buffer contents is made.  Instead, a record of the names
     of primitives that would have been drawn if the render mode had
     been `GL_RENDER' is returned in a select buffer, which must be
     created (see `glSelectBuffer') before selection mode is entered.

`GL_FEEDBACK'
     Feedback mode.  No pixel fragments are produced, and no change to
     the frame buffer contents is made.  Instead, the coordinates and
     attributes of vertices that would have been drawn if the render
     mode had been `GL_RENDER' is returned in a feedback buffer, which
     must be created (see `glFeedbackBuffer') before feedback mode is
     entered.

The return value of `glRenderMode' is determined by the render mode at
the time `glRenderMode' is called, rather than by MODE.  The values
returned for the three render modes are as follows:

`GL_RENDER'
     0.

`GL_SELECT'
     The number of hit records transferred to the select buffer.

`GL_FEEDBACK'
     The number of values (not vertices) transferred to the feedback
     buffer.

See the `glSelectBuffer' and `glFeedbackBuffer' reference pages for more
details concerning selection and feedback operation.

`GL_INVALID_ENUM' is generated if MODE is not one of the three accepted
values.

`GL_INVALID_OPERATION' is generated if `glSelectBuffer' is called while
the render mode is `GL_SELECT', or if `glRenderMode' is called with
argument `GL_SELECT' before `glSelectBuffer' is called at least once.

`GL_INVALID_OPERATION' is generated if `glFeedbackBuffer' is called
while the render mode is `GL_FEEDBACK', or if `glRenderMode' is called
with argument `GL_FEEDBACK' before `glFeedbackBuffer' is called at least
once.

`GL_INVALID_OPERATION' is generated if `glRenderMode' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glResetHistogram (target GLenum) -> void))
  "Reset histogram table entries to zero.

TARGET
     Must be `GL_HISTOGRAM'.

`glResetHistogram' resets all the elements of the current histogram
table to zero.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_HISTOGRAM'.

`GL_INVALID_OPERATION' is generated if `glResetHistogram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glResetMinmax (target GLenum) -> void))
  "Reset minmax table entries to initial values.

TARGET
     Must be `GL_MINMAX'.

`glResetMinmax' resets the elements of the current minmax table to their
initial values: the ``maximum'' element receives the minimum possible
component values, and the ``minimum'' element receives the maximum
possible component values.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_MINMAX'.

`GL_INVALID_OPERATION' is generated if `glResetMinmax' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glRotated
     (angle GLdouble)
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     ->
     void)
   (glRotatef
     (angle GLfloat)
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     ->
     void))
  "Multiply the current matrix by a rotation matrix.

ANGLE
     Specifies the angle of rotation, in degrees.

X
     Y

     Z

     Specify the X, Y, and Z coordinates of a vector, respectively.

`glRotate' produces a rotation of ANGLE degrees around the vector (X,YZ)
. The current matrix (see `glMatrixMode') is multiplied by a rotation
matrix with the product replacing the current matrix, as if
`glMultMatrix' were called with the following matrix as its argument:

((X^2\u2061(1-C,)+C X\u2062Y\u2061(1-C,)-Z\u2062S X\u2062Z\u2061(1-C,)+Y\u2062S 0), (Y\u2062X\u2061(1-C,)+Z\u2062S
Y^2\u2061(1-C,)+C Y\u2062Z\u2061(1-C,)-X\u2062S 0), (X\u2062Z\u2061(1-C,)-Y\u2062S Y\u2062Z\u2061(1-C,)+X\u2062S
Z^2\u2061(1-C,)+C 0), (0 0 0 1),)



Where C=COS\u2061(ANGLE,) , S=SIN\u2061(ANGLE,) , and ∥(X,YZ),∥=1 (if not, the GL
will normalize this vector).





If the matrix mode is either `GL_MODELVIEW' or `GL_PROJECTION', all
objects drawn after `glRotate' is called are rotated.  Use
`glPushMatrix' and `glPopMatrix' to save and restore the unrotated
coordinate system.

`GL_INVALID_OPERATION' is generated if `glRotate' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glSampleCoverage
     (value GLclampf)
     (invert GLboolean)
     ->
     void))
  "Specify multisample coverage parameters.

VALUE
     Specify a single floating-point sample coverage value.  The value
     is clamped to the range [0,1] .  The initial value is 1.0.

INVERT
     Specify a single boolean value representing if the coverage masks
     should be inverted.  `GL_TRUE' and `GL_FALSE' are accepted.  The
     initial value is `GL_FALSE'.

Multisampling samples a pixel multiple times at various
implementation-dependent subpixel locations to generate antialiasing
effects.  Multisampling transparently antialiases points, lines,
polygons, bitmaps, and images if it is enabled.

VALUE is used in constructing a temporary mask used in determining which
samples will be used in resolving the final fragment color.  This mask
is bitwise-anded with the coverage mask generated from the multisampling
computation.  If the INVERT flag is set, the temporary mask is inverted
(all bits flipped) and then the bitwise-and is computed.

If an implementation does not have any multisample buffers available, or
multisampling is disabled, rasterization occurs with only a single
sample computing a pixel's final RGB color.

Provided an implementation supports multisample buffers, and
multisampling is enabled, then a pixel's final color is generated by
combining several samples per pixel.  Each sample contains color, depth,
and stencil information, allowing those operations to be performed on
each sample.

`GL_INVALID_OPERATION' is generated if `glSampleCoverage' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glScaled
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     ->
     void)
   (glScalef
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     ->
     void))
  "Multiply the current matrix by a general scaling matrix.

X
     Y

     Z

     Specify scale factors along the X, Y, and Z axes, respectively.

`glScale' produces a nonuniform scaling along the X, Y, and Z axes.  The
three parameters indicate the desired scale factor along each of the
three axes.

The current matrix (see `glMatrixMode') is multiplied by this scale
matrix, and the product replaces the current matrix as if `glMultMatrix'
were called with the following matrix as its argument:

((X 0 0 0), (0 Y 0 0), (0 0 Z 0), (0 0 0 1),)

If the matrix mode is either `GL_MODELVIEW' or `GL_PROJECTION', all
objects drawn after `glScale' is called are scaled.

Use `glPushMatrix' and `glPopMatrix' to save and restore the unscaled
coordinate system.

`GL_INVALID_OPERATION' is generated if `glScale' is executed between the
execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glScissor
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     ->
     void))
  "Define the scissor box.

X
     Y

     Specify the lower left corner of the scissor box.  Initially (0,
     0).

WIDTH
     HEIGHT

     Specify the width and height of the scissor box.  When a GL context
     is first attached to a window, WIDTH and HEIGHT are set to the
     dimensions of that window.

`glScissor' defines a rectangle, called the scissor box, in window
coordinates.  The first two arguments, X and Y, specify the lower left
corner of the box.  WIDTH and HEIGHT specify the width and height of the
box.

To enable and disable the scissor test, call `glEnable' and `glDisable'
with argument `GL_SCISSOR_TEST'.  The test is initially disabled.  While
the test is enabled, only pixels that lie within the scissor box can be
modified by drawing commands.  Window coordinates have integer values at
the shared corners of frame buffer pixels.  `glScissor(0,0,1,1)' allows
modification of only the lower left pixel in the window, and
`glScissor(0,0,0,0)' doesn't allow modification of any pixels in the
window.

When the scissor test is disabled, it is as though the scissor box
includes the entire window.

`GL_INVALID_VALUE' is generated if either WIDTH or HEIGHT is negative.

`GL_INVALID_OPERATION' is generated if `glScissor' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glSecondaryColorPointer
     (size GLint)
     (type GLenum)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of secondary colors.

SIZE
     Specifies the number of components per color.  Must be 3.

TYPE
     Specifies the data type of each color component in the array.
     Symbolic constants `GL_BYTE', `GL_UNSIGNED_BYTE', `GL_SHORT',
     `GL_UNSIGNED_SHORT', `GL_INT', `GL_UNSIGNED_INT', `GL_FLOAT', or
     `GL_DOUBLE' are accepted.  The initial value is `GL_FLOAT'.

STRIDE
     Specifies the byte offset between consecutive colors.  If STRIDE is
     0, the colors are understood to be tightly packed in the array.  The
     initial value is 0.

POINTER
     Specifies a pointer to the first component of the first color
     element in the array.  The initial value is 0.

`glSecondaryColorPointer' specifies the location and data format of an
array of color components to use when rendering.  SIZE specifies the
number of components per color, and must be 3.  TYPE specifies the data
type of each color component, and STRIDE specifies the byte stride from
one color to the next, allowing vertices and attributes to be packed
into a single array or stored in separate arrays.

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a secondary color array is specified,
POINTER is treated as a byte offset into the buffer object's data store.
Also, the buffer object binding (`GL_ARRAY_BUFFER_BINDING') is saved as
secondary color vertex array client-side state
(`GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING').

When a secondary color array is specified, SIZE, TYPE, STRIDE, and
POINTER are saved as client-side state, in addition to the current
vertex array buffer object binding.

To enable and disable the secondary color array, call
`glEnableClientState' and `glDisableClientState' with the argument
`GL_SECONDARY_COLOR_ARRAY'.  If enabled, the secondary color array is
used when `glArrayElement', `glDrawArrays', `glMultiDrawArrays',
`glDrawElements', `glMultiDrawElements', or `glDrawRangeElements' is
called.

`GL_INVALID_VALUE' is generated if SIZE is not 3.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glSecondaryColor3b
     (red GLbyte)
     (green GLbyte)
     (blue GLbyte)
     ->
     void)
   (glSecondaryColor3s
     (red GLshort)
     (green GLshort)
     (blue GLshort)
     ->
     void)
   (glSecondaryColor3i
     (red GLint)
     (green GLint)
     (blue GLint)
     ->
     void)
   (glSecondaryColor3f
     (red GLfloat)
     (green GLfloat)
     (blue GLfloat)
     ->
     void)
   (glSecondaryColor3d
     (red GLdouble)
     (green GLdouble)
     (blue GLdouble)
     ->
     void)
   (glSecondaryColor3ub
     (red GLubyte)
     (green GLubyte)
     (blue GLubyte)
     ->
     void)
   (glSecondaryColor3us
     (red GLushort)
     (green GLushort)
     (blue GLushort)
     ->
     void)
   (glSecondaryColor3ui
     (red GLuint)
     (green GLuint)
     (blue GLuint)
     ->
     void)
   (glSecondaryColor3bv (v const-GLbyte-*) -> void)
   (glSecondaryColor3sv (v const-GLshort-*) -> void)
   (glSecondaryColor3iv (v const-GLint-*) -> void)
   (glSecondaryColor3fv (v const-GLfloat-*) -> void)
   (glSecondaryColor3dv
     (v const-GLdouble-*)
     ->
     void)
   (glSecondaryColor3ubv
     (v const-GLubyte-*)
     ->
     void)
   (glSecondaryColor3usv
     (v const-GLushort-*)
     ->
     void)
   (glSecondaryColor3uiv (v const-GLuint-*) -> void))
  "Set the current secondary color.

RED
     GREEN

     BLUE

     Specify new red, green, and blue values for the current secondary
     color.

The GL stores both a primary four-valued RGBA color and a secondary
four-valued RGBA color (where alpha is always set to 0.0) that is
associated with every vertex.

The secondary color is interpolated and applied to each fragment during
rasterization when `GL_COLOR_SUM' is enabled.  When lighting is enabled,
and `GL_SEPARATE_SPECULAR_COLOR' is specified, the value of the
secondary color is assigned the value computed from the specular term of
the lighting computation.  Both the primary and secondary current colors
are applied to each fragment, regardless of the state of `GL_COLOR_SUM',
under such conditions.  When `GL_SEPARATE_SPECULAR_COLOR' is specified,
the value returned from querying the current secondary color is
undefined.

`glSecondaryColor3b', `glSecondaryColor3s', and `glSecondaryColor3i'
take three signed byte, short, or long integers as arguments.  When *v*
is appended to the name, the color commands can take a pointer to an
array of such values.

Color values are stored in floating-point format, with unspecified
mantissa and exponent sizes.  Unsigned integer color components, when
specified, are linearly mapped to floating-point values such that the
largest representable value maps to 1.0 (full intensity), and 0 maps to
0.0 (zero intensity).  Signed integer color components, when specified,
are linearly mapped to floating-point values such that the most positive
representable value maps to 1.0, and the most negative representable
value maps to -1.0 .  (Note that this mapping does not convert 0
precisely to 0.0).  Floating-point values are mapped directly.

Neither floating-point nor signed integer values are clamped to the
range [0,1] before the current color is updated.  However, color
components are clamped to this range before they are interpolated or
written into a color buffer.")

(define-gl-procedures
  ((glSelectBuffer
     (size GLsizei)
     (buffer GLuint-*)
     ->
     void))
  "Establish a buffer for selection mode values.

SIZE
     Specifies the size of BUFFER.

BUFFER
     Returns the selection data.

`glSelectBuffer' has two arguments: BUFFER is a pointer to an array of
unsigned integers, and SIZE indicates the size of the array.  BUFFER
returns values from the name stack (see `glInitNames', `glLoadName',
`glPushName') when the rendering mode is `GL_SELECT' (see
`glRenderMode').  `glSelectBuffer' must be issued before selection mode
is enabled, and it must not be issued while the rendering mode is
`GL_SELECT'.

A programmer can use selection to determine which primitives are drawn
into some region of a window.  The region is defined by the current
modelview and perspective matrices.

In selection mode, no pixel fragments are produced from rasterization.
Instead, if a primitive or a raster position intersects the clipping
volume defined by the viewing frustum and the user-defined clipping
planes, this primitive causes a selection hit.  (With polygons, no hit
occurs if the polygon is culled.) When a change is made to the name
stack, or when `glRenderMode' is called, a hit record is copied to
BUFFER if any hits have occurred since the last such event (name stack
change or `glRenderMode' call).  The hit record consists of the number
of names in the name stack at the time of the event, followed by the
minimum and maximum depth values of all vertices that hit since the
previous event, followed by the name stack contents, bottom name first.

Depth values (which are in the range [0,1]) are multiplied by 2^32-1 ,
before being placed in the hit record.

An internal index into BUFFER is reset to 0 whenever selection mode is
entered.  Each time a hit record is copied into BUFFER, the index is
incremented to point to the cell just past the end of the block of
names\\(emthat is, to the next available cell If the hit record is larger
than the number of remaining locations in BUFFER, as much data as can
fit is copied, and the overflow flag is set.  If the name stack is empty
when a hit record is copied, that record consists of 0 followed by the
minimum and maximum depth values.

To exit selection mode, call `glRenderMode' with an argument other than
`GL_SELECT'.  Whenever `glRenderMode' is called while the render mode is
`GL_SELECT', it returns the number of hit records copied to BUFFER,
resets the overflow flag and the selection buffer pointer, and
initializes the name stack to be empty.  If the overflow bit was set
when `glRenderMode' was called, a negative hit record count is returned.

`GL_INVALID_VALUE' is generated if SIZE is negative.

`GL_INVALID_OPERATION' is generated if `glSelectBuffer' is called while
the render mode is `GL_SELECT', or if `glRenderMode' is called with
argument `GL_SELECT' before `glSelectBuffer' is called at least once.

`GL_INVALID_OPERATION' is generated if `glSelectBuffer' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glSeparableFilter2D
     (target GLenum)
     (internalformat GLenum)
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (type GLenum)
     (row const-GLvoid-*)
     (column const-GLvoid-*)
     ->
     void))
  "Define a separable two-dimensional convolution filter.

TARGET
     Must be `GL_SEPARABLE_2D'.

INTERNALFORMAT
     The internal format of the convolution filter kernel.  The
     allowable values are `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8',
     `GL_ALPHA12', `GL_ALPHA16', `GL_LUMINANCE', `GL_LUMINANCE4',
     `GL_LUMINANCE8', `GL_LUMINANCE12', `GL_LUMINANCE16',
     `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', or `GL_RGBA16'.

WIDTH
     The number of elements in the pixel array referenced by ROW.  (This
     is the width of the separable filter kernel.)

HEIGHT
     The number of elements in the pixel array referenced by COLUMN.
     (This is the height of the separable filter kernel.)

FORMAT
     The format of the pixel data in ROW and COLUMN.  The allowable
     values are `GL_RED', `GL_GREEN', `GL_BLUE', `GL_ALPHA', `GL_RGB',
     `GL_BGR', `GL_RGBA', `GL_BGRA', `GL_INTENSITY', `GL_LUMINANCE', and
     `GL_LUMINANCE_ALPHA'.

TYPE
     The type of the pixel data in ROW and COLUMN.  Symbolic constants
     `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP', `GL_UNSIGNED_SHORT',
     `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT', `GL_FLOAT',
     `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'
     are accepted.

ROW
     Pointer to a one-dimensional array of pixel data that is processed
     to build the row filter kernel.

COLUMN
     Pointer to a one-dimensional array of pixel data that is processed
     to build the column filter kernel.

`glSeparableFilter2D' builds a two-dimensional separable convolution
filter kernel from two arrays of pixels.

The pixel arrays specified by (WIDTH, FORMAT, TYPE, ROW) and (HEIGHT,
FORMAT, TYPE, COLUMN) are processed just as if they had been passed to
`glDrawPixels', but processing stops after the final expansion to RGBA
is completed.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a convolution
filter is specified, ROW and COLUMN are treated as byte offsets into the
buffer object's data store.

Next, the R, G, B, and A components of all pixels in both arrays are
scaled by the four separable 2D `GL_CONVOLUTION_FILTER_SCALE' parameters
and biased by the four separable 2D `GL_CONVOLUTION_FILTER_BIAS'
parameters.  (The scale and bias parameters are set by
`glConvolutionParameter' using the `GL_SEPARABLE_2D' target and the
names `GL_CONVOLUTION_FILTER_SCALE' and `GL_CONVOLUTION_FILTER_BIAS'.
The parameters themselves are vectors of four values that are applied to
red, green, blue, and alpha, in that order.) The R, G, B, and A values
are not clamped to [0,1] at any time during this process.

Each pixel is then converted to the internal format specified by
INTERNALFORMAT.  This conversion simply maps the component values of the
pixel (R, G, B, and A) to the values included in the internal format
(red, green, blue, alpha, luminance, and intensity).  The mapping is as
follows:

*Internal Format*
     *Red*, *Green*, *Blue*, *Alpha*, *Luminance*, *Intensity*

`GL_LUMINANCE'
     , , , , R ,

`GL_LUMINANCE_ALPHA'
     , , , A , R ,

`GL_INTENSITY'
     , , , , , R

`GL_RGB'
     R , G , B , , ,

`GL_RGBA'
     R , G , B , A , ,

The red, green, blue, alpha, luminance, and/or intensity components of
the resulting pixels are stored in floating-point rather than integer
format.  They form two one-dimensional filter kernel images.  The row
image is indexed by coordinate I starting at zero and increasing from
left to right.  Each location in the row image is derived from element I
of ROW.  The column image is indexed by coordinate J starting at zero
and increasing from bottom to top.  Each location in the column image is
derived from element J of COLUMN.

Note that after a convolution is performed, the resulting color
components are also scaled by their corresponding
`GL_POST_CONVOLUTION_c_SCALE' parameters and biased by their
corresponding `GL_POST_CONVOLUTION_c_BIAS' parameters (where C takes on
the values *RED*, *GREEN*, *BLUE*, and *ALPHA*).  These parameters are
set by `glPixelTransfer'.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_SEPARABLE_2D'.

`GL_INVALID_ENUM' is generated if INTERNALFORMAT is not one of the
allowable values.

`GL_INVALID_ENUM' is generated if FORMAT is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if TYPE is not one of the allowable
values.

`GL_INVALID_VALUE' is generated if WIDTH is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_SEPARABLE_2D' and name
`GL_MAX_CONVOLUTION_WIDTH'.

`GL_INVALID_VALUE' is generated if HEIGHT is less than zero or greater
than the maximum supported value.  This value may be queried with
`glGetConvolutionParameter' using target `GL_SEPARABLE_2D' and name
`GL_MAX_CONVOLUTION_HEIGHT'.

`GL_INVALID_OPERATION' is generated if HEIGHT is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if HEIGHT is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and ROW or COLUMN is not
evenly divisible into the number of bytes needed to store in memory a
datum indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glSeparableFilter2D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glShadeModel (mode GLenum) -> void))
  "Select flat or smooth shading.

MODE
     Specifies a symbolic value representing a shading technique.
     Accepted values are `GL_FLAT' and `GL_SMOOTH'.  The initial value
     is `GL_SMOOTH'.

GL primitives can have either flat or smooth shading.  Smooth shading,
the default, causes the computed colors of vertices to be interpolated
as the primitive is rasterized, typically assigning different colors to
each resulting pixel fragment.  Flat shading selects the computed color
of just one vertex and assigns it to all the pixel fragments generated
by rasterizing a single primitive.  In either case, the computed color
of a vertex is the result of lighting if lighting is enabled, or it is
the current color at the time the vertex was specified if lighting is
disabled.

Flat and smooth shading are indistinguishable for points.  Starting when
`glBegin' is issued and counting vertices and primitives from 1, the GL
gives each flat-shaded line segment I the computed color of vertex I+1 ,
its second vertex.  Counting similarly from 1, the GL gives each
flat-shaded polygon the computed color of the vertex listed in the
following table.  This is the last vertex to specify the polygon in all
cases except single polygons, where the first vertex specifies the
flat-shaded color.



* Primitive Type of Polygon I *
     *Vertex*

Single polygon (I==1 )
     1

Triangle strip
     I+2

Triangle fan
     I+2

Independent triangle
     3\u2062I

Quad strip
     2\u2062I+2

Independent quad
     4\u2062I

Flat and smooth shading are specified by `glShadeModel' with MODE set to
`GL_FLAT' and `GL_SMOOTH', respectively.

`GL_INVALID_ENUM' is generated if MODE is any value other than `GL_FLAT'
or `GL_SMOOTH'.

`GL_INVALID_OPERATION' is generated if `glShadeModel' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glShaderSource
     (shader GLuint)
     (count GLsizei)
     (string const-GLchar-**)
     (length const-GLint-*)
     ->
     void))
  "Replaces the source code in a shader object.

SHADER
     Specifies the handle of the shader object whose source code is to
     be replaced.

COUNT
     Specifies the number of elements in the STRING and LENGTH arrays.

STRING
     Specifies an array of pointers to strings containing the source
     code to be loaded into the shader.

LENGTH
     Specifies an array of string lengths.

`glShaderSource' sets the source code in SHADER to the source code in
the array of strings specified by STRING.  Any source code previously
stored in the shader object is completely replaced.  The number of
strings in the array is specified by COUNT.  If LENGTH is `NULL', each
string is assumed to be null terminated.  If LENGTH is a value other
than `NULL', it points to an array containing a string length for each
of the corresponding elements of STRING.  Each element in the LENGTH
array may contain the length of the corresponding string (the null
character is not counted as part of the string length) or a value less
than 0 to indicate that the string is null terminated.  The source code
strings are not scanned or parsed at this time; they are simply copied
into the specified shader object.

`GL_INVALID_VALUE' is generated if SHADER is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if SHADER is not a shader object.

`GL_INVALID_VALUE' is generated if COUNT is less than 0.

`GL_INVALID_OPERATION' is generated if `glShaderSource' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glStencilFuncSeparate
     (face GLenum)
     (func GLenum)
     (ref GLint)
     (mask GLuint)
     ->
     void))
  "Set front and/or back function and reference value for stencil testing.

FACE
     Specifies whether front and/or back stencil state is updated.  Three
     symbolic constants are valid: `GL_FRONT', `GL_BACK', and
     `GL_FRONT_AND_BACK'.

FUNC
     Specifies the test function.  Eight symbolic constants are valid:
     `GL_NEVER', `GL_LESS', `GL_LEQUAL', `GL_GREATER', `GL_GEQUAL',
     `GL_EQUAL', `GL_NOTEQUAL', and `GL_ALWAYS'.  The initial value is
     `GL_ALWAYS'.

REF
     Specifies the reference value for the stencil test.  REF is clamped
     to the range [0,2^N-1] , where N is the number of bitplanes in the
     stencil buffer.  The initial value is 0.

MASK
     Specifies a mask that is ANDed with both the reference value and
     the stored stencil value when the test is done.  The initial value
     is all 1's.

Stenciling, like depth-buffering, enables and disables drawing on a
per-pixel basis.  You draw into the stencil planes using GL drawing
primitives, then render geometry and images, using the stencil planes to
mask out portions of the screen.  Stenciling is typically used in
multipass rendering algorithms to achieve special effects, such as
decals, outlining, and constructive solid geometry rendering.

The stencil test conditionally eliminates a pixel based on the outcome
of a comparison between the reference value and the value in the stencil
buffer.  To enable and disable the test, call `glEnable' and `glDisable'
with argument `GL_STENCIL_TEST'.  To specify actions based on the
outcome of the stencil test, call `glStencilOp' or
`glStencilOpSeparate'.

There can be two separate sets of FUNC, REF, and MASK parameters; one
affects back-facing polygons, and the other affects front-facing
polygons as well as other non-polygon primitives.  `glStencilFunc' sets
both front and back stencil state to the same values, as if
`glStencilFuncSeparate' were called with FACE set to
`GL_FRONT_AND_BACK'.

FUNC is a symbolic constant that determines the stencil comparison
function.  It accepts one of eight values, shown in the following list.
REF is an integer reference value that is used in the stencil
comparison.  It is clamped to the range [0,2^N-1] , where N is the
number of bitplanes in the stencil buffer.  MASK is bitwise ANDed with
both the reference value and the stored stencil value, with the ANDed
values participating in the comparison.

If STENCIL represents the value stored in the corresponding stencil
buffer location, the following list shows the effect of each comparison
function that can be specified by FUNC.  Only if the comparison succeeds
is the pixel passed through to the next stage in the rasterization
process (see `glStencilOp').  All tests treat STENCIL values as unsigned
integers in the range [0,2^N-1] , where N is the number of bitplanes in
the stencil buffer.

The following values are accepted by FUNC:

`GL_NEVER'
     Always fails.

`GL_LESS'
     Passes if ( REF & MASK ) < ( STENCIL & MASK ).

`GL_LEQUAL'
     Passes if ( REF & MASK ) <= ( STENCIL & MASK ).

`GL_GREATER'
     Passes if ( REF & MASK ) > ( STENCIL & MASK ).

`GL_GEQUAL'
     Passes if ( REF & MASK ) >= ( STENCIL & MASK ).

`GL_EQUAL'
     Passes if ( REF & MASK ) = ( STENCIL & MASK ).

`GL_NOTEQUAL'
     Passes if ( REF & MASK ) != ( STENCIL & MASK ).

`GL_ALWAYS'
     Always passes.

`GL_INVALID_ENUM' is generated if FUNC is not one of the eight accepted
values.

`GL_INVALID_OPERATION' is generated if `glStencilFuncSeparate' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glStencilFunc
     (func GLenum)
     (ref GLint)
     (mask GLuint)
     ->
     void))
  "Set front and back function and reference value for stencil testing.

FUNC
     Specifies the test function.  Eight symbolic constants are valid:
     `GL_NEVER', `GL_LESS', `GL_LEQUAL', `GL_GREATER', `GL_GEQUAL',
     `GL_EQUAL', `GL_NOTEQUAL', and `GL_ALWAYS'.  The initial value is
     `GL_ALWAYS'.

REF
     Specifies the reference value for the stencil test.  REF is clamped
     to the range [0,2^N-1] , where N is the number of bitplanes in the
     stencil buffer.  The initial value is 0.

MASK
     Specifies a mask that is ANDed with both the reference value and
     the stored stencil value when the test is done.  The initial value
     is all 1's.

Stenciling, like depth-buffering, enables and disables drawing on a
per-pixel basis.  Stencil planes are first drawn into using GL drawing
primitives, then geometry and images are rendered using the stencil
planes to mask out portions of the screen.  Stenciling is typically used
in multipass rendering algorithms to achieve special effects, such as
decals, outlining, and constructive solid geometry rendering.

The stencil test conditionally eliminates a pixel based on the outcome
of a comparison between the reference value and the value in the stencil
buffer.  To enable and disable the test, call `glEnable' and `glDisable'
with argument `GL_STENCIL_TEST'.  To specify actions based on the
outcome of the stencil test, call `glStencilOp' or
`glStencilOpSeparate'.

There can be two separate sets of FUNC, REF, and MASK parameters; one
affects back-facing polygons, and the other affects front-facing
polygons as well as other non-polygon primitives.  `glStencilFunc' sets
both front and back stencil state to the same values.  Use
`glStencilFuncSeparate' to set front and back stencil state to different
values.

FUNC is a symbolic constant that determines the stencil comparison
function.  It accepts one of eight values, shown in the following list.
REF is an integer reference value that is used in the stencil
comparison.  It is clamped to the range [0,2^N-1] , where N is the
number of bitplanes in the stencil buffer.  MASK is bitwise ANDed with
both the reference value and the stored stencil value, with the ANDed
values participating in the comparison.

If STENCIL represents the value stored in the corresponding stencil
buffer location, the following list shows the effect of each comparison
function that can be specified by FUNC.  Only if the comparison succeeds
is the pixel passed through to the next stage in the rasterization
process (see `glStencilOp').  All tests treat STENCIL values as unsigned
integers in the range [0,2^N-1] , where N is the number of bitplanes in
the stencil buffer.

The following values are accepted by FUNC:

`GL_NEVER'
     Always fails.

`GL_LESS'
     Passes if ( REF & MASK ) < ( STENCIL & MASK ).

`GL_LEQUAL'
     Passes if ( REF & MASK ) <= ( STENCIL & MASK ).

`GL_GREATER'
     Passes if ( REF & MASK ) > ( STENCIL & MASK ).

`GL_GEQUAL'
     Passes if ( REF & MASK ) >= ( STENCIL & MASK ).

`GL_EQUAL'
     Passes if ( REF & MASK ) = ( STENCIL & MASK ).

`GL_NOTEQUAL'
     Passes if ( REF & MASK ) != ( STENCIL & MASK ).

`GL_ALWAYS'
     Always passes.

`GL_INVALID_ENUM' is generated if FUNC is not one of the eight accepted
values.

`GL_INVALID_OPERATION' is generated if `glStencilFunc' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glStencilMaskSeparate
     (face GLenum)
     (mask GLuint)
     ->
     void))
  "Control the front and/or back writing of individual bits in the stencil
planes.

FACE
     Specifies whether the front and/or back stencil writemask is
     updated.  Three symbolic constants are valid: `GL_FRONT',
     `GL_BACK', and `GL_FRONT_AND_BACK'.

MASK
     Specifies a bit mask to enable and disable writing of individual
     bits in the stencil planes.  Initially, the mask is all 1's.

`glStencilMaskSeparate' controls the writing of individual bits in the
stencil planes.  The least significant N bits of MASK, where N is the
number of bits in the stencil buffer, specify a mask.  Where a 1 appears
in the mask, it's possible to write to the corresponding bit in the
stencil buffer.  Where a 0 appears, the corresponding bit is
write-protected.  Initially, all bits are enabled for writing.

There can be two separate MASK writemasks; one affects back-facing
polygons, and the other affects front-facing polygons as well as other
non-polygon primitives.  `glStencilMask' sets both front and back
stencil writemasks to the same values, as if `glStencilMaskSeparate'
were called with FACE set to `GL_FRONT_AND_BACK'.

`GL_INVALID_OPERATION' is generated if `glStencilMaskSeparate' is
executed between the execution of `glBegin' and the corresponding
execution of `glEnd'.")

(define-gl-procedures
  ((glStencilMask (mask GLuint) -> void))
  "Control the front and back writing of individual bits in the stencil
planes.

MASK
     Specifies a bit mask to enable and disable writing of individual
     bits in the stencil planes.  Initially, the mask is all 1's.

`glStencilMask' controls the writing of individual bits in the stencil
planes.  The least significant N bits of MASK, where N is the number of
bits in the stencil buffer, specify a mask.  Where a 1 appears in the
mask, it's possible to write to the corresponding bit in the stencil
buffer.  Where a 0 appears, the corresponding bit is write-protected.
Initially, all bits are enabled for writing.

There can be two separate MASK writemasks; one affects back-facing
polygons, and the other affects front-facing polygons as well as other
non-polygon primitives.  `glStencilMask' sets both front and back
stencil writemasks to the same values.  Use `glStencilMaskSeparate' to
set front and back stencil writemasks to different values.

`GL_INVALID_OPERATION' is generated if `glStencilMask' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glStencilOpSeparate
     (face GLenum)
     (sfail GLenum)
     (dpfail GLenum)
     (dppass GLenum)
     ->
     void))
  "Set front and/or back stencil test actions.

FACE
     Specifies whether front and/or back stencil state is updated.  Three
     symbolic constants are valid: `GL_FRONT', `GL_BACK', and
     `GL_FRONT_AND_BACK'.

SFAIL
     Specifies the action to take when the stencil test fails.  Eight
     symbolic constants are accepted: `GL_KEEP', `GL_ZERO',
     `GL_REPLACE', `GL_INCR', `GL_INCR_WRAP', `GL_DECR', `GL_DECR_WRAP',
     and `GL_INVERT'.  The initial value is `GL_KEEP'.

DPFAIL
     Specifies the stencil action when the stencil test passes, but the
     depth test fails.  DPFAIL accepts the same symbolic constants as
     SFAIL.  The initial value is `GL_KEEP'.

DPPASS
     Specifies the stencil action when both the stencil test and the
     depth test pass, or when the stencil test passes and either there
     is no depth buffer or depth testing is not enabled.  DPPASS accepts
     the same symbolic constants as SFAIL.  The initial value is
     `GL_KEEP'.

Stenciling, like depth-buffering, enables and disables drawing on a
per-pixel basis.  You draw into the stencil planes using GL drawing
primitives, then render geometry and images, using the stencil planes to
mask out portions of the screen.  Stenciling is typically used in
multipass rendering algorithms to achieve special effects, such as
decals, outlining, and constructive solid geometry rendering.

The stencil test conditionally eliminates a pixel based on the outcome
of a comparison between the value in the stencil buffer and a reference
value.  To enable and disable the test, call `glEnable' and `glDisable'
with argument `GL_STENCIL_TEST'; to control it, call `glStencilFunc' or
`glStencilFuncSeparate'.

There can be two separate sets of SFAIL, DPFAIL, and DPPASS parameters;
one affects back-facing polygons, and the other affects front-facing
polygons as well as other non-polygon primitives.  `glStencilOp' sets
both front and back stencil state to the same values, as if
`glStencilOpSeparate' were called with FACE set to `GL_FRONT_AND_BACK'.

`glStencilOpSeparate' takes three arguments that indicate what happens
to the stored stencil value while stenciling is enabled.  If the stencil
test fails, no change is made to the pixel's color or depth buffers, and
SFAIL specifies what happens to the stencil buffer contents.  The
following eight actions are possible.

`GL_KEEP'
     Keeps the current value.

`GL_ZERO'
     Sets the stencil buffer value to 0.

`GL_REPLACE'
     Sets the stencil buffer value to REF, as specified by
     `glStencilFunc'.

`GL_INCR'
     Increments the current stencil buffer value.  Clamps to the maximum
     representable unsigned value.

`GL_INCR_WRAP'
     Increments the current stencil buffer value.  Wraps stencil buffer
     value to zero when incrementing the maximum representable unsigned
     value.

`GL_DECR'
     Decrements the current stencil buffer value.  Clamps to 0.

`GL_DECR_WRAP'
     Decrements the current stencil buffer value.  Wraps stencil buffer
     value to the maximum representable unsigned value when decrementing
     a stencil buffer value of zero.

`GL_INVERT'
     Bitwise inverts the current stencil buffer value.

Stencil buffer values are treated as unsigned integers.  When
incremented and decremented, values are clamped to 0 and 2^N-1 , where N
is the value returned by querying `GL_STENCIL_BITS'.

The other two arguments to `glStencilOpSeparate' specify stencil buffer
actions that depend on whether subsequent depth buffer tests succeed
(DPPASS) or fail (DPFAIL) (see `glDepthFunc').  The actions are
specified using the same eight symbolic constants as SFAIL.  Note that
DPFAIL is ignored when there is no depth buffer, or when the depth
buffer is not enabled.  In these cases, SFAIL and DPPASS specify stencil
action when the stencil test fails and passes, respectively.

`GL_INVALID_ENUM' is generated if FACE is any value other than
`GL_FRONT', `GL_BACK', or `GL_FRONT_AND_BACK'.

`GL_INVALID_ENUM' is generated if SFAIL, DPFAIL, or DPPASS is any value
other than the eight defined constant values.

`GL_INVALID_OPERATION' is generated if `glStencilOpSeparate' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glStencilOp
     (sfail GLenum)
     (dpfail GLenum)
     (dppass GLenum)
     ->
     void))
  "Set front and back stencil test actions.

SFAIL
     Specifies the action to take when the stencil test fails.  Eight
     symbolic constants are accepted: `GL_KEEP', `GL_ZERO',
     `GL_REPLACE', `GL_INCR', `GL_INCR_WRAP', `GL_DECR', `GL_DECR_WRAP',
     and `GL_INVERT'.  The initial value is `GL_KEEP'.

DPFAIL
     Specifies the stencil action when the stencil test passes, but the
     depth test fails.  DPFAIL accepts the same symbolic constants as
     SFAIL.  The initial value is `GL_KEEP'.

DPPASS
     Specifies the stencil action when both the stencil test and the
     depth test pass, or when the stencil test passes and either there
     is no depth buffer or depth testing is not enabled.  DPPASS accepts
     the same symbolic constants as SFAIL.  The initial value is
     `GL_KEEP'.

Stenciling, like depth-buffering, enables and disables drawing on a
per-pixel basis.  You draw into the stencil planes using GL drawing
primitives, then render geometry and images, using the stencil planes to
mask out portions of the screen.  Stenciling is typically used in
multipass rendering algorithms to achieve special effects, such as
decals, outlining, and constructive solid geometry rendering.

The stencil test conditionally eliminates a pixel based on the outcome
of a comparison between the value in the stencil buffer and a reference
value.  To enable and disable the test, call `glEnable' and `glDisable'
with argument `GL_STENCIL_TEST'; to control it, call `glStencilFunc' or
`glStencilFuncSeparate'.

There can be two separate sets of SFAIL, DPFAIL, and DPPASS parameters;
one affects back-facing polygons, and the other affects front-facing
polygons as well as other non-polygon primitives.  `glStencilOp' sets
both front and back stencil state to the same values.  Use
`glStencilOpSeparate' to set front and back stencil state to different
values.

`glStencilOp' takes three arguments that indicate what happens to the
stored stencil value while stenciling is enabled.  If the stencil test
fails, no change is made to the pixel's color or depth buffers, and
SFAIL specifies what happens to the stencil buffer contents.  The
following eight actions are possible.

`GL_KEEP'
     Keeps the current value.

`GL_ZERO'
     Sets the stencil buffer value to 0.

`GL_REPLACE'
     Sets the stencil buffer value to REF, as specified by
     `glStencilFunc'.

`GL_INCR'
     Increments the current stencil buffer value.  Clamps to the maximum
     representable unsigned value.

`GL_INCR_WRAP'
     Increments the current stencil buffer value.  Wraps stencil buffer
     value to zero when incrementing the maximum representable unsigned
     value.

`GL_DECR'
     Decrements the current stencil buffer value.  Clamps to 0.

`GL_DECR_WRAP'
     Decrements the current stencil buffer value.  Wraps stencil buffer
     value to the maximum representable unsigned value when decrementing
     a stencil buffer value of zero.

`GL_INVERT'
     Bitwise inverts the current stencil buffer value.

Stencil buffer values are treated as unsigned integers.  When
incremented and decremented, values are clamped to 0 and 2^N-1 , where N
is the value returned by querying `GL_STENCIL_BITS'.

The other two arguments to `glStencilOp' specify stencil buffer actions
that depend on whether subsequent depth buffer tests succeed (DPPASS) or
fail (DPFAIL) (see `glDepthFunc').  The actions are specified using the
same eight symbolic constants as SFAIL.  Note that DPFAIL is ignored
when there is no depth buffer, or when the depth buffer is not enabled.
In these cases, SFAIL and DPPASS specify stencil action when the stencil
test fails and passes, respectively.

`GL_INVALID_ENUM' is generated if SFAIL, DPFAIL, or DPPASS is any value
other than the eight defined constant values.

`GL_INVALID_OPERATION' is generated if `glStencilOp' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glTexCoordPointer
     (size GLint)
     (type GLenum)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of texture coordinates.

SIZE
     Specifies the number of coordinates per array element.  Must be 1,
     2, 3, or 4.  The initial value is 4.

TYPE
     Specifies the data type of each texture coordinate.  Symbolic
     constants `GL_SHORT', `GL_INT', `GL_FLOAT', or `GL_DOUBLE' are
     accepted.  The initial value is `GL_FLOAT'.

STRIDE
     Specifies the byte offset between consecutive texture coordinate
     sets.  If STRIDE is 0, the array elements are understood to be
     tightly packed.  The initial value is 0.

POINTER
     Specifies a pointer to the first coordinate of the first texture
     coordinate set in the array.  The initial value is 0.

`glTexCoordPointer' specifies the location and data format of an array
of texture coordinates to use when rendering.  SIZE specifies the number
of coordinates per texture coordinate set, and must be 1, 2, 3, or 4.
TYPE specifies the data type of each texture coordinate, and STRIDE
specifies the byte stride from one texture coordinate set to the next,
allowing vertices and attributes to be packed into a single array or
stored in separate arrays.  (Single-array storage may be more efficient
on some implementations; see `glInterleavedArrays'.)

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a texture coordinate array is
specified, POINTER is treated as a byte offset into the buffer object's
data store.  Also, the buffer object binding (`GL_ARRAY_BUFFER_BINDING')
is saved as texture coordinate vertex array client-side state
(`GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING').

When a texture coordinate array is specified, SIZE, TYPE, STRIDE, and
POINTER are saved as client-side state, in addition to the current
vertex array buffer object binding.

To enable and disable a texture coordinate array, call
`glEnableClientState' and `glDisableClientState' with the argument
`GL_TEXTURE_COORD_ARRAY'.  If enabled, the texture coordinate array is
used when `glArrayElement', `glDrawArrays', `glMultiDrawArrays',
`glDrawElements', `glMultiDrawElements', or `glDrawRangeElements' is
called.

`GL_INVALID_VALUE' is generated if SIZE is not 1, 2, 3, or 4.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glTexCoord1s (s GLshort) -> void)
   (glTexCoord1i (s GLint) -> void)
   (glTexCoord1f (s GLfloat) -> void)
   (glTexCoord1d (s GLdouble) -> void)
   (glTexCoord2s (s GLshort) (t GLshort) -> void)
   (glTexCoord2i (s GLint) (t GLint) -> void)
   (glTexCoord2f (s GLfloat) (t GLfloat) -> void)
   (glTexCoord2d (s GLdouble) (t GLdouble) -> void)
   (glTexCoord3s
     (s GLshort)
     (t GLshort)
     (r GLshort)
     ->
     void)
   (glTexCoord3i
     (s GLint)
     (t GLint)
     (r GLint)
     ->
     void)
   (glTexCoord3f
     (s GLfloat)
     (t GLfloat)
     (r GLfloat)
     ->
     void)
   (glTexCoord3d
     (s GLdouble)
     (t GLdouble)
     (r GLdouble)
     ->
     void)
   (glTexCoord4s
     (s GLshort)
     (t GLshort)
     (r GLshort)
     (q GLshort)
     ->
     void)
   (glTexCoord4i
     (s GLint)
     (t GLint)
     (r GLint)
     (q GLint)
     ->
     void)
   (glTexCoord4f
     (s GLfloat)
     (t GLfloat)
     (r GLfloat)
     (q GLfloat)
     ->
     void)
   (glTexCoord4d
     (s GLdouble)
     (t GLdouble)
     (r GLdouble)
     (q GLdouble)
     ->
     void)
   (glTexCoord1sv (v const-GLshort-*) -> void)
   (glTexCoord1iv (v const-GLint-*) -> void)
   (glTexCoord1fv (v const-GLfloat-*) -> void)
   (glTexCoord1dv (v const-GLdouble-*) -> void)
   (glTexCoord2sv (v const-GLshort-*) -> void)
   (glTexCoord2iv (v const-GLint-*) -> void)
   (glTexCoord2fv (v const-GLfloat-*) -> void)
   (glTexCoord2dv (v const-GLdouble-*) -> void)
   (glTexCoord3sv (v const-GLshort-*) -> void)
   (glTexCoord3iv (v const-GLint-*) -> void)
   (glTexCoord3fv (v const-GLfloat-*) -> void)
   (glTexCoord3dv (v const-GLdouble-*) -> void)
   (glTexCoord4sv (v const-GLshort-*) -> void)
   (glTexCoord4iv (v const-GLint-*) -> void)
   (glTexCoord4fv (v const-GLfloat-*) -> void)
   (glTexCoord4dv (v const-GLdouble-*) -> void))
  "Set the current texture coordinates.

S
     T

     R

     Q

     Specify S, T, R, and Q texture coordinates.  Not all parameters are
     present in all forms of the command.

`glTexCoord' specifies texture coordinates in one, two, three, or four
dimensions.  `glTexCoord1' sets the current texture coordinates to
(S,001) ; a call to `glTexCoord2' sets them to (S,T01) .  Similarly,
`glTexCoord3' specifies the texture coordinates as (S,TR1) , and
`glTexCoord4' defines all four components explicitly as (S,TRQ) .

The current texture coordinates are part of the data that is associated
with each vertex and with the current raster position.  Initially, the
values for S, T, R, and Q are (0, 0, 0, 1).")

(define-gl-procedures
  ((glTexEnvf
     (target GLenum)
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glTexEnvi
     (target GLenum)
     (pname GLenum)
     (param GLint)
     ->
     void)
   (glTexEnvfv
     (target GLenum)
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glTexEnviv
     (target GLenum)
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Set texture environment parameters.

TARGET
     Specifies a texture environment.  May be `GL_TEXTURE_ENV',
     `GL_TEXTURE_FILTER_CONTROL' or `GL_POINT_SPRITE'.

PNAME
     Specifies the symbolic name of a single-valued texture environment
     parameter.  May be either `GL_TEXTURE_ENV_MODE',
     `GL_TEXTURE_LOD_BIAS', `GL_COMBINE_RGB', `GL_COMBINE_ALPHA',
     `GL_SRC0_RGB', `GL_SRC1_RGB', `GL_SRC2_RGB', `GL_SRC0_ALPHA',
     `GL_SRC1_ALPHA', `GL_SRC2_ALPHA', `GL_OPERAND0_RGB',
     `GL_OPERAND1_RGB', `GL_OPERAND2_RGB', `GL_OPERAND0_ALPHA',
     `GL_OPERAND1_ALPHA', `GL_OPERAND2_ALPHA', `GL_RGB_SCALE',
     `GL_ALPHA_SCALE', or `GL_COORD_REPLACE'.

PARAM
     Specifies a single symbolic constant, one of `GL_ADD',
     `GL_ADD_SIGNED', `GL_INTERPOLATE', `GL_MODULATE', `GL_DECAL',
     `GL_BLEND', `GL_REPLACE', `GL_SUBTRACT', `GL_COMBINE',
     `GL_TEXTURE', `GL_CONSTANT', `GL_PRIMARY_COLOR', `GL_PREVIOUS',
     `GL_SRC_COLOR', `GL_ONE_MINUS_SRC_COLOR', `GL_SRC_ALPHA',
     `GL_ONE_MINUS_SRC_ALPHA', a single boolean value for the point
     sprite texture coordinate replacement, a single floating-point
     value for the texture level-of-detail bias, or 1.0, 2.0, or 4.0
     when specifying the `GL_RGB_SCALE' or `GL_ALPHA_SCALE'.

A texture environment specifies how texture values are interpreted when
a fragment is textured.  When TARGET is `GL_TEXTURE_FILTER_CONTROL',
PNAME must be `GL_TEXTURE_LOD_BIAS'.  When TARGET is `GL_TEXTURE_ENV',
PNAME can be `GL_TEXTURE_ENV_MODE', `GL_TEXTURE_ENV_COLOR',
`GL_COMBINE_RGB', `GL_COMBINE_ALPHA', `GL_RGB_SCALE', `GL_ALPHA_SCALE',
`GL_SRC0_RGB', `GL_SRC1_RGB', `GL_SRC2_RGB', `GL_SRC0_ALPHA',
`GL_SRC1_ALPHA', or `GL_SRC2_ALPHA'.

If PNAME is `GL_TEXTURE_ENV_MODE', then PARAMS is (or points to) the
symbolic name of a texture function.  Six texture functions may be
specified: `GL_ADD', `GL_MODULATE', `GL_DECAL', `GL_BLEND',
`GL_REPLACE', or `GL_COMBINE'.

The following table shows the correspondence of filtered texture values
R_T , G_T , B_T , A_T , L_T , I_T to texture source components.  C_S and
A_S are used by the texture functions described below.



Texture Base Internal Format
     `C'_S , `A'_S

`GL_ALPHA'
     (0, 0, 0) , A_T

`GL_LUMINANCE'
     ( L_T , L_T , L_T ) , 1

`GL_LUMINANCE_ALPHA'
     ( L_T , L_T , L_T ) , A_T

`GL_INTENSITY'
     ( I_T , I_T , I_T ) , I_T

`GL_RGB'
     ( R_T , G_T , B_T ) , 1

`GL_RGBA'
     ( R_T , G_T , B_T ) , A_T

A texture function acts on the fragment to be textured using the texture
image value that applies to the fragment (see `glTexParameter') and
produces an RGBA color for that fragment.  The following table shows how
the RGBA color is produced for each of the first five texture functions
that can be chosen.  C is a triple of color values (RGB) and A is the
associated alpha value.  RGBA values extracted from a texture image are
in the range [0,1].  The subscript P refers to the color computed from
the previous texture stage (or the incoming fragment if processing
texture stage 0), the subscript S to the texture source color, the
subscript C to the texture environment color, and the subscript V
indicates a value produced by the texture function.



Texture Base Internal Format
     `Value', `GL_REPLACE' Function , `GL_MODULATE' Function ,
     `GL_DECAL' Function , `GL_BLEND' Function , `GL_ADD' Function

`GL_ALPHA'
     C_V= , C_P , C_P , undefined , C_P , C_P

.
     A_V= , A_S , A_P\u2062A_S , , A_V=A_P\u2062A_S , A_P\u2062A_S

`GL_LUMINANCE'
     C_V= , C_S , C_P\u2062C_S , undefined , C_P\u2062(1-C_S,)+C_C\u2062C_S , C_P+C_S

(or 1)
     A_V= , A_P , A_P , , A_P , A_P

`GL_LUMINANCE_ALPHA'
     C_V= , C_S , C_P\u2062C_S , undefined , C_P\u2062(1-C_S,)+C_C\u2062C_S , C_P+C_S

(or 2)
     A_V= , A_S , A_P\u2062A_S , , A_P\u2062A_S , A_P\u2062A_S

`GL_INTENSITY'
     C_V= , C_S , C_P\u2062C_S , undefined , C_P\u2062(1-C_S,)+C_C\u2062C_S , C_P+C_S

.
     A_V= , A_S , A_P\u2062A_S , , A_P\u2062(1-A_S,)+A_C\u2062A_S , A_P+A_S

`GL_RGB'
     C_V= , C_S , C_P\u2062C_S , C_S , C_P\u2062(1-C_S,)+C_C\u2062C_S , C_P+C_S

(or 3)
     A_V= , A_P , A_P , A_P , A_P , A_P

`GL_RGBA'
     C_V= , C_S , C_P\u2062C_S , C_P\u2062(1-A_S,)+C_S\u2062A_S , C_P\u2062(1-C_S,)+C_C\u2062C_S
     , C_P+C_S

(or 4)
     A_V= , A_S , A_P\u2062A_S , A_P , A_P\u2062A_S , A_P\u2062A_S

If PNAME is `GL_TEXTURE_ENV_MODE', and PARAMS is `GL_COMBINE', the form
of the texture function depends on the values of `GL_COMBINE_RGB' and
`GL_COMBINE_ALPHA'.

The following describes how the texture sources, as specified by
`GL_SRC0_RGB', `GL_SRC1_RGB', `GL_SRC2_RGB', `GL_SRC0_ALPHA',
`GL_SRC1_ALPHA', and `GL_SRC2_ALPHA', are combined to produce a final
texture color.  In the following tables, `GL_SRC0_c' is represented by
ARG0 , `GL_SRC1_c' is represented by ARG1 , and `GL_SRC2_c' is
represented by ARG2 .

`GL_COMBINE_RGB' accepts any of `GL_REPLACE', `GL_MODULATE', `GL_ADD',
`GL_ADD_SIGNED', `GL_INTERPOLATE', `GL_SUBTRACT', `GL_DOT3_RGB', or
`GL_DOT3_RGBA'.



*`GL_COMBINE_RGB'*
     *Texture Function*

`GL_REPLACE'
     ARG0

`GL_MODULATE'
     ARG0×ARG1

`GL_ADD'
     ARG0+ARG1

`GL_ADD_SIGNED'
     ARG0+ARG1-0.5

`GL_INTERPOLATE'
     ARG0×ARG2+ARG1×(1-ARG2,)

`GL_SUBTRACT'
     ARG0-ARG1

`GL_DOT3_RGB' or `GL_DOT3_RGBA'
     4×(((ARG0_R,-0.5,)×(ARG1_R,-0.5,),)+((ARG0_G,-0.5,)×(ARG1_G,-0.5,),
     )+((ARG0_B,-0.5,)×(ARG1_B,-0.5,),),)

The scalar results for `GL_DOT3_RGB' and `GL_DOT3_RGBA' are placed into
each of the 3 (RGB) or 4 (RGBA) components on output.

Likewise, `GL_COMBINE_ALPHA' accepts any of `GL_REPLACE', `GL_MODULATE',
`GL_ADD', `GL_ADD_SIGNED', `GL_INTERPOLATE', or `GL_SUBTRACT'.  The
following table describes how alpha values are combined:



*`GL_COMBINE_ALPHA'*
     *Texture Function*

`GL_REPLACE'
     ARG0

`GL_MODULATE'
     ARG0×ARG1

`GL_ADD'
     ARG0+ARG1

`GL_ADD_SIGNED'
     ARG0+ARG1-0.5

`GL_INTERPOLATE'
     ARG0×ARG2+ARG1×(1-ARG2,)

`GL_SUBTRACT'
     ARG0-ARG1

In the following tables, the value C_S represents the color sampled from
the currently bound texture, C_C represents the constant
texture-environment color, C_F represents the primary color of the
incoming fragment, and C_P represents the color computed from the
previous texture stage or C_F if processing texture stage 0.  Likewise,
A_S , A_C , A_F , and A_P represent the respective alpha values.

The following table describes the values assigned to ARG0 , ARG1 , and
ARG2 based upon the RGB sources and operands:



*`GL_SRCn_RGB'*
     *`GL_OPERANDn_RGB'*, *Argument Value*

`GL_TEXTURE'
     `GL_SRC_COLOR', C_S,

.
     `GL_ONE_MINUS_SRC_COLOR', 1-C_S,

.
     `GL_SRC_ALPHA', A_S,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_S,

`GL_TEXTUREn'
     `GL_SRC_COLOR', C_S,

.
     `GL_ONE_MINUS_SRC_COLOR', 1-C_S,

.
     `GL_SRC_ALPHA', A_S,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_S,

`GL_CONSTANT'
     `GL_SRC_COLOR', C_C,

.
     `GL_ONE_MINUS_SRC_COLOR', 1-C_C,

.
     `GL_SRC_ALPHA', A_C,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_C,

`GL_PRIMARY_COLOR'
     `GL_SRC_COLOR', C_F,

.
     `GL_ONE_MINUS_SRC_COLOR', 1-C_F,

.
     `GL_SRC_ALPHA', A_F,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_F,

`GL_PREVIOUS'
     `GL_SRC_COLOR', C_P,

.
     `GL_ONE_MINUS_SRC_COLOR', 1-C_P,

.
     `GL_SRC_ALPHA', A_P,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_P,

For `GL_TEXTUREn' sources, C_S and A_S represent the color and alpha,
respectively, produced from texture stage N .

The follow table describes the values assigned to ARG0 , ARG1 , and ARG2
based upon the alpha sources and operands:



*`GL_SRCn_ALPHA'*
     *`GL_OPERANDn_ALPHA'*, *Argument Value*

`GL_TEXTURE'
     `GL_SRC_ALPHA', A_S,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_S,

`GL_TEXTUREn'
     `GL_SRC_ALPHA', A_S,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_S,

`GL_CONSTANT'
     `GL_SRC_ALPHA', A_C,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_C,

`GL_PRIMARY_COLOR'
     `GL_SRC_ALPHA', A_F,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_F,

`GL_PREVIOUS'
     `GL_SRC_ALPHA', A_P,

.
     `GL_ONE_MINUS_SRC_ALPHA', 1-A_P,

The RGB and alpha results of the texture function are multipled by the
values of `GL_RGB_SCALE' and `GL_ALPHA_SCALE', respectively, and clamped
to the range [0,1] .

If PNAME is `GL_TEXTURE_ENV_COLOR', PARAMS is a pointer to an array that
holds an RGBA color consisting of four values.  Integer color components
are interpreted linearly such that the most positive integer maps to
1.0, and the most negative integer maps to -1.0.  The values are clamped
to the range [0,1] when they are specified.  C_C takes these four
values.

If PNAME is `GL_TEXTURE_LOD_BIAS', the value specified is added to the
texture level-of-detail parameter, that selects which mipmap, or mipmaps
depending upon the selected `GL_TEXTURE_MIN_FILTER', will be sampled.

`GL_TEXTURE_ENV_MODE' defaults to `GL_MODULATE' and
`GL_TEXTURE_ENV_COLOR' defaults to (0, 0, 0, 0).

If TARGET is `GL_POINT_SPRITE' and PNAME is `GL_COORD_REPLACE', the
boolean value specified is used to either enable or disable point sprite
texture coordinate replacement.  The default value is `GL_FALSE'.

`GL_INVALID_ENUM' is generated when TARGET or PNAME is not one of the
accepted defined values, or when PARAMS should have a defined constant
value (based on the value of PNAME) and does not.

`GL_INVALID_VALUE' is generated if the PARAMS value for `GL_RGB_SCALE'
or `GL_ALPHA_SCALE' are not one of 1.0, 2.0, or 4.0.

`GL_INVALID_OPERATION' is generated if `glTexEnv' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glTexGeni
     (coord GLenum)
     (pname GLenum)
     (param GLint)
     ->
     void)
   (glTexGenf
     (coord GLenum)
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glTexGend
     (coord GLenum)
     (pname GLenum)
     (param GLdouble)
     ->
     void)
   (glTexGeniv
     (coord GLenum)
     (pname GLenum)
     (params const-GLint-*)
     ->
     void)
   (glTexGenfv
     (coord GLenum)
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glTexGendv
     (coord GLenum)
     (pname GLenum)
     (params const-GLdouble-*)
     ->
     void))
  "Control the generation of texture coordinates.

COORD
     Specifies a texture coordinate.  Must be one of `GL_S', `GL_T',
     `GL_R', or `GL_Q'.

PNAME
     Specifies the symbolic name of the texture-coordinate generation
     function.  Must be `GL_TEXTURE_GEN_MODE'.

PARAM
     Specifies a single-valued texture generation parameter, one of
     `GL_OBJECT_LINEAR', `GL_EYE_LINEAR', `GL_SPHERE_MAP',
     `GL_NORMAL_MAP', or `GL_REFLECTION_MAP'.

`glTexGen' selects a texture-coordinate generation function or supplies
coefficients for one of the functions.  COORD names one of the (S, T, R,
Q) texture coordinates; it must be one of the symbols `GL_S', `GL_T',
`GL_R', or `GL_Q'.  PNAME must be one of three symbolic constants:
`GL_TEXTURE_GEN_MODE', `GL_OBJECT_PLANE', or `GL_EYE_PLANE'.  If PNAME
is `GL_TEXTURE_GEN_MODE', then PARAMS chooses a mode, one of
`GL_OBJECT_LINEAR', `GL_EYE_LINEAR', `GL_SPHERE_MAP', `GL_NORMAL_MAP',
or `GL_REFLECTION_MAP'.  If PNAME is either `GL_OBJECT_PLANE' or
`GL_EYE_PLANE', PARAMS contains coefficients for the corresponding
texture generation function.

If the texture generation function is `GL_OBJECT_LINEAR', the function

G=P_1×X_O+P_2×Y_O+P_3×Z_O+P_4×W_O

is used, where G is the value computed for the coordinate named in
COORD, P_1 , P_2 , P_3 , and P_4 are the four values supplied in PARAMS,
and X_O , Y_O , Z_O , and W_O are the object coordinates of the vertex.
This function can be used, for example, to texture-map terrain using sea
level as a reference plane (defined by P_1 , P_2 , P_3 , and P_4 ).  The
altitude of a terrain vertex is computed by the `GL_OBJECT_LINEAR'
coordinate generation function as its distance from sea level; that
altitude can then be used to index the texture image to map white snow
onto peaks and green grass onto foothills.

If the texture generation function is `GL_EYE_LINEAR', the function

G=P_1,^″×X_E+P_2,^″×Y_E+P_3,^″×Z_E+P_4,^″×W_E

is used, where

(P_1,^″\u2062P_2,^″\u2062P_3,^″\u2062P_4,^″,)=(P_1\u2062P_2\u2062P_3\u2062P_4,)\u2062M^-1

and X_E , Y_E , Z_E , and W_E are the eye coordinates of the vertex, P_1
, P_2 , P_3 , and P_4 are the values supplied in PARAMS, and M is the
modelview matrix when `glTexGen' is invoked.  If M is poorly conditioned
or singular, texture coordinates generated by the resulting function may
be inaccurate or undefined.

Note that the values in PARAMS define a reference plane in eye
coordinates.  The modelview matrix that is applied to them may not be
the same one in effect when the polygon vertices are transformed.  This
function establishes a field of texture coordinates that can produce
dynamic contour lines on moving objects.

If the texture generation function is `GL_SPHERE_MAP' and COORD is
either `GL_S' or `GL_T', S and T texture coordinates are generated as
follows.  Let U be the unit vector pointing from the origin to the
polygon vertex (in eye coordinates).  Let N sup prime be the current
normal, after transformation to eye coordinates.  Let

F=(F_X\u2062F_Y\u2062F_Z,)^T be the reflection vector such that

F=U-2\u2062N^″\u2062N^″,^T\u2062U

Finally, let M=2\u2062√(F_X,^2+F_Y,^2+(F_Z+1,)^2,) .  Then the values
assigned to the S and T texture coordinates are

S=F_X/M+1/2

T=F_Y/M+1/2

To enable or disable a texture-coordinate generation function, call
`glEnable' or `glDisable' with one of the symbolic texture-coordinate
names (`GL_TEXTURE_GEN_S', `GL_TEXTURE_GEN_T', `GL_TEXTURE_GEN_R', or
`GL_TEXTURE_GEN_Q') as the argument.  When enabled, the specified
texture coordinate is computed according to the generating function
associated with that coordinate.  When disabled, subsequent vertices
take the specified texture coordinate from the current set of texture
coordinates.  Initially, all texture generation functions are set to
`GL_EYE_LINEAR' and are disabled.  Both S plane equations are (1, 0, 0,
0), both T plane equations are (0, 1, 0, 0), and all R and Q plane
equations are (0, 0, 0, 0).

When the `ARB_multitexture' extension is supported, `glTexGen' sets the
texture generation parameters for the currently active texture unit,
selected with `glActiveTexture'.

`GL_INVALID_ENUM' is generated when COORD or PNAME is not an accepted
defined value, or when PNAME is `GL_TEXTURE_GEN_MODE' and PARAMS is not
an accepted defined value.

`GL_INVALID_ENUM' is generated when PNAME is `GL_TEXTURE_GEN_MODE',
PARAMS is `GL_SPHERE_MAP', and COORD is either `GL_R' or `GL_Q'.

`GL_INVALID_OPERATION' is generated if `glTexGen' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glTexImage1D
     (target GLenum)
     (level GLint)
     (internalFormat GLint)
     (width GLsizei)
     (border GLint)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a one-dimensional texture image.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_1D' or
     `GL_PROXY_TEXTURE_1D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

INTERNALFORMAT
     Specifies the number of color components in the texture.  Must be
     1, 2, 3, or 4, or one of the following symbolic constants:
     `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8', `GL_ALPHA12', `GL_ALPHA16',
     `GL_COMPRESSED_ALPHA', `GL_COMPRESSED_LUMINANCE',
     `GL_COMPRESSED_LUMINANCE_ALPHA', `GL_COMPRESSED_INTENSITY',
     `GL_COMPRESSED_RGB', `GL_COMPRESSED_RGBA', `GL_DEPTH_COMPONENT',
     `GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24',
     `GL_DEPTH_COMPONENT32', `GL_LUMINANCE', `GL_LUMINANCE4',
     `GL_LUMINANCE8', `GL_LUMINANCE12', `GL_LUMINANCE16',
     `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', `GL_RGBA16',
     `GL_SLUMINANCE', `GL_SLUMINANCE8', `GL_SLUMINANCE_ALPHA',
     `GL_SLUMINANCE8_ALPHA8', `GL_SRGB', `GL_SRGB8', `GL_SRGB_ALPHA', or
     `GL_SRGB8_ALPHA8'.

WIDTH
     Specifies the width of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support texture images that are at least 64 texels
     wide.  The height of the 1D texture image is 1.

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are accepted: `GL_COLOR_INDEX', `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type of the pixel data.  The following symbolic
     values are accepted: `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP',
     `GL_UNSIGNED_SHORT', `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT',
     `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable one-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_1D'.

Texture images are defined with `glTexImage1D'.  The arguments describe
the parameters of the texture image, such as width, width of the border,
level-of-detail number (see `glTexParameter'), and the internal
resolution and format used to store the image.  The last three arguments
describe how the image is represented in memory; they are identical to
the pixel formats used for `glDrawPixels'.

If TARGET is `GL_PROXY_TEXTURE_1D', no data is read from DATA, but all
of the texture image state is recalculated, checked for consistency, and
checked against the implementation's capabilities.  If the
implementation cannot handle a texture of the requested texture size, it
sets all of the image state to 0, but does not generate an error (see
`glGetError').  To query for an entire mipmap array, use an image array
level greater than or equal to 1.

If TARGET is `GL_TEXTURE_1D', data is read from DATA as a sequence of
signed or unsigned bytes, shorts, or longs, or single-precision
floating-point values, depending on TYPE.  These values are grouped into
sets of one, two, three, or four values, depending on FORMAT, to form
elements.  If TYPE is `GL_BITMAP', the data is considered as a string of
unsigned bytes (and FORMAT must be `GL_COLOR_INDEX').  Each data byte is
treated as eight 1-bit elements, with bit ordering determined by
`GL_UNPACK_LSB_FIRST' (see `glPixelStore').

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

The first element corresponds to the left end of the texture array.
Subsequent elements progress left-to-right through the remaining texels
in the texture array.  The final element corresponds to the right end of
the texture array.

FORMAT determines the composition of each element in DATA.  It can
assume one of these symbolic values:

`GL_COLOR_INDEX'
     Each element is a single value, a color index.  The GL converts it
     to fixed point (with an unspecified number of zero bits to the
     right of the binary point), shifted left or right depending on the
     value and sign of `GL_INDEX_SHIFT', and added to `GL_INDEX_OFFSET'
     (see `glPixelTransfer').  The resulting index is converted to a set
     of color components using the `GL_PIXEL_MAP_I_TO_R',
     `GL_PIXEL_MAP_I_TO_G', `GL_PIXEL_MAP_I_TO_B', and
     `GL_PIXEL_MAP_I_TO_A' tables, and clamped to the range [0,1].

`GL_RED'
     Each element is a single red component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for green and blue, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_GREEN'
     Each element is a single green component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red and blue, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_BLUE'
     Each element is a single blue component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red and green, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_ALPHA'
     Each element is a single alpha component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red, green, and blue.  Each component is then multiplied by the
     signed scale factor `GL_c_SCALE', added to the signed bias
     `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_INTENSITY'
     Each element is a single intensity value.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the intensity value three times for red, green, blue,
     and alpha.  Each component is then multiplied by the signed scale
     factor `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and
     clamped to the range [0,1] (see `glPixelTransfer').

`GL_RGB'
`GL_BGR'
     Each element is an RGB triple.  The GL converts it to floating
     point and assembles it into an RGBA element by attaching 1 for
     alpha.  Each component is then multiplied by the signed scale
     factor `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and
     clamped to the range [0,1] (see `glPixelTransfer').

`GL_RGBA'
`GL_BGRA'
     Each element contains all four components.  Each component is
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_LUMINANCE'
     Each element is a single luminance value.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the luminance value three times for red, green, and
     blue and attaching 1 for alpha.  Each component is then multiplied
     by the signed scale factor `GL_c_SCALE', added to the signed bias
     `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_LUMINANCE_ALPHA'
     Each element is a luminance/alpha pair.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the luminance value three times for red, green, and
     blue.  Each component is then multiplied by the signed scale factor
     `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and clamped to
     the range [0,1] (see `glPixelTransfer').

`GL_DEPTH_COMPONENT'
     Each element is a single depth value.  The GL converts it to
     floating point, multiplies by the signed scale factor
     `GL_DEPTH_SCALE', adds the signed bias `GL_DEPTH_BIAS', and clamps
     to the range [0,1] (see `glPixelTransfer').

Refer to the `glDrawPixels' reference page for a description of the
acceptable values for the TYPE parameter.

If an application wants to store the texture at a certain resolution or
in a certain format, it can request the resolution and format with
INTERNALFORMAT.  The GL will choose an internal representation that
closely approximates that requested by INTERNALFORMAT, but it may not
match exactly.  (The representations specified by `GL_LUMINANCE',
`GL_LUMINANCE_ALPHA', `GL_RGB', and `GL_RGBA' must match exactly.  The
numeric values 1, 2, 3, and 4 may also be used to specify the above
representations.)

If the INTERNALFORMAT parameter is one of the generic compressed
formats, `GL_COMPRESSED_ALPHA', `GL_COMPRESSED_INTENSITY',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_RGB', or `GL_COMPRESSED_RGBA', the GL will replace the
internal format with the symbolic constant for a specific internal
format and compress the texture before storage.  If no corresponding
internal format is available, or the GL can not compress that image for
any reason, the internal format is instead replaced with a corresponding
base internal format.

If the INTERNALFORMAT parameter is `GL_SRGB', `GL_SRGB8',
`GL_SRGB_ALPHA', `GL_SRGB8_ALPHA8', `GL_SLUMINANCE', `GL_SLUMINANCE8',
`GL_SLUMINANCE_ALPHA', or `GL_SLUMINANCE8_ALPHA8', the texture is
treated as if the red, green, blue, or luminance components are encoded
in the sRGB color space.  Any alpha component is left unchanged.  The
conversion from the sRGB encoded component C_S to a linear component C_L
is:

C_L={(C_S/12.92 if C_S≤0.04045), ((`c'_`s'+0.055/1.055)^2.4 if
C_S>0.04045)

Assume C_S is the sRGB component in the range [0,1].

Use the `GL_PROXY_TEXTURE_1D' target to try out a resolution and format.
The implementation will update and recompute its best match for the
requested storage resolution and format.  To then query this state, call
`glGetTexLevelParameter'.  If the texture cannot be accommodated,
texture state is set to 0.

A one-component texture image uses only the red component of the RGBA
color from DATA.  A two-component image uses the R and A values.  A
three-component image uses the R, G, and B values.  A four-component
image uses all of the RGBA components.

Depth textures can be treated as LUMINANCE, INTENSITY or ALPHA textures
during texture filtering and application. \xa0Image-based shadowing\xa0can\xa0be
\xa0enabled\xa0by\xa0comparing texture r coordinates to depth texture values to
generate a boolean result.  See `glTexParameter' for details on texture
comparison.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_TEXTURE_1D' or
`GL_PROXY_TEXTURE_1D'.

`GL_INVALID_ENUM' is generated if FORMAT is not an accepted format
constant.  Format constants other than `GL_STENCIL_INDEX' are accepted.

`GL_INVALID_ENUM' is generated if TYPE is not a type constant.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
`GL_COLOR_INDEX'.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than
LOG_2\u2061(MAX,) , where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if INTERNALFORMAT is not 1, 2, 3, 4, or
one of the accepted resolution and format symbolic constants.

`GL_INVALID_VALUE' is generated if WIDTH is less than 0 or greater than
2 + `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if non-power-of-two textures are not
supported and the WIDTH cannot be represented as 2^N+2\u2061(BORDER,) for
some integer value of N.

`GL_INVALID_VALUE' is generated if BORDER is not 0 or 1.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if FORMAT is `GL_DEPTH_COMPONENT'
and INTERNALFORMAT is not `GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16',
`GL_DEPTH_COMPONENT24', or `GL_DEPTH_COMPONENT32'.

`GL_INVALID_OPERATION' is generated if INTERNALFORMAT is
`GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24', or
`GL_DEPTH_COMPONENT32', and FORMAT is not `GL_DEPTH_COMPONENT'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glTexImage1D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glTexImage2D
     (target GLenum)
     (level GLint)
     (internalFormat GLint)
     (width GLsizei)
     (height GLsizei)
     (border GLint)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a two-dimensional texture image.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_2D',
     `GL_PROXY_TEXTURE_2D', `GL_TEXTURE_CUBE_MAP_POSITIVE_X',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_X', `GL_TEXTURE_CUBE_MAP_POSITIVE_Y',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y', `GL_TEXTURE_CUBE_MAP_POSITIVE_Z',
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z', or `GL_PROXY_TEXTURE_CUBE_MAP'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

INTERNALFORMAT
     Specifies the number of color components in the texture.  Must be
     1, 2, 3, or 4, or one of the following symbolic constants:
     `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8', `GL_ALPHA12', `GL_ALPHA16',
     `GL_COMPRESSED_ALPHA', `GL_COMPRESSED_LUMINANCE',
     `GL_COMPRESSED_LUMINANCE_ALPHA', `GL_COMPRESSED_INTENSITY',
     `GL_COMPRESSED_RGB', `GL_COMPRESSED_RGBA', `GL_DEPTH_COMPONENT',
     `GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24',
     `GL_DEPTH_COMPONENT32', `GL_LUMINANCE', `GL_LUMINANCE4',
     `GL_LUMINANCE8', `GL_LUMINANCE12', `GL_LUMINANCE16',
     `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', `GL_RGBA16',
     `GL_SLUMINANCE', `GL_SLUMINANCE8', `GL_SLUMINANCE_ALPHA',
     `GL_SLUMINANCE8_ALPHA8', `GL_SRGB', `GL_SRGB8', `GL_SRGB_ALPHA', or
     `GL_SRGB8_ALPHA8'.

WIDTH
     Specifies the width of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support texture images that are at least 64 texels
     wide.

HEIGHT
     Specifies the height of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^M+2\u2061(BORDER,) for some integer M .  All
     implementations support texture images that are at least 64 texels
     high.

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are accepted: `GL_COLOR_INDEX', `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type of the pixel data.  The following symbolic
     values are accepted: `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP',
     `GL_UNSIGNED_SHORT', `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT',
     `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable two-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_2D'.  To enable and disable texturing using
cube-mapped texture, call `glEnable' and `glDisable' with argument
`GL_TEXTURE_CUBE_MAP'.

To define texture images, call `glTexImage2D'.  The arguments describe
the parameters of the texture image, such as height, width, width of the
border, level-of-detail number (see `glTexParameter'), and number of
color components provided.  The last three arguments describe how the
image is represented in memory; they are identical to the pixel formats
used for `glDrawPixels'.

If TARGET is `GL_PROXY_TEXTURE_2D' or `GL_PROXY_TEXTURE_CUBE_MAP', no
data is read from DATA, but all of the texture image state is
recalculated, checked for consistency, and checked against the
implementation's capabilities.  If the implementation cannot handle a
texture of the requested texture size, it sets all of the image state to
0, but does not generate an error (see `glGetError').  To query for an
entire mipmap array, use an image array level greater than or equal to
1.

If TARGET is `GL_TEXTURE_2D', or one of the `GL_TEXTURE_CUBE_MAP'
targets, data is read from DATA as a sequence of signed or unsigned
bytes, shorts, or longs, or single-precision floating-point values,
depending on TYPE.  These values are grouped into sets of one, two,
three, or four values, depending on FORMAT, to form elements.  If TYPE
is `GL_BITMAP', the data is considered as a string of unsigned bytes
(and FORMAT must be `GL_COLOR_INDEX').  Each data byte is treated as
eight 1-bit elements, with bit ordering determined by
`GL_UNPACK_LSB_FIRST' (see `glPixelStore').

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

The first element corresponds to the lower left corner of the texture
image.  Subsequent elements progress left-to-right through the remaining
texels in the lowest row of the texture image, and then in successively
higher rows of the texture image.  The final element corresponds to the
upper right corner of the texture image.

FORMAT determines the composition of each element in DATA.  It can
assume one of these symbolic values:

`GL_COLOR_INDEX'
     Each element is a single value, a color index.  The GL converts it
     to fixed point (with an unspecified number of zero bits to the
     right of the binary point), shifted left or right depending on the
     value and sign of `GL_INDEX_SHIFT', and added to `GL_INDEX_OFFSET'
     (see `glPixelTransfer').  The resulting index is converted to a set
     of color components using the `GL_PIXEL_MAP_I_TO_R',
     `GL_PIXEL_MAP_I_TO_G', `GL_PIXEL_MAP_I_TO_B', and
     `GL_PIXEL_MAP_I_TO_A' tables, and clamped to the range [0,1].

`GL_RED'
     Each element is a single red component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for green and blue, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_GREEN'
     Each element is a single green component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red and blue, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_BLUE'
     Each element is a single blue component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red and green, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_ALPHA'
     Each element is a single alpha component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red, green, and blue.  Each component is then multiplied by the
     signed scale factor `GL_c_SCALE', added to the signed bias
     `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_INTENSITY'
     Each element is a single intensity value.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the intensity value three times for red, green, blue,
     and alpha.  Each component is then multiplied by the signed scale
     factor `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and
     clamped to the range [0,1] (see `glPixelTransfer').

`GL_RGB'
`GL_BGR'
     Each element is an RGB triple.  The GL converts it to floating
     point and assembles it into an RGBA element by attaching 1 for
     alpha.  Each component is then multiplied by the signed scale
     factor `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and
     clamped to the range [0,1] (see `glPixelTransfer').

`GL_RGBA'
`GL_BGRA'
     Each element contains all four components.  Each component is
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_LUMINANCE'
     Each element is a single luminance value.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the luminance value three times for red, green, and
     blue and attaching 1 for alpha.  Each component is then multiplied
     by the signed scale factor `GL_c_SCALE', added to the signed bias
     `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_LUMINANCE_ALPHA'
     Each element is a luminance/alpha pair.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the luminance value three times for red, green, and
     blue.  Each component is then multiplied by the signed scale factor
     `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and clamped to
     the range [0,1] (see `glPixelTransfer').

`GL_DEPTH_COMPONENT'
     Each element is a single depth value.  The GL converts it to
     floating point, multiplies by the signed scale factor
     `GL_DEPTH_SCALE', adds the signed bias `GL_DEPTH_BIAS', and clamps
     to the range [0,1] (see `glPixelTransfer').

Refer to the `glDrawPixels' reference page for a description of the
acceptable values for the TYPE parameter.

If an application wants to store the texture at a certain resolution or
in a certain format, it can request the resolution and format with
INTERNALFORMAT.  The GL will choose an internal representation that
closely approximates that requested by INTERNALFORMAT, but it may not
match exactly.  (The representations specified by `GL_LUMINANCE',
`GL_LUMINANCE_ALPHA', `GL_RGB', and `GL_RGBA' must match exactly.  The
numeric values 1, 2, 3, and 4 may also be used to specify the above
representations.)

If the INTERNALFORMAT parameter is one of the generic compressed
formats, `GL_COMPRESSED_ALPHA', `GL_COMPRESSED_INTENSITY',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_RGB', or `GL_COMPRESSED_RGBA', the GL will replace the
internal format with the symbolic constant for a specific internal
format and compress the texture before storage.  If no corresponding
internal format is available, or the GL can not compress that image for
any reason, the internal format is instead replaced with a corresponding
base internal format.

If the INTERNALFORMAT parameter is `GL_SRGB', `GL_SRGB8',
`GL_SRGB_ALPHA', `GL_SRGB8_ALPHA8', `GL_SLUMINANCE', `GL_SLUMINANCE8',
`GL_SLUMINANCE_ALPHA', or `GL_SLUMINANCE8_ALPHA8', the texture is
treated as if the red, green, blue, or luminance components are encoded
in the sRGB color space.  Any alpha component is left unchanged.  The
conversion from the sRGB encoded component C_S to a linear component C_L
is:

C_L={(C_S/12.92 if C_S≤0.04045), ((`c'_`s'+0.055/1.055)^2.4 if
C_S>0.04045)

Assume C_S is the sRGB component in the range [0,1].

Use the `GL_PROXY_TEXTURE_2D' or `GL_PROXY_TEXTURE_CUBE_MAP' target to
try out a resolution and format.  The implementation will update and
recompute its best match for the requested storage resolution and
format.  To then query this state, call `glGetTexLevelParameter'.  If
the texture cannot be accommodated, texture state is set to 0.

A one-component texture image uses only the red component of the RGBA
color extracted from DATA.  A two-component image uses the R and A
values.  A three-component image uses the R, G, and B values.  A
four-component image uses all of the RGBA components.

Depth textures can be treated as LUMINANCE, INTENSITY or ALPHA textures
during texture filtering and application. \xa0Image-based shadowing\xa0can\xa0be
\xa0enabled\xa0by\xa0comparing texture r coordinates to depth texture values to
generate a boolean result.  See `glTexParameter' for details on texture
comparison.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_TEXTURE_2D',
`GL_PROXY_TEXTURE_2D', `GL_PROXY_TEXTURE_CUBE_MAP',
`GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

`GL_INVALID_ENUM' is generated if TARGET is one of the six cube map 2D
image targets and the width and height parameters are not equal.

`GL_INVALID_ENUM' is generated if TYPE is not a type constant.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
`GL_COLOR_INDEX'.

`GL_INVALID_VALUE' is generated if WIDTH or HEIGHT is less than 0 or
greater than 2 + `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than
LOG_2\u2061(MAX,) , where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if INTERNALFORMAT is not 1, 2, 3, 4, or
one of the accepted resolution and format symbolic constants.

`GL_INVALID_VALUE' is generated if WIDTH or HEIGHT is less than 0 or
greater than 2 + `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if non-power-of-two textures are not
supported and the WIDTH or HEIGHT cannot be represented as
2^K+2\u2061(BORDER,) for some integer value of K.

`GL_INVALID_VALUE' is generated if BORDER is not 0 or 1.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if TARGET is not `GL_TEXTURE_2D' or
`GL_PROXY_TEXTURE_2D' and INTERNALFORMAT is `GL_DEPTH_COMPONENT',
`GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24', or
`GL_DEPTH_COMPONENT32'.

`GL_INVALID_OPERATION' is generated if FORMAT is `GL_DEPTH_COMPONENT'
and INTERNALFORMAT is not `GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16',
`GL_DEPTH_COMPONENT24', or `GL_DEPTH_COMPONENT32'.

`GL_INVALID_OPERATION' is generated if INTERNALFORMAT is
`GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24', or
`GL_DEPTH_COMPONENT32', and FORMAT is not `GL_DEPTH_COMPONENT'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glTexImage2D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glTexImage3D
     (target GLenum)
     (level GLint)
     (internalFormat GLint)
     (width GLsizei)
     (height GLsizei)
     (depth GLsizei)
     (border GLint)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a three-dimensional texture image.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_3D' or
     `GL_PROXY_TEXTURE_3D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the N^TH mipmap reduction image.

INTERNALFORMAT
     Specifies the number of color components in the texture.  Must be
     1, 2, 3, or 4, or one of the following symbolic constants:
     `GL_ALPHA', `GL_ALPHA4', `GL_ALPHA8', `GL_ALPHA12', `GL_ALPHA16',
     `GL_COMPRESSED_ALPHA', `GL_COMPRESSED_LUMINANCE',
     `GL_COMPRESSED_LUMINANCE_ALPHA', `GL_COMPRESSED_INTENSITY',
     `GL_COMPRESSED_RGB', `GL_COMPRESSED_RGBA', `GL_LUMINANCE',
     `GL_LUMINANCE4', `GL_LUMINANCE8', `GL_LUMINANCE12',
     `GL_LUMINANCE16', `GL_LUMINANCE_ALPHA', `GL_LUMINANCE4_ALPHA4',
     `GL_LUMINANCE6_ALPHA2', `GL_LUMINANCE8_ALPHA8',
     `GL_LUMINANCE12_ALPHA4', `GL_LUMINANCE12_ALPHA12',
     `GL_LUMINANCE16_ALPHA16', `GL_INTENSITY', `GL_INTENSITY4',
     `GL_INTENSITY8', `GL_INTENSITY12', `GL_INTENSITY16', `GL_R3_G3_B2',
     `GL_RGB', `GL_RGB4', `GL_RGB5', `GL_RGB8', `GL_RGB10', `GL_RGB12',
     `GL_RGB16', `GL_RGBA', `GL_RGBA2', `GL_RGBA4', `GL_RGB5_A1',
     `GL_RGBA8', `GL_RGB10_A2', `GL_RGBA12', `GL_RGBA16',
     `GL_SLUMINANCE', `GL_SLUMINANCE8', `GL_SLUMINANCE_ALPHA',
     `GL_SLUMINANCE8_ALPHA8', `GL_SRGB', `GL_SRGB8', `GL_SRGB_ALPHA', or
     `GL_SRGB8_ALPHA8'.

WIDTH
     Specifies the width of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^N+2\u2061(BORDER,) for some integer N .  All
     implementations support 3D texture images that are at least 16
     texels wide.

HEIGHT
     Specifies the height of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^M+2\u2061(BORDER,) for some integer M .  All
     implementations support 3D texture images that are at least 16
     texels high.

DEPTH
     Specifies the depth of the texture image including the border if
     any.  If the GL version does not support non-power-of-two sizes,
     this value must be 2^K+2\u2061(BORDER,) for some integer K .  All
     implementations support 3D texture images that are at least 16
     texels deep.

BORDER
     Specifies the width of the border.  Must be either 0 or 1.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are accepted: `GL_COLOR_INDEX', `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type of the pixel data.  The following symbolic
     values are accepted: `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP',
     `GL_UNSIGNED_SHORT', `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT',
     `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable three-dimensional texturing, call `glEnable' and `glDisable'
with argument `GL_TEXTURE_3D'.

To define texture images, call `glTexImage3D'.  The arguments describe
the parameters of the texture image, such as height, width, depth, width
of the border, level-of-detail number (see `glTexParameter'), and number
of color components provided.  The last three arguments describe how the
image is represented in memory; they are identical to the pixel formats
used for `glDrawPixels'.

If TARGET is `GL_PROXY_TEXTURE_3D', no data is read from DATA, but all
of the texture image state is recalculated, checked for consistency, and
checked against the implementation's capabilities.  If the
implementation cannot handle a texture of the requested texture size, it
sets all of the image state to 0, but does not generate an error (see
`glGetError').  To query for an entire mipmap array, use an image array
level greater than or equal to 1.

If TARGET is `GL_TEXTURE_3D', data is read from DATA as a sequence of
signed or unsigned bytes, shorts, or longs, or single-precision
floating-point values, depending on TYPE.  These values are grouped into
sets of one, two, three, or four values, depending on FORMAT, to form
elements.  If TYPE is `GL_BITMAP', the data is considered as a string of
unsigned bytes (and FORMAT must be `GL_COLOR_INDEX').  Each data byte is
treated as eight 1-bit elements, with bit ordering determined by
`GL_UNPACK_LSB_FIRST' (see `glPixelStore').

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

The first element corresponds to the lower left corner of the texture
image.  Subsequent elements progress left-to-right through the remaining
texels in the lowest row of the texture image, and then in successively
higher rows of the texture image.  The final element corresponds to the
upper right corner of the texture image.

FORMAT determines the composition of each element in DATA.  It can
assume one of these symbolic values:

`GL_COLOR_INDEX'
     Each element is a single value, a color index.  The GL converts it
     to fixed point (with an unspecified number of zero bits to the
     right of the binary point), shifted left or right depending on the
     value and sign of `GL_INDEX_SHIFT', and added to `GL_INDEX_OFFSET'
     (see `glPixelTransfer').  The resulting index is converted to a set
     of color components using the `GL_PIXEL_MAP_I_TO_R',
     `GL_PIXEL_MAP_I_TO_G', `GL_PIXEL_MAP_I_TO_B', and
     `GL_PIXEL_MAP_I_TO_A' tables, and clamped to the range [0,1].

`GL_RED'
     Each element is a single red component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for green and blue, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_GREEN'
     Each element is a single green component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red and blue, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_BLUE'
     Each element is a single blue component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red and green, and 1 for alpha.  Each component is then
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_ALPHA'
     Each element is a single alpha component.  The GL converts it to
     floating point and assembles it into an RGBA element by attaching 0
     for red, green, and blue.  Each component is then multiplied by the
     signed scale factor `GL_c_SCALE', added to the signed bias
     `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_INTENSITY'
     Each element is a single intensity value.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the intensity value three times for red, green, blue,
     and alpha.  Each component is then multiplied by the signed scale
     factor `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and
     clamped to the range [0,1] (see `glPixelTransfer').

`GL_RGB'
`GL_BGR'
     Each element is an RGB triple.  The GL converts it to floating
     point and assembles it into an RGBA element by attaching 1 for
     alpha.  Each component is then multiplied by the signed scale
     factor `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and
     clamped to the range [0,1] (see `glPixelTransfer').

`GL_RGBA'
`GL_BGRA'
     Each element contains all four components.  Each component is
     multiplied by the signed scale factor `GL_c_SCALE', added to the
     signed bias `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_LUMINANCE'
     Each element is a single luminance value.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the luminance value three times for red, green, and
     blue and attaching 1 for alpha.  Each component is then multiplied
     by the signed scale factor `GL_c_SCALE', added to the signed bias
     `GL_c_BIAS', and clamped to the range [0,1] (see
     `glPixelTransfer').

`GL_LUMINANCE_ALPHA'
     Each element is a luminance/alpha pair.  The GL converts it to
     floating point, then assembles it into an RGBA element by
     replicating the luminance value three times for red, green, and
     blue.  Each component is then multiplied by the signed scale factor
     `GL_c_SCALE', added to the signed bias `GL_c_BIAS', and clamped to
     the range [0,1] (see `glPixelTransfer').

Refer to the `glDrawPixels' reference page for a description of the
acceptable values for the TYPE parameter.

If an application wants to store the texture at a certain resolution or
in a certain format, it can request the resolution and format with
INTERNALFORMAT.  The GL will choose an internal representation that
closely approximates that requested by INTERNALFORMAT, but it may not
match exactly.  (The representations specified by `GL_LUMINANCE',
`GL_LUMINANCE_ALPHA', `GL_RGB', and `GL_RGBA' must match exactly.  The
numeric values 1, 2, 3, and 4 may also be used to specify the above
representations.)

If the INTERNALFORMAT parameter is one of the generic compressed
formats, `GL_COMPRESSED_ALPHA', `GL_COMPRESSED_INTENSITY',
`GL_COMPRESSED_LUMINANCE', `GL_COMPRESSED_LUMINANCE_ALPHA',
`GL_COMPRESSED_RGB', or `GL_COMPRESSED_RGBA', the GL will replace the
internal format with the symbolic constant for a specific internal
format and compress the texture before storage.  If no corresponding
internal format is available, or the GL can not compress that image for
any reason, the internal format is instead replaced with a corresponding
base internal format.

If the INTERNALFORMAT parameter is `GL_SRGB', `GL_SRGB8',
`GL_SRGB_ALPHA', `GL_SRGB8_ALPHA8', `GL_SLUMINANCE', `GL_SLUMINANCE8',
`GL_SLUMINANCE_ALPHA', or `GL_SLUMINANCE8_ALPHA8', the texture is
treated as if the red, green, blue, or luminance components are encoded
in the sRGB color space.  Any alpha component is left unchanged.  The
conversion from the sRGB encoded component C_S to a linear component C_L
is:

C_L={(C_S/12.92 if C_S≤0.04045), ((`c'_`s'+0.055/1.055)^2.4 if
C_S>0.04045)

Assume C_S is the sRGB component in the range [0,1].

Use the `GL_PROXY_TEXTURE_3D' target to try out a resolution and format.
The implementation will update and recompute its best match for the
requested storage resolution and format.  To then query this state, call
`glGetTexLevelParameter'.  If the texture cannot be accommodated,
texture state is set to 0.

A one-component texture image uses only the red component of the RGBA
color extracted from DATA.  A two-component image uses the R and A
values.  A three-component image uses the R, G, and B values.  A
four-component image uses all of the RGBA components.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_TEXTURE_3D' or
`GL_PROXY_TEXTURE_3D'.

`GL_INVALID_ENUM' is generated if FORMAT is not an accepted format
constant.  Format constants other than `GL_STENCIL_INDEX' and
`GL_DEPTH_COMPONENT' are accepted.

`GL_INVALID_ENUM' is generated if TYPE is not a type constant.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
`GL_COLOR_INDEX'.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than
LOG_2\u2061(MAX,) , where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if INTERNALFORMAT is not 1, 2, 3, 4, or
one of the accepted resolution and format symbolic constants.

`GL_INVALID_VALUE' is generated if WIDTH, HEIGHT, or DEPTH is less than
0 or greater than 2 + `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if non-power-of-two textures are not
supported and the WIDTH, HEIGHT, or DEPTH cannot be represented as
2^K+2\u2061(BORDER,) for some integer value of K.

`GL_INVALID_VALUE' is generated if BORDER is not 0 or 1.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if FORMAT or INTERNALFORMAT is
`GL_DEPTH_COMPONENT', `GL_DEPTH_COMPONENT16', `GL_DEPTH_COMPONENT24', or
`GL_DEPTH_COMPONENT32'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glTexImage3D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glTexParameterf
     (target GLenum)
     (pname GLenum)
     (param GLfloat)
     ->
     void)
   (glTexParameteri
     (target GLenum)
     (pname GLenum)
     (param GLint)
     ->
     void)
   (glTexParameterfv
     (target GLenum)
     (pname GLenum)
     (params const-GLfloat-*)
     ->
     void)
   (glTexParameteriv
     (target GLenum)
     (pname GLenum)
     (params const-GLint-*)
     ->
     void))
  "Set texture parameters.

TARGET
     Specifies the target texture, which must be either `GL_TEXTURE_1D',
     `GL_TEXTURE_2D', `GL_TEXTURE_3D', or `GL_TEXTURE_CUBE_MAP'.

PNAME
     Specifies the symbolic name of a single-valued texture parameter.
     PNAME can be one of the following: `GL_TEXTURE_MIN_FILTER',
     `GL_TEXTURE_MAG_FILTER', `GL_TEXTURE_MIN_LOD',
     `GL_TEXTURE_MAX_LOD', `GL_TEXTURE_BASE_LEVEL',
     `GL_TEXTURE_MAX_LEVEL', `GL_TEXTURE_WRAP_S', `GL_TEXTURE_WRAP_T',
     `GL_TEXTURE_WRAP_R', `GL_TEXTURE_PRIORITY',
     `GL_TEXTURE_COMPARE_MODE', `GL_TEXTURE_COMPARE_FUNC',
     `GL_DEPTH_TEXTURE_MODE', or `GL_GENERATE_MIPMAP'.

PARAM
     Specifies the value of PNAME.

Texture mapping is a technique that applies an image onto an object's
surface as if the image were a decal or cellophane shrink-wrap.  The
image is created in texture space, with an (S , T ) coordinate system.  A
texture is a one- or two-dimensional image and a set of parameters that
determine how samples are derived from the image.

`glTexParameter' assigns the value or values in PARAMS to the texture
parameter specified as PNAME.  TARGET defines the target texture, either
`GL_TEXTURE_1D', `GL_TEXTURE_2D', or `GL_TEXTURE_3D'.  The following
symbols are accepted in PNAME:

`GL_TEXTURE_MIN_FILTER'
     The texture minifying function is used whenever the pixel being
     textured maps to an area greater than one texture element.  There
     are six defined minifying functions.  Two of them use the nearest
     one or nearest four texture elements to compute the texture value.
     The other four use mipmaps.

     A mipmap is an ordered set of arrays representing the same image at
     progressively lower resolutions.  If the texture has dimensions
     2^N×2^M , there are MAX\u2061(N,M)+1 mipmaps.  The first mipmap is the
     original texture, with dimensions 2^N×2^M .  Each subsequent mipmap
     has dimensions 2^K-1,×2^L-1, , where 2^K×2^L are the dimensions of
     the previous mipmap, until either K=0 or L=0 .  At that point,
     subsequent mipmaps have dimension 1×2^L-1, or 2^K-1,×1 until the
     final mipmap, which has dimension 1×1 .  To define the mipmaps,
     call `glTexImage1D', `glTexImage2D', `glTexImage3D',
     `glCopyTexImage1D', or `glCopyTexImage2D' with the LEVEL argument
     indicating the order of the mipmaps.  Level 0 is the original
     texture; level MAX\u2061(N,M) is the final 1×1 mipmap.

     PARAMS supplies a function for minifying the texture as one of the
     following:

     As more texture elements are sampled in the minification process,
     fewer aliasing artifacts will be apparent.  While the `GL_NEAREST'
     and `GL_LINEAR' minification functions can be faster than the other
     four, they sample only one or four texture elements to determine
     the texture value of the pixel being rendered and can produce moire
     patterns or ragged transitions.  The initial value of
     `GL_TEXTURE_MIN_FILTER' is `GL_NEAREST_MIPMAP_LINEAR'.

`GL_TEXTURE_MAG_FILTER'
     The texture magnification function is used when the pixel being
     textured maps to an area less than or equal to one texture element.
     It sets the texture magnification function to either `GL_NEAREST'
     or `GL_LINEAR' (see below).  `GL_NEAREST' is generally faster than
     `GL_LINEAR', but it can produce textured images with sharper edges
     because the transition between texture elements is not as smooth.
     The initial value of `GL_TEXTURE_MAG_FILTER' is `GL_LINEAR'.

`GL_NEAREST'
     Returns the value of the texture element that is nearest (in
     Manhattan distance) to the center of the pixel being textured.

`GL_LINEAR'
     Returns the weighted average of the four texture elements that are
     closest to the center of the pixel being textured.  These can
     include border texture elements, depending on the values of
     `GL_TEXTURE_WRAP_S' and `GL_TEXTURE_WRAP_T', and on the exact
     mapping.

`GL_NEAREST_MIPMAP_NEAREST'
     Chooses the mipmap that most closely matches the size of the pixel
     being textured and uses the `GL_NEAREST' criterion (the texture
     element nearest to the center of the pixel) to produce a texture
     value.

`GL_LINEAR_MIPMAP_NEAREST'
     Chooses the mipmap that most closely matches the size of the pixel
     being textured and uses the `GL_LINEAR' criterion (a weighted
     average of the four texture elements that are closest to the center
     of the pixel) to produce a texture value.

`GL_NEAREST_MIPMAP_LINEAR'
     Chooses the two mipmaps that most closely match the size of the
     pixel being textured and uses the `GL_NEAREST' criterion (the
     texture element nearest to the center of the pixel) to produce a
     texture value from each mipmap.  The final texture value is a
     weighted average of those two values.

`GL_LINEAR_MIPMAP_LINEAR'
     Chooses the two mipmaps that most closely match the size of the
     pixel being textured and uses the `GL_LINEAR' criterion (a weighted
     average of the four texture elements that are closest to the center
     of the pixel) to produce a texture value from each mipmap.  The
     final texture value is a weighted average of those two values.

`GL_NEAREST'
     Returns the value of the texture element that is nearest (in
     Manhattan distance) to the center of the pixel being textured.

`GL_LINEAR'
     Returns the weighted average of the four texture elements that are
     closest to the center of the pixel being textured.  These can
     include border texture elements, depending on the values of
     `GL_TEXTURE_WRAP_S' and `GL_TEXTURE_WRAP_T', and on the exact
     mapping.



`GL_TEXTURE_MIN_LOD'
     Sets the minimum level-of-detail parameter.  This floating-point
     value limits the selection of highest resolution mipmap (lowest
     mipmap level).  The initial value is -1000.



`GL_TEXTURE_MAX_LOD'
     Sets the maximum level-of-detail parameter.  This floating-point
     value limits the selection of the lowest resolution mipmap (highest
     mipmap level).  The initial value is 1000.



`GL_TEXTURE_BASE_LEVEL'
     Specifies the index of the lowest defined mipmap level.  This is an
     integer value.  The initial value is 0.



`GL_TEXTURE_MAX_LEVEL'
     Sets the index of the highest defined mipmap level.  This is an
     integer value.  The initial value is 1000.



`GL_TEXTURE_WRAP_S'
     Sets the wrap parameter for texture coordinate S to either
     `GL_CLAMP', `GL_CLAMP_TO_BORDER', `GL_CLAMP_TO_EDGE',
     `GL_MIRRORED_REPEAT', or `GL_REPEAT'.  `GL_CLAMP' causes S
     coordinates to be clamped to the range [0,1] and is useful for
     preventing wrapping artifacts when mapping a single image onto an
     object.  `GL_CLAMP_TO_BORDER' causes the S coordinate to be clamped
     to the range [-1/2N,,1+1/2N,] , where N is the size of the texture
     in the direction of clamping.`GL_CLAMP_TO_EDGE' causes S
     coordinates to be clamped to the range [1/2N,,1-1/2N,] , where N is
     the size of the texture in the direction of clamping.  `GL_REPEAT'
     causes the integer part of the S coordinate to be ignored; the GL
     uses only the fractional part, thereby creating a repeating
     pattern.  `GL_MIRRORED_REPEAT' causes the S coordinate to be set to
     the fractional part of the texture coordinate if the integer part
     of S is even; if the integer part of S is odd, then the S texture
     coordinate is set to 1-FRAC\u2061(S,) , where FRAC\u2061(S,) represents the
     fractional part of S .  Border texture elements are accessed only
     if wrapping is set to `GL_CLAMP' or `GL_CLAMP_TO_BORDER'.
     Initially, `GL_TEXTURE_WRAP_S' is set to `GL_REPEAT'.



`GL_TEXTURE_WRAP_T'
     Sets the wrap parameter for texture coordinate T to either
     `GL_CLAMP', `GL_CLAMP_TO_BORDER', `GL_CLAMP_TO_EDGE',
     `GL_MIRRORED_REPEAT', or `GL_REPEAT'.  See the discussion under
     `GL_TEXTURE_WRAP_S'.  Initially, `GL_TEXTURE_WRAP_T' is set to
     `GL_REPEAT'.

`GL_TEXTURE_WRAP_R'
     Sets the wrap parameter for texture coordinate R to either
     `GL_CLAMP', `GL_CLAMP_TO_BORDER', `GL_CLAMP_TO_EDGE',
     `GL_MIRRORED_REPEAT', or `GL_REPEAT'.  See the discussion under
     `GL_TEXTURE_WRAP_S'.  Initially, `GL_TEXTURE_WRAP_R' is set to
     `GL_REPEAT'.

`GL_TEXTURE_BORDER_COLOR'
     Sets a border color.  PARAMS contains four values that comprise the
     RGBA color of the texture border.  Integer color components are
     interpreted linearly such that the most positive integer maps to
     1.0, and the most negative integer maps to -1.0.  The values are
     clamped to the range [0,1] when they are specified.  Initially, the
     border color is (0, 0, 0, 0).

`GL_TEXTURE_PRIORITY'
     Specifies the texture residence priority of the currently bound
     texture.  Permissible values are in the range [0,1] .  See
     `glPrioritizeTextures' and `glBindTexture' for more information.

`GL_TEXTURE_COMPARE_MODE'
     Specifies the texture comparison mode for currently bound depth
     textures.  That is, a texture whose internal format is
     `GL_DEPTH_COMPONENT_*'; see `glTexImage2D') Permissible values are:

`GL_TEXTURE_COMPARE_FUNC'
     Specifies the comparison operator used when
     `GL_TEXTURE_COMPARE_MODE' is set to `GL_COMPARE_R_TO_TEXTURE'.
     Permissible values are: where R is the current interpolated texture
     coordinate, and D_T is the depth texture value sampled from the
     currently bound depth texture.  RESULT is assigned to the either
     the luminance, intensity, or alpha (as specified by
     `GL_DEPTH_TEXTURE_MODE'.)

`GL_DEPTH_TEXTURE_MODE'
     Specifies a single symbolic constant indicating how depth values
     should be treated during filtering and texture application.
     Accepted values are `GL_LUMINANCE', `GL_INTENSITY', and `GL_ALPHA'.
     The initial value is `GL_LUMINANCE'.

`GL_GENERATE_MIPMAP'
     Specifies a boolean value that indicates if all levels of a mipmap
     array should be automatically updated when any modification to the
     base level mipmap is done.  The initial value is `GL_FALSE'.

`GL_COMPARE_R_TO_TEXTURE'
     Specifies that the interpolated and clamped R texture coordinate
     should be compared to the value in the currently bound depth
     texture.  See the discussion of `GL_TEXTURE_COMPARE_FUNC' for
     details of how the comparison is evaluated.  The result of the
     comparison is assigned to luminance, intensity, or alpha (as
     specified by `GL_DEPTH_TEXTURE_MODE').

`GL_NONE'
     Specifies that the luminance, intensity, or alpha (as specified by
     `GL_DEPTH_TEXTURE_MODE') should be assigned the appropriate value
     from the currently bound depth texture.

*Texture Comparison Function*
     *Computed result*

`GL_LEQUAL'
     RESULT={(1.0), (0.0)\u2062\xa0(R<=D_T,), (R>D_T,),

`GL_GEQUAL'
     RESULT={(1.0), (0.0)\u2062\xa0(R>=D_T,), (R<D_T,),

`GL_LESS'
     RESULT={(1.0), (0.0)\u2062\xa0(R<D_T,), (R>=D_T,),

`GL_GREATER'
     RESULT={(1.0), (0.0)\u2062\xa0(R>D_T,), (R<=D_T,),

`GL_EQUAL'
     RESULT={(1.0), (0.0)\u2062\xa0(R=D_T,), (R≠D_T,),

`GL_NOTEQUAL'
     RESULT={(1.0), (0.0)\u2062\xa0(R≠D_T,), (R=D_T,),

`GL_ALWAYS'
     RESULT=`1.0'

`GL_NEVER'
     RESULT=`0.0'

`GL_INVALID_ENUM' is generated if TARGET or PNAME is not one of the
accepted defined values.

`GL_INVALID_ENUM' is generated if PARAMS should have a defined constant
value (based on the value of PNAME) and does not.

`GL_INVALID_OPERATION' is generated if `glTexParameter' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glTexSubImage1D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (width GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a one-dimensional texture subimage.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_1D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

WIDTH
     Specifies the width of the texture subimage.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are accepted: `GL_COLOR_INDEX', `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type of the pixel data.  The following symbolic
     values are accepted: `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP',
     `GL_UNSIGNED_SHORT', `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT',
     `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable or
disable one-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_1D'.

`glTexSubImage1D' redefines a contiguous subregion of an existing
one-dimensional texture image.  The texels referenced by DATA replace
the portion of the existing texture array with x indices XOFFSET and
XOFFSET+WIDTH-1 , inclusive.  This region may not include any texels
outside the range of the texture array as it was originally specified.
It is not an error to specify a subtexture with width of 0, but such a
specification has no effect.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if TARGET is not one of the allowable
values.

`GL_INVALID_ENUM' is generated if FORMAT is not an accepted format
constant.

`GL_INVALID_ENUM' is generated if TYPE is not a type constant.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
`GL_COLOR_INDEX'.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than LOG_2 MAX,
where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if XOFFSET<-B , or if
(XOFFSET+WIDTH,)>(W-B,) , where W is the `GL_TEXTURE_WIDTH', and B is
the width of the `GL_TEXTURE_BORDER' of the texture image being
modified.  Note that W includes twice the border width.

`GL_INVALID_VALUE' is generated if WIDTH is less than 0.

`GL_INVALID_OPERATION' is generated if the texture array has not been
defined by a previous `glTexImage1D' operation.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glTexSubImage1D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glTexSubImage2D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (yoffset GLint)
     (width GLsizei)
     (height GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a two-dimensional texture subimage.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_2D',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
     `GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or
     `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

YOFFSET
     Specifies a texel offset in the y direction within the texture
     array.

WIDTH
     Specifies the width of the texture subimage.

HEIGHT
     Specifies the height of the texture subimage.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are accepted: `GL_COLOR_INDEX', `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type of the pixel data.  The following symbolic
     values are accepted: `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP',
     `GL_UNSIGNED_SHORT', `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT',
     `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable two-dimensional texturing, call `glEnable' and `glDisable' with
argument `GL_TEXTURE_2D'.

`glTexSubImage2D' redefines a contiguous subregion of an existing
two-dimensional texture image.  The texels referenced by DATA replace
the portion of the existing texture array with x indices XOFFSET and
XOFFSET+WIDTH-1 , inclusive, and y indices YOFFSET and YOFFSET+HEIGHT-1
, inclusive.  This region may not include any texels outside the range
of the texture array as it was originally specified.  It is not an error
to specify a subtexture with zero width or height, but such a
specification has no effect.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if TARGET is not `GL_TEXTURE_2D',
`GL_TEXTURE_CUBE_MAP_POSITIVE_X', `GL_TEXTURE_CUBE_MAP_NEGATIVE_X',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Y', `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y',
`GL_TEXTURE_CUBE_MAP_POSITIVE_Z', or `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z'.

`GL_INVALID_ENUM' is generated if FORMAT is not an accepted format
constant.

`GL_INVALID_ENUM' is generated if TYPE is not a type constant.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
`GL_COLOR_INDEX'.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than LOG_2 MAX,
where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if XOFFSET<-B , (XOFFSET+WIDTH,)>(W-B,)
, YOFFSET<-B , or (YOFFSET+HEIGHT,)>(H-B,) , where W is the
`GL_TEXTURE_WIDTH', H is the `GL_TEXTURE_HEIGHT', and B is the border
width of the texture image being modified.  Note that W and H include
twice the border width.

`GL_INVALID_VALUE' is generated if WIDTH or HEIGHT is less than 0.

`GL_INVALID_OPERATION' is generated if the texture array has not been
defined by a previous `glTexImage2D' operation.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glTexSubImage2D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glTexSubImage3D
     (target GLenum)
     (level GLint)
     (xoffset GLint)
     (yoffset GLint)
     (zoffset GLint)
     (width GLsizei)
     (height GLsizei)
     (depth GLsizei)
     (format GLenum)
     (type GLenum)
     (data const-GLvoid-*)
     ->
     void))
  "Specify a three-dimensional texture subimage.

TARGET
     Specifies the target texture.  Must be `GL_TEXTURE_3D'.

LEVEL
     Specifies the level-of-detail number.  Level 0 is the base image
     level.  Level N is the Nth mipmap reduction image.

XOFFSET
     Specifies a texel offset in the x direction within the texture
     array.

YOFFSET
     Specifies a texel offset in the y direction within the texture
     array.

ZOFFSET
     Specifies a texel offset in the z direction within the texture
     array.

WIDTH
     Specifies the width of the texture subimage.

HEIGHT
     Specifies the height of the texture subimage.

DEPTH
     Specifies the depth of the texture subimage.

FORMAT
     Specifies the format of the pixel data.  The following symbolic
     values are accepted: `GL_COLOR_INDEX', `GL_RED', `GL_GREEN',
     `GL_BLUE', `GL_ALPHA', `GL_RGB', `GL_BGR', `GL_RGBA', `GL_BGRA',
     `GL_LUMINANCE', and `GL_LUMINANCE_ALPHA'.

TYPE
     Specifies the data type of the pixel data.  The following symbolic
     values are accepted: `GL_UNSIGNED_BYTE', `GL_BYTE', `GL_BITMAP',
     `GL_UNSIGNED_SHORT', `GL_SHORT', `GL_UNSIGNED_INT', `GL_INT',
     `GL_FLOAT', `GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
     `GL_UNSIGNED_SHORT_5_6_5', `GL_UNSIGNED_SHORT_5_6_5_REV',
     `GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
     `GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
     `GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
     `GL_UNSIGNED_INT_10_10_10_2', and `GL_UNSIGNED_INT_2_10_10_10_REV'.

DATA
     Specifies a pointer to the image data in memory.

Texturing maps a portion of a specified texture image onto each
graphical primitive for which texturing is enabled.  To enable and
disable three-dimensional texturing, call `glEnable' and `glDisable'
with argument `GL_TEXTURE_3D'.

`glTexSubImage3D' redefines a contiguous subregion of an existing
three-dimensional texture image.  The texels referenced by DATA replace
the portion of the existing texture array with x indices XOFFSET and
XOFFSET+WIDTH-1 , inclusive, y indices YOFFSET and YOFFSET+HEIGHT-1 ,
inclusive, and z indices ZOFFSET and ZOFFSET+DEPTH-1 , inclusive.  This
region may not include any texels outside the range of the texture array
as it was originally specified.  It is not an error to specify a
subtexture with zero width, height, or depth but such a specification
has no effect.

If a non-zero named buffer object is bound to the
`GL_PIXEL_UNPACK_BUFFER' target (see `glBindBuffer') while a texture
image is specified, DATA is treated as a byte offset into the buffer
object's data store.

`GL_INVALID_ENUM' is generated if /TARGET is not `GL_TEXTURE_3D'.

`GL_INVALID_ENUM' is generated if FORMAT is not an accepted format
constant.

`GL_INVALID_ENUM' is generated if TYPE is not a type constant.

`GL_INVALID_ENUM' is generated if TYPE is `GL_BITMAP' and FORMAT is not
`GL_COLOR_INDEX'.

`GL_INVALID_VALUE' is generated if LEVEL is less than 0.

`GL_INVALID_VALUE' may be generated if LEVEL is greater than LOG_2 MAX,
where MAX is the returned value of `GL_MAX_TEXTURE_SIZE'.

`GL_INVALID_VALUE' is generated if XOFFSET<-B , (XOFFSET+WIDTH,)>(W-B,)
, YOFFSET<-B , or (YOFFSET+HEIGHT,)>(H-B,) , or ZOFFSET<-B , or
(ZOFFSET+DEPTH,)>(D-B,) , where W is the `GL_TEXTURE_WIDTH', H is the
`GL_TEXTURE_HEIGHT', D is the `GL_TEXTURE_DEPTH' and B is the border
width of the texture image being modified.  Note that W , H , and D
include twice the border width.

`GL_INVALID_VALUE' is generated if WIDTH, HEIGHT, or DEPTH is less than
0.

`GL_INVALID_OPERATION' is generated if the texture array has not been
defined by a previous `glTexImage3D' operation.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_BYTE_3_3_2', `GL_UNSIGNED_BYTE_2_3_3_REV',
`GL_UNSIGNED_SHORT_5_6_5', or `GL_UNSIGNED_SHORT_5_6_5_REV' and FORMAT
is not `GL_RGB'.

`GL_INVALID_OPERATION' is generated if TYPE is one of
`GL_UNSIGNED_SHORT_4_4_4_4', `GL_UNSIGNED_SHORT_4_4_4_4_REV',
`GL_UNSIGNED_SHORT_5_5_5_1', `GL_UNSIGNED_SHORT_1_5_5_5_REV',
`GL_UNSIGNED_INT_8_8_8_8', `GL_UNSIGNED_INT_8_8_8_8_REV',
`GL_UNSIGNED_INT_10_10_10_2', or `GL_UNSIGNED_INT_2_10_10_10_REV' and
FORMAT is neither `GL_RGBA' nor `GL_BGRA'.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the buffer object's
data store is currently mapped.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and the data would be
unpacked from the buffer object such that the memory reads required
would exceed the data store size.

`GL_INVALID_OPERATION' is generated if a non-zero buffer object name is
bound to the `GL_PIXEL_UNPACK_BUFFER' target and DATA is not evenly
divisible into the number of bytes needed to store in memory a datum
indicated by TYPE.

`GL_INVALID_OPERATION' is generated if `glTexSubImage3D' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glTranslated
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     ->
     void)
   (glTranslatef
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     ->
     void))
  "Multiply the current matrix by a translation matrix.

X
     Y

     Z

     Specify the X, Y, and Z coordinates of a translation vector.

`glTranslate' produces a translation by (X,YZ) .  The current matrix
(see `glMatrixMode') is multiplied by this translation matrix, with the
product replacing the current matrix, as if `glMultMatrix' were called
with the following matrix for its argument:

((1 0 0 X), (0 1 0 Y), (0 0 1 Z), (0 0 0 1),)



If the matrix mode is either `GL_MODELVIEW' or `GL_PROJECTION', all
objects drawn after a call to `glTranslate' are translated.

Use `glPushMatrix' and `glPopMatrix' to save and restore the
untranslated coordinate system.

`GL_INVALID_OPERATION' is generated if `glTranslate' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glUniform1f
     (location GLint)
     (v0 GLfloat)
     ->
     void)
   (glUniform2f
     (location GLint)
     (v0 GLfloat)
     (v1 GLfloat)
     ->
     void)
   (glUniform3f
     (location GLint)
     (v0 GLfloat)
     (v1 GLfloat)
     (v2 GLfloat)
     ->
     void)
   (glUniform4f
     (location GLint)
     (v0 GLfloat)
     (v1 GLfloat)
     (v2 GLfloat)
     (v3 GLfloat)
     ->
     void)
   (glUniform1i (location GLint) (v0 GLint) -> void)
   (glUniform2i
     (location GLint)
     (v0 GLint)
     (v1 GLint)
     ->
     void)
   (glUniform3i
     (location GLint)
     (v0 GLint)
     (v1 GLint)
     (v2 GLint)
     ->
     void)
   (glUniform4i
     (location GLint)
     (v0 GLint)
     (v1 GLint)
     (v2 GLint)
     (v3 GLint)
     ->
     void)
   (glUniform1fv
     (location GLint)
     (count GLsizei)
     (value const-GLfloat-*)
     ->
     void)
   (glUniform2fv
     (location GLint)
     (count GLsizei)
     (value const-GLfloat-*)
     ->
     void)
   (glUniform3fv
     (location GLint)
     (count GLsizei)
     (value const-GLfloat-*)
     ->
     void)
   (glUniform4fv
     (location GLint)
     (count GLsizei)
     (value const-GLfloat-*)
     ->
     void)
   (glUniform1iv
     (location GLint)
     (count GLsizei)
     (value const-GLint-*)
     ->
     void)
   (glUniform2iv
     (location GLint)
     (count GLsizei)
     (value const-GLint-*)
     ->
     void)
   (glUniform3iv
     (location GLint)
     (count GLsizei)
     (value const-GLint-*)
     ->
     void)
   (glUniform4iv
     (location GLint)
     (count GLsizei)
     (value const-GLint-*)
     ->
     void)
   (glUniformMatrix2fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix3fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix4fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix2x3fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix3x2fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix2x4fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix4x2fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix3x4fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void)
   (glUniformMatrix4x3fv
     (location GLint)
     (count GLsizei)
     (transpose GLboolean)
     (value const-GLfloat-*)
     ->
     void))
  "Specify the value of a uniform variable for the current program object.

LOCATION
     Specifies the location of the uniform variable to be modified.

V0, V1, V2, V3
     Specifies the new values to be used for the specified uniform
     variable.

`glUniform' modifies the value of a uniform variable or a uniform
variable array.  The location of the uniform variable to be modified is
specified by LOCATION, which should be a value returned by
`glGetUniformLocation'.  `glUniform' operates on the program object that
was made part of current state by calling `glUseProgram'.

The commands `glUniform{1|2|3|4}{f|i}' are used to change the value of
the uniform variable specified by LOCATION using the values passed as
arguments.  The number specified in the command should match the number
of components in the data type of the specified uniform variable (e.g.,
`1' for float, int, bool; `2' for vec2, ivec2, bvec2, etc.).  The suffix
`f' indicates that floating-point values are being passed; the suffix
`i' indicates that integer values are being passed, and this type should
also match the data type of the specified uniform variable.  The `i'
variants of this function should be used to provide values for uniform
variables defined as int, ivec2, ivec3, ivec4, or arrays of these.  The
`f' variants should be used to provide values for uniform variables of
type float, vec2, vec3, vec4, or arrays of these.  Either the `i' or the
`f' variants may be used to provide values for uniform variables of type
bool, bvec2, bvec3, bvec4, or arrays of these.  The uniform variable
will be set to false if the input value is 0 or 0.0f, and it will be set
to true otherwise.

All active uniform variables defined in a program object are initialized
to 0 when the program object is linked successfully.  They retain the
values assigned to them by a call to `glUniform ' until the next
successful link operation occurs on the program object, when they are
once again initialized to 0.

The commands `glUniform{1|2|3|4}{f|i}v' can be used to modify a single
uniform variable or a uniform variable array.  These commands pass a
count and a pointer to the values to be loaded into a uniform variable
or a uniform variable array.  A count of 1 should be used if modifying
the value of a single uniform variable, and a count of 1 or greater can
be used to modify an entire array or part of an array.  When loading N
elements starting at an arbitrary position M in a uniform variable
array, elements M + N - 1 in the array will be replaced with the new
values.  If M + N - 1 is larger than the size of the uniform variable
array, values for all array elements beyond the end of the array will be
ignored.  The number specified in the name of the command indicates the
number of components for each element in VALUE, and it should match the
number of components in the data type of the specified uniform variable
(e.g., `1' for float, int, bool; `2' for vec2, ivec2, bvec2, etc.).  The
data type specified in the name of the command must match the data type
for the specified uniform variable as described previously for
`glUniform{1|2|3|4}{f|i}'.

For uniform variable arrays, each element of the array is considered to
be of the type indicated in the name of the command (e.g., `glUniform3f'
or `glUniform3fv' can be used to load a uniform variable array of type
vec3).  The number of elements of the uniform variable array to be
modified is specified by COUNT

The commands `glUniformMatrix{2|3|4|2x3|3x2|2x4|4x2|3x4|4x3}fv' are used
to modify a matrix or an array of matrices.  The numbers in the command
name are interpreted as the dimensionality of the matrix.  The number
`2' indicates a 2 × 2 matrix (i.e., 4 values), the number `3' indicates
a 3 × 3 matrix (i.e., 9 values), and the number `4' indicates a 4 × 4
matrix (i.e., 16 values).  Non-square matrix dimensionality is explicit,
with the first number representing the number of columns and the second
number representing the number of rows.  For example, `2x4' indicates a
2 × 4 matrix with 2 columns and 4 rows (i.e., 8 values).  If TRANSPOSE
is `GL_FALSE', each matrix is assumed to be supplied in column major
order.  If TRANSPOSE is `GL_TRUE', each matrix is assumed to be supplied
in row major order.  The COUNT argument indicates the number of matrices
to be passed.  A count of 1 should be used if modifying the value of a
single matrix, and a count greater than 1 can be used to modify an array
of matrices.

`GL_INVALID_OPERATION' is generated if there is no current program
object.

`GL_INVALID_OPERATION' is generated if the size of the uniform variable
declared in the shader does not match the size indicated by the
`glUniform' command.

`GL_INVALID_OPERATION' is generated if one of the integer variants of
this function is used to load a uniform variable of type float, vec2,
vec3, vec4, or an array of these, or if one of the floating-point
variants of this function is used to load a uniform variable of type
int, ivec2, ivec3, or ivec4, or an array of these.

`GL_INVALID_OPERATION' is generated if LOCATION is an invalid uniform
location for the current program object and LOCATION is not equal to -1.

`GL_INVALID_VALUE' is generated if COUNT is less than 0.

`GL_INVALID_OPERATION' is generated if COUNT is greater than 1 and the
indicated uniform variable is not an array variable.

`GL_INVALID_OPERATION' is generated if a sampler is loaded using a
command other than `glUniform1i' and `glUniform1iv'.

`GL_INVALID_OPERATION' is generated if `glUniform' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glUseProgram (program GLuint) -> void))
  "Installs a program object as part of current rendering state.

PROGRAM
     Specifies the handle of the program object whose executables are to
     be used as part of current rendering state.

`glUseProgram' installs the program object specified by PROGRAM as part
of current rendering state.  One or more executables are created in a
program object by successfully attaching shader objects to it with
`glAttachShader', successfully compiling the shader objects with
`glCompileShader', and successfully linking the program object with
`glLinkProgram'.

A program object will contain an executable that will run on the vertex
processor if it contains one or more shader objects of type
`GL_VERTEX_SHADER' that have been successfully compiled and linked.
Similarly, a program object will contain an executable that will run on
the fragment processor if it contains one or more shader objects of type
`GL_FRAGMENT_SHADER' that have been successfully compiled and linked.

Successfully installing an executable on a programmable processor will
cause the corresponding fixed functionality of OpenGL to be disabled.
Specifically, if an executable is installed on the vertex processor, the
OpenGL fixed functionality will be disabled as follows.

   * The projection matrix is not applied to vertex coordinates.

   * The texture matrices are not applied to texture coordinates.

   * Normals are not transformed to eye coordinates.

   * Normals are not rescaled or normalized.

   * Normalization of `GL_AUTO_NORMAL' evaluated normals is not
     performed.

   * Texture coordinates are not generated automatically.

   * Per-vertex lighting is not performed.

   * Color material computations are not performed.

   * Color index lighting is not performed.

   * This list also applies when setting the current raster position.

The executable that is installed on the vertex processor is expected to
implement any or all of the desired functionality from the preceding
list.  Similarly, if an executable is installed on the fragment
processor, the OpenGL fixed functionality will be disabled as follows.

   * Texture application is not applied.

   * Color sum is not applied.

   * Fog is not applied.

Again, the fragment shader that is installed is expected to implement
any or all of the desired functionality from the preceding list.

While a program object is in use, applications are free to modify
attached shader objects, compile attached shader objects, attach
additional shader objects, and detach or delete shader objects.  None of
these operations will affect the executables that are part of the
current state.  However, relinking the program object that is currently
in use will install the program object as part of the current rendering
state if the link operation was successful (see `glLinkProgram' ).  If
the program object currently in use is relinked unsuccessfully, its link
status will be set to `GL_FALSE', but the executables and associated
state will remain part of the current state until a subsequent call to
`glUseProgram' removes it from use.  After it is removed from use, it
cannot be made part of current state until it has been successfully
relinked.

If PROGRAM contains shader objects of type `GL_VERTEX_SHADER' but it
does not contain shader objects of type `GL_FRAGMENT_SHADER', an
executable will be installed on the vertex processor, but fixed
functionality will be used for fragment processing.  Similarly, if
PROGRAM contains shader objects of type `GL_FRAGMENT_SHADER' but it does
not contain shader objects of type `GL_VERTEX_SHADER', an executable
will be installed on the fragment processor, but fixed functionality
will be used for vertex processing.  If PROGRAM is 0, the programmable
processors will be disabled, and fixed functionality will be used for
both vertex and fragment processing.

`GL_INVALID_VALUE' is generated if PROGRAM is neither 0 nor a value
generated by OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if PROGRAM could not be made part of
current state.

`GL_INVALID_OPERATION' is generated if `glUseProgram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glValidateProgram (program GLuint) -> void))
  "Validates a program object.

PROGRAM
     Specifies the handle of the program object to be validated.

`glValidateProgram' checks to see whether the executables contained in
PROGRAM can execute given the current OpenGL state.  The information
generated by the validation process will be stored in PROGRAM's
information log.  The validation information may consist of an empty
string, or it may be a string containing information about how the
current program object interacts with the rest of current OpenGL state.
This provides a way for OpenGL implementers to convey more information
about why the current program is inefficient, suboptimal, failing to
execute, and so on.

The status of the validation operation will be stored as part of the
program object's state.  This value will be set to `GL_TRUE' if the
validation succeeded, and `GL_FALSE' otherwise.  It can be queried by
calling `glGetProgram' with arguments PROGRAM and `GL_VALIDATE_STATUS'.
If validation is successful, PROGRAM is guaranteed to execute given the
current state.  Otherwise, PROGRAM is guaranteed to not execute.

This function is typically useful only during application development.
The informational string stored in the information log is completely
implementation dependent; therefore, an application should not expect
different OpenGL implementations to produce identical information
strings.

`GL_INVALID_VALUE' is generated if PROGRAM is not a value generated by
OpenGL.

`GL_INVALID_OPERATION' is generated if PROGRAM is not a program object.

`GL_INVALID_OPERATION' is generated if `glValidateProgram' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.")

(define-gl-procedures
  ((glVertexAttribPointer
     (index GLuint)
     (size GLint)
     (type GLenum)
     (normalized GLboolean)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of generic vertex attribute data.

INDEX
     Specifies the index of the generic vertex attribute to be modified.

SIZE
     Specifies the number of components per generic vertex attribute.
     Must be 1, 2, 3, or 4.  The initial value is 4.

TYPE
     Specifies the data type of each component in the array.  Symbolic
     constants `GL_BYTE', `GL_UNSIGNED_BYTE', `GL_SHORT',
     `GL_UNSIGNED_SHORT', `GL_INT', `GL_UNSIGNED_INT', `GL_FLOAT', or
     `GL_DOUBLE' are accepted.  The initial value is `GL_FLOAT'.

NORMALIZED
     Specifies whether fixed-point data values should be normalized
     (`GL_TRUE') or converted directly as fixed-point values
     (`GL_FALSE') when they are accessed.

STRIDE
     Specifies the byte offset between consecutive generic vertex
     attributes.  If STRIDE is 0, the generic vertex attributes are
     understood to be tightly packed in the array.  The initial value is
     0.

POINTER
     Specifies a pointer to the first component of the first generic
     vertex attribute in the array.  The initial value is 0.

`glVertexAttribPointer' specifies the location and data format of the
array of generic vertex attributes at index INDEX to use when rendering.
SIZE specifies the number of components per attribute and must be 1, 2,
3, or 4.  TYPE specifies the data type of each component, and STRIDE
specifies the byte stride from one attribute to the next, allowing
vertices and attributes to be packed into a single array or stored in
separate arrays.  If set to `GL_TRUE', NORMALIZED indicates that values
stored in an integer format are to be mapped to the range [-1,1] (for
signed values) or [0,1] (for unsigned values) when they are accessed and
converted to floating point.  Otherwise, values will be converted to
floats directly without normalization.

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a generic vertex attribute array is
specified, POINTER is treated as a byte offset into the buffer object's
data store.  Also, the buffer object binding (`GL_ARRAY_BUFFER_BINDING')
is saved as generic vertex attribute array client-side state
(`GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING') for index INDEX.

When a generic vertex attribute array is specified, SIZE, TYPE,
NORMALIZED, STRIDE, and POINTER are saved as client-side state, in
addition to the current vertex array buffer object binding.

To enable and disable a generic vertex attribute array, call
`glEnableVertexAttribArray' and `glDisableVertexAttribArray' with INDEX.
If enabled, the generic vertex attribute array is used when
`glArrayElement', `glDrawArrays', `glMultiDrawArrays', `glDrawElements',
`glMultiDrawElements', or `glDrawRangeElements' is called.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to
`GL_MAX_VERTEX_ATTRIBS'.

`GL_INVALID_VALUE' is generated if SIZE is not 1, 2, 3, or 4.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glVertexAttrib1f
     (index GLuint)
     (v0 GLfloat)
     ->
     void)
   (glVertexAttrib1s
     (index GLuint)
     (v0 GLshort)
     ->
     void)
   (glVertexAttrib1d
     (index GLuint)
     (v0 GLdouble)
     ->
     void)
   (glVertexAttrib2f
     (index GLuint)
     (v0 GLfloat)
     (v1 GLfloat)
     ->
     void)
   (glVertexAttrib2s
     (index GLuint)
     (v0 GLshort)
     (v1 GLshort)
     ->
     void)
   (glVertexAttrib2d
     (index GLuint)
     (v0 GLdouble)
     (v1 GLdouble)
     ->
     void)
   (glVertexAttrib3f
     (index GLuint)
     (v0 GLfloat)
     (v1 GLfloat)
     (v2 GLfloat)
     ->
     void)
   (glVertexAttrib3s
     (index GLuint)
     (v0 GLshort)
     (v1 GLshort)
     (v2 GLshort)
     ->
     void)
   (glVertexAttrib3d
     (index GLuint)
     (v0 GLdouble)
     (v1 GLdouble)
     (v2 GLdouble)
     ->
     void)
   (glVertexAttrib4f
     (index GLuint)
     (v0 GLfloat)
     (v1 GLfloat)
     (v2 GLfloat)
     (v3 GLfloat)
     ->
     void)
   (glVertexAttrib4s
     (index GLuint)
     (v0 GLshort)
     (v1 GLshort)
     (v2 GLshort)
     (v3 GLshort)
     ->
     void)
   (glVertexAttrib4d
     (index GLuint)
     (v0 GLdouble)
     (v1 GLdouble)
     (v2 GLdouble)
     (v3 GLdouble)
     ->
     void)
   (glVertexAttrib4Nub
     (index GLuint)
     (v0 GLubyte)
     (v1 GLubyte)
     (v2 GLubyte)
     (v3 GLubyte)
     ->
     void)
   (glVertexAttrib1fv
     (index GLuint)
     (v const-GLfloat-*)
     ->
     void)
   (glVertexAttrib1sv
     (index GLuint)
     (v const-GLshort-*)
     ->
     void)
   (glVertexAttrib1dv
     (index GLuint)
     (v const-GLdouble-*)
     ->
     void)
   (glVertexAttrib2fv
     (index GLuint)
     (v const-GLfloat-*)
     ->
     void)
   (glVertexAttrib2sv
     (index GLuint)
     (v const-GLshort-*)
     ->
     void)
   (glVertexAttrib2dv
     (index GLuint)
     (v const-GLdouble-*)
     ->
     void)
   (glVertexAttrib3fv
     (index GLuint)
     (v const-GLfloat-*)
     ->
     void)
   (glVertexAttrib3sv
     (index GLuint)
     (v const-GLshort-*)
     ->
     void)
   (glVertexAttrib3dv
     (index GLuint)
     (v const-GLdouble-*)
     ->
     void)
   (glVertexAttrib4fv
     (index GLuint)
     (v const-GLfloat-*)
     ->
     void)
   (glVertexAttrib4sv
     (index GLuint)
     (v const-GLshort-*)
     ->
     void)
   (glVertexAttrib4dv
     (index GLuint)
     (v const-GLdouble-*)
     ->
     void)
   (glVertexAttrib4iv
     (index GLuint)
     (v const-GLint-*)
     ->
     void)
   (glVertexAttrib4bv
     (index GLuint)
     (v const-GLbyte-*)
     ->
     void)
   (glVertexAttrib4ubv
     (index GLuint)
     (v const-GLubyte-*)
     ->
     void)
   (glVertexAttrib4usv
     (index GLuint)
     (v const-GLushort-*)
     ->
     void)
   (glVertexAttrib4uiv
     (index GLuint)
     (v const-GLuint-*)
     ->
     void)
   (glVertexAttrib4Nbv
     (index GLuint)
     (v const-GLbyte-*)
     ->
     void)
   (glVertexAttrib4Nsv
     (index GLuint)
     (v const-GLshort-*)
     ->
     void)
   (glVertexAttrib4Niv
     (index GLuint)
     (v const-GLint-*)
     ->
     void)
   (glVertexAttrib4Nubv
     (index GLuint)
     (v const-GLubyte-*)
     ->
     void)
   (glVertexAttrib4Nusv
     (index GLuint)
     (v const-GLushort-*)
     ->
     void)
   (glVertexAttrib4Nuiv
     (index GLuint)
     (v const-GLuint-*)
     ->
     void))
  "Specifies the value of a generic vertex attribute.

INDEX
     Specifies the index of the generic vertex attribute to be modified.

V0, V1, V2, V3
     Specifies the new values to be used for the specified vertex
     attribute.

OpenGL defines a number of standard vertex attributes that applications
can modify with standard API entry points (color, normal, texture
coordinates, etc.).  The `glVertexAttrib' family of entry points allows
an application to pass generic vertex attributes in numbered locations.

Generic attributes are defined as four-component values that are
organized into an array.  The first entry of this array is numbered 0,
and the size of the array is specified by the implementation-dependent
constant `GL_MAX_VERTEX_ATTRIBS'.  Individual elements of this array can
be modified with a `glVertexAttrib' call that specifies the index of the
element to be modified and a value for that element.

These commands can be used to specify one, two, three, or all four
components of the generic vertex attribute specified by INDEX.  A `1' in
the name of the command indicates that only one value is passed, and it
will be used to modify the first component of the generic vertex
attribute.  The second and third components will be set to 0, and the
fourth component will be set to 1.  Similarly, a `2' in the name of the
command indicates that values are provided for the first two components,
the third component will be set to 0, and the fourth component will be
set to 1.  A `3' in the name of the command indicates that values are
provided for the first three components and the fourth component will be
set to 1, whereas a `4' in the name indicates that values are provided
for all four components.

The letters `s', `f', `i', `d', `ub', `us', and `ui' indicate whether
the arguments are of type short, float, int, double, unsigned byte,
unsigned short, or unsigned int.  When `v' is appended to the name, the
commands can take a pointer to an array of such values.  The commands
containing `N' indicate that the arguments will be passed as fixed-point
values that are scaled to a normalized range according to the component
conversion rules defined by the OpenGL specification.  Signed values are
understood to represent fixed-point values in the range [-1,1], and
unsigned values are understood to represent fixed-point values in the
range [0,1].

OpenGL Shading Language attribute variables are allowed to be of type
mat2, mat3, or mat4.  Attributes of these types may be loaded using the
`glVertexAttrib' entry points.  Matrices must be loaded into successive
generic attribute slots in column major order, with one column of the
matrix in each generic attribute slot.

A user-defined attribute variable declared in a vertex shader can be
bound to a generic attribute index by calling `glBindAttribLocation'.
This allows an application to use more descriptive variable names in a
vertex shader.  A subsequent change to the specified generic vertex
attribute will be immediately reflected as a change to the corresponding
attribute variable in the vertex shader.

The binding between a generic vertex attribute index and a user-defined
attribute variable in a vertex shader is part of the state of a program
object, but the current value of the generic vertex attribute is not.
The value of each generic vertex attribute is part of current state,
just like standard vertex attributes, and it is maintained even if a
different program object is used.

An application may freely modify generic vertex attributes that are not
bound to a named vertex shader attribute variable.  These values are
simply maintained as part of current state and will not be accessed by
the vertex shader.  If a generic vertex attribute bound to an attribute
variable in a vertex shader is not updated while the vertex shader is
executing, the vertex shader will repeatedly use the current value for
the generic vertex attribute.

The generic vertex attribute with index 0 is the same as the vertex
position attribute previously defined by OpenGL.  A `glVertex2',
`glVertex3', or `glVertex4' command is completely equivalent to the
corresponding `glVertexAttrib' command with an index argument of 0.  A
vertex shader can access generic vertex attribute 0 by using the
built-in attribute variable GL_VERTEX.  There are no current values for
generic vertex attribute 0.  This is the only generic vertex attribute
with this property; calls to set other standard vertex attributes can be
freely mixed with calls to set any of the other generic vertex
attributes.

`GL_INVALID_VALUE' is generated if INDEX is greater than or equal to
`GL_MAX_VERTEX_ATTRIBS'.")

(define-gl-procedures
  ((glVertexPointer
     (size GLint)
     (type GLenum)
     (stride GLsizei)
     (pointer const-GLvoid-*)
     ->
     void))
  "Define an array of vertex data.

SIZE
     Specifies the number of coordinates per vertex.  Must be 2, 3, or
     4.  The initial value is 4.

TYPE
     Specifies the data type of each coordinate in the array.  Symbolic
     constants `GL_SHORT', `GL_INT', `GL_FLOAT', or `GL_DOUBLE' are
     accepted.  The initial value is `GL_FLOAT'.

STRIDE
     Specifies the byte offset between consecutive vertices.  If STRIDE
     is 0, the vertices are understood to be tightly packed in the
     array.  The initial value is 0.

POINTER
     Specifies a pointer to the first coordinate of the first vertex in
     the array.  The initial value is 0.

`glVertexPointer' specifies the location and data format of an array of
vertex coordinates to use when rendering.  SIZE specifies the number of
coordinates per vertex, and must be 2, 3, or 4.  TYPE specifies the data
type of each coordinate, and STRIDE specifies the byte stride from one
vertex to the next, allowing vertices and attributes to be packed into a
single array or stored in separate arrays.  (Single-array storage may be
more efficient on some implementations; see `glInterleavedArrays'.)

If a non-zero named buffer object is bound to the `GL_ARRAY_BUFFER'
target (see `glBindBuffer') while a vertex array is specified, POINTER
is treated as a byte offset into the buffer object's data store.  Also,
the buffer object binding (`GL_ARRAY_BUFFER_BINDING') is saved as vertex
array client-side state (`GL_VERTEX_ARRAY_BUFFER_BINDING').

When a vertex array is specified, SIZE, TYPE, STRIDE, and POINTER are
saved as client-side state, in addition to the current vertex array
buffer object binding.

To enable and disable the vertex array, call `glEnableClientState' and
`glDisableClientState' with the argument `GL_VERTEX_ARRAY'.  If enabled,
the vertex array is used when `glArrayElement', `glDrawArrays',
`glMultiDrawArrays', `glDrawElements', `glMultiDrawElements', or
`glDrawRangeElements' is called.

`GL_INVALID_VALUE' is generated if SIZE is not 2, 3, or 4.

`GL_INVALID_ENUM' is generated if TYPE is not an accepted value.

`GL_INVALID_VALUE' is generated if STRIDE is negative.")

(define-gl-procedures
  ((glVertex2s (x GLshort) (y GLshort) -> void)
   (glVertex2i (x GLint) (y GLint) -> void)
   (glVertex2f (x GLfloat) (y GLfloat) -> void)
   (glVertex2d (x GLdouble) (y GLdouble) -> void)
   (glVertex3s
     (x GLshort)
     (y GLshort)
     (z GLshort)
     ->
     void)
   (glVertex3i
     (x GLint)
     (y GLint)
     (z GLint)
     ->
     void)
   (glVertex3f
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     ->
     void)
   (glVertex3d
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     ->
     void)
   (glVertex4s
     (x GLshort)
     (y GLshort)
     (z GLshort)
     (w GLshort)
     ->
     void)
   (glVertex4i
     (x GLint)
     (y GLint)
     (z GLint)
     (w GLint)
     ->
     void)
   (glVertex4f
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     (w GLfloat)
     ->
     void)
   (glVertex4d
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     (w GLdouble)
     ->
     void)
   (glVertex2sv (v const-GLshort-*) -> void)
   (glVertex2iv (v const-GLint-*) -> void)
   (glVertex2fv (v const-GLfloat-*) -> void)
   (glVertex2dv (v const-GLdouble-*) -> void)
   (glVertex3sv (v const-GLshort-*) -> void)
   (glVertex3iv (v const-GLint-*) -> void)
   (glVertex3fv (v const-GLfloat-*) -> void)
   (glVertex3dv (v const-GLdouble-*) -> void)
   (glVertex4sv (v const-GLshort-*) -> void)
   (glVertex4iv (v const-GLint-*) -> void)
   (glVertex4fv (v const-GLfloat-*) -> void)
   (glVertex4dv (v const-GLdouble-*) -> void))
  "Specify a vertex.

X
     Y

     Z

     W

     Specify X, Y, Z, and W coordinates of a vertex.  Not all parameters
     are present in all forms of the command.

`glVertex' commands are used within `glBegin'/`glEnd' pairs to specify
point, line, and polygon vertices.  The current color, normal, texture
coordinates, and fog coordinate are associated with the vertex when
`glVertex' is called.

When only X and Y are specified, Z defaults to 0 and W defaults to 1.
When X , Y , and Z are specified, W defaults to 1.")

(define-gl-procedures
  ((glViewport
     (x GLint)
     (y GLint)
     (width GLsizei)
     (height GLsizei)
     ->
     void))
  "Set the viewport.

X
     Y

     Specify the lower left corner of the viewport rectangle, in pixels.
     The initial value is (0,0).

WIDTH
     HEIGHT

     Specify the width and height of the viewport.  When a GL context is
     first attached to a window, WIDTH and HEIGHT are set to the
     dimensions of that window.

`glViewport' specifies the affine transformation of X and Y from
normalized device coordinates to window coordinates.  Let (X_ND,Y_ND) be
normalized device coordinates.  Then the window coordinates (X_W,Y_W)
are computed as follows:

X_W=(X_ND+1,)\u2062(WIDTH/2,)+X

Y_W=(Y_ND+1,)\u2062(HEIGHT/2,)+Y

Viewport width and height are silently clamped to a range that depends
on the implementation.  To query this range, call `glGet' with argument
`GL_MAX_VIEWPORT_DIMS'.

`GL_INVALID_VALUE' is generated if either WIDTH or HEIGHT is negative.

`GL_INVALID_OPERATION' is generated if `glViewport' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

(define-gl-procedures
  ((glWindowPos2s (x GLshort) (y GLshort) -> void)
   (glWindowPos2i (x GLint) (y GLint) -> void)
   (glWindowPos2f (x GLfloat) (y GLfloat) -> void)
   (glWindowPos2d (x GLdouble) (y GLdouble) -> void)
   (glWindowPos3s
     (x GLshort)
     (y GLshort)
     (z GLshort)
     ->
     void)
   (glWindowPos3i
     (x GLint)
     (y GLint)
     (z GLint)
     ->
     void)
   (glWindowPos3f
     (x GLfloat)
     (y GLfloat)
     (z GLfloat)
     ->
     void)
   (glWindowPos3d
     (x GLdouble)
     (y GLdouble)
     (z GLdouble)
     ->
     void)
   (glWindowPos2sv (v const-GLshort-*) -> void)
   (glWindowPos2iv (v const-GLint-*) -> void)
   (glWindowPos2fv (v const-GLfloat-*) -> void)
   (glWindowPos2dv (v const-GLdouble-*) -> void)
   (glWindowPos3sv (v const-GLshort-*) -> void)
   (glWindowPos3iv (v const-GLint-*) -> void)
   (glWindowPos3fv (v const-GLfloat-*) -> void)
   (glWindowPos3dv (v const-GLdouble-*) -> void))
  "Specify the raster position in window coordinates for pixel operations.

X
     Y

     Z

     Specify the X , Y , Z coordinates for the raster position.

The GL maintains a 3D position in window coordinates.  This position,
called the raster position, is used to position pixel and bitmap write
operations.  It is maintained with subpixel accuracy.  See `glBitmap',
`glDrawPixels', and `glCopyPixels'.

`glWindowPos2' specifies the X and Y coordinates, while Z is implicitly
set to 0.  `glWindowPos3' specifies all three coordinates.  The W
coordinate of the current raster position is always set to 1.0.

`glWindowPos' directly updates the X and Y coordinates of the current
raster position with the values specified.  That is, the values are
neither transformed by the current modelview and projection matrices,
nor by the viewport-to-window transform.  The Z coordinate of the
current raster position is updated in the following manner:

Z={(N), (F), (N+Z×(F-N,),)\u2062(IF\u2062Z<=0), (IF\u2062Z>=1), (`otherwise',),



where N is `GL_DEPTH_RANGE''s near value, and F is `GL_DEPTH_RANGE''s
far value.  See `glDepthRange'.

The specified coordinates are not clip-tested, causing the raster
position to always be valid.

The current raster position also includes some associated color data and
texture coordinates.  If lighting is enabled, then
`GL_CURRENT_RASTER_COLOR' (in RGBA mode) or `GL_CURRENT_RASTER_INDEX'
(in color index mode) is set to the color produced by the lighting
calculation (see `glLight', `glLightModel', and `glShadeModel').  If
lighting is disabled, current color (in RGBA mode, state variable
`GL_CURRENT_COLOR') or color index (in color index mode, state variable
`GL_CURRENT_INDEX') is used to update the current raster color.
`GL_CURRENT_RASTER_SECONDARY_COLOR' (in RGBA mode) is likewise updated.

Likewise, `GL_CURRENT_RASTER_TEXTURE_COORDS' is updated as a function of
`GL_CURRENT_TEXTURE_COORDS', based on the texture matrix and the texture
generation functions (see `glTexGen').  The `GL_CURRENT_RASTER_DISTANCE'
is set to the `GL_CURRENT_FOG_COORD'.



`GL_INVALID_OPERATION' is generated if `glWindowPos' is executed between
the execution of `glBegin' and the corresponding execution of `glEnd'.")

