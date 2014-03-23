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
  (glx low-level)
  #:use-module
  (glx runtime)
  #:use-module
  (glx types)
  #:export
  (glXChooseFBConfig
    glXChooseVisual
    glXCopyContext
    glXCreateContext
    glXCreateGLXPixmap
    glXCreateNewContext
    glXCreatePbuffer
    glXCreatePixmap
    glXCreateWindow
    glXDestroyContext
    glXDestroyGLXPixmap
    glXDestroyPbuffer
    glXDestroyPixmap
    glXDestroyWindow
    glXFreeContextEXT
    glXGetClientString
    glXGetConfig
    glXGetContextIDEXT
    glXGetCurrentContext
    glXGetCurrentDisplay
    glXGetCurrentDrawable
    glXGetCurrentReadDrawable
    glXGetFBConfigAttrib
    glXGetFBConfigs
    glXGetProcAddress
    glXGetSelectedEvent
    glXGetVisualFromFBConfig
    glXImportContextEXT
    glXIsDirect
    glXMakeContextCurrent
    glXMakeCurrent
    glXQueryContextInfoEXT
    glXQueryContext
    glXQueryDrawable
    glXQueryExtensionsString
    glXQueryExtension
    glXQueryServerString
    glXQueryVersion
    glXSelectEvent
    glXSwapBuffers
    glXUseXFont
    glXWaitGL
    glXWaitX))

(define-glx-procedures
  ((glXChooseFBConfig
     (dpy Display-*)
     (screen int)
     (attrib_list const-int-*)
     (nelements int-*)
     ->
     GLXFBConfig-*))
  "Return a list of GLX frame buffer configurations that match the
specified attributes.

DPY
     Specifies the connection to the X server.

SCREEN
     Specifies the screen number.

ATTRIB_LIST
     Specifies a list of attribute/value pairs.  The last attribute must
     be `None'.

NELEMENTS
     Returns the number of elements in the list returned by
     `glXChooseFBConfig'.

`glXChooseFBConfig' returns GLX frame buffer configurations that match
the attributes specified in ATTRIB_LIST, or `NULL' if no matches are
found.  If ATTRIB_LIST is `NULL', then `glXChooseFBConfig' returns an
array of GLX frame buffer configurations that are available on the
specified screen.  If an error occurs, no frame buffer configurations
exist on the specified screen, or if no frame buffer configurations
match the specified attributes, then `NULL' is returned.  Use `XFree' to
free the memory returned by `glXChooseFBConfig'.

All attributes in ATTRIB_LIST, including boolean attributes, are
immediately followed by the corresponding desired value.  The list is
terminated with `None'.  If an attribute is not specified in
ATTRIB_LIST, then the default value (see below) is used (and the
attribute is said to be specified implicitly).  For example, if
`GLX_STEREO' is not specified, then it is assumed to be `False'.  For
some attributes, the default is `GLX_DONT_CARE', meaning that any value
is OK for this attribute, so the attribute will not be checked.

Attributes are matched in an attribute-specific manner.  Some of the
attributes, such as `GLX_LEVEL', must match the specified value exactly;
others, such as, `GLX_RED_SIZE' must meet or exceed the specified
minimum values.  If more than one GLX frame buffer configuration is
found, then a list of configurations, sorted according to the ``best''
match criteria, is returned.  The match criteria for each attribute and
the exact sorting order is defined below.

The interpretations of the various GLX visual attributes are as follows:

`GLX_FBCONFIG_ID'


     Must be followed by a valid XID that indicates the desired GLX
     frame buffer configuration.  When a `GLX_FBCONFIG_ID' is specified,
     all attributes are ignored.  The default value is `GLX_DONT_CARE'.

`GLX_BUFFER_SIZE'


     Must be followed by a nonnegative integer that indicates the
     desired color index buffer size.  The smallest index buffer of at
     least the specified size is preferred.  This attribute is ignored
     if `GLX_COLOR_INDEX_BIT' is not set in `GLX_RENDER_TYPE'.  The
     default value is 0.

`GLX_LEVEL'


     Must be followed by an integer buffer-level specification.  This
     specification is honored exactly.  Buffer level 0 corresponds to
     the default frame buffer of the display.  Buffer level 1 is the
     first overlay frame buffer, level two the second overlay frame
     buffer, and so on.  Negative buffer levels correspond to underlay
     frame buffers.  The default value is 0.

`GLX_DOUBLEBUFFER'


     Must be followed by `True' or `False'.  If `True' is specified,
     then only double-buffered frame buffer configurations are
     considered; if `False' is specified, then only single-buffered
     frame buffer configurations are considered.  The default value is
     `GLX_DONT_CARE'.

`GLX_STEREO'


     Must be followed by `True' or `False'.  If `True' is specified,
     then only stereo frame buffer configurations are considered; if
     `False' is specified, then only monoscopic frame buffer
     configurations are considered.  The default value is `False'.

`GLX_AUX_BUFFERS'


     Must be followed by a nonnegative integer that indicates the
     desired number of auxiliary buffers.  Configurations with the
     smallest number of auxiliary buffers that meet or exceed the
     specified number are preferred.  The default value is 0.

`GLX_RED_SIZE', `GLX_GREEN_SIZE', `GLX_BLUE_SIZE', `GLX_ALPHA_SIZE'


     Each attribute, if present, must be followed by a nonnegative
     minimum size specification or `GLX_DONT_CARE'.  The largest
     available total RGBA color buffer size (sum of `GLX_RED_SIZE',
     `GLX_GREEN_SIZE', `GLX_BLUE_SIZE', and `GLX_ALPHA_SIZE') of at
     least the minimum size specified for each color component is
     preferred.  If the requested number of bits for a color component
     is 0 or `GLX_DONT_CARE', it is not considered.  The default value
     for each color component is 0.

`GLX_DEPTH_SIZE'


     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, frame buffer configurations with no depth
     buffer are preferred.  Otherwise, the largest available depth
     buffer of at least the minimum size is preferred.  The default
     value is 0.

`GLX_STENCIL_SIZE'


     Must be followed by a nonnegative integer that indicates the
     desired number of stencil bitplanes.  The smallest stencil buffer
     of at least the specified size is preferred.  If the desired value
     is zero, frame buffer configurations with no stencil buffer are
     preferred.  The default value is 0.

`GLX_ACCUM_RED_SIZE'


     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, frame buffer configurations with no red
     accumulation buffer are preferred.  Otherwise, the largest possible
     red accumulation buffer of at least the minimum size is preferred.
     The default value is 0.

`GLX_ACCUM_GREEN_SIZE'


     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, frame buffer configurations with no green
     accumulation buffer are preferred.  Otherwise, the largest possible
     green accumulation buffer of at least the minimum size is
     preferred.  The default value is 0.

`GLX_ACCUM_BLUE_SIZE'


     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, frame buffer configurations with no blue
     accumulation buffer are preferred.  Otherwise, the largest possible
     blue accumulation buffer of at least the minimum size is preferred.
     The default value is 0.

`GLX_ACCUM_ALPHA_SIZE'


     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, frame buffer configurations with no alpha
     accumulation buffer are preferred.  Otherwise, the largest possible
     alpha accumulation buffer of at least the minimum size is
     preferred.  The default value is 0.

`GLX_RENDER_TYPE'


     Must be followed by a mask indicating which OpenGL rendering modes
     the frame buffer configuration must support.  Valid bits are
     `GLX_RGBA_BIT' and `GLX_COLOR_INDEX_BIT'.  If the mask is set to
     `GLX_RGBA_BIT' | `GLX_COLOR_INDEX_BIT', then only frame buffer
     configurations that can be bound to both RGBA contexts and color
     index contexts will be considered.  The default value is
     `GLX_RGBA_BIT'.

`GLX_DRAWABLE_TYPE'


     Must be followed by a mask indicating which GLX drawable types the
     frame buffer configuration must support.  Valid bits are
     `GLX_WINDOW_BIT', `GLX_PIXMAP_BIT', and `GLX_PBUFFER_BIT'.  For
     example, if mask is set to `GLX_WINDOW_BIT' | `GLX_PIXMAP_BIT',
     only frame buffer configurations that support both windows and GLX
     pixmaps will be considered.  The default value is `GLX_WINDOW_BIT'.

`GLX_X_RENDERABLE'


     Must be followed by `True' or `False'.  If `True' is specified,
     then only frame buffer configurations that have associated X
     visuals (and can be used to render to Windows and/or GLX pixmaps)
     will be considered.  The default value is `GLX_DONT_CARE'.

`GLX_X_VISUAL_TYPE'


     Must be followed by one of `GLX_TRUE_COLOR', `GLX_DIRECT_COLOR',
     `GLX_PSEUDO_COLOR', `GLX_STATIC_COLOR', `GLX_GRAY_SCALE', or
     `GLX_STATIC_GRAY', indicating the desired X visual type.  Not all
     frame buffer configurations have an associated X visual.  If
     `GLX_DRAWABLE_TYPE' is specified in ATTRIB_LIST and the mask that
     follows does not have `GLX_WINDOW_BIT' set, then this value is
     ignored.  It is also ignored if `GLX_X_RENDERABLE' is specified as
     `False'.  RGBA rendering may be supported for visuals of type
     `GLX_TRUE_COLOR', `GLX_DIRECT_COLOR', `GLX_PSEUDO_COLOR', or
     `GLX_STATIC_COLOR', but color index rendering is only supported for
     visuals of type `GLX_PSEUDO_COLOR' or `GLX_STATIC_COLOR' (i.e.,
     single-channel visuals).  The tokens `GLX_GRAY_SCALE' and
     `GLX_STATIC_GRAY' will not match current OpenGL enabled visuals,
     but are included for future use.  The default value for
     `GLX_X_VISUAL_TYPE' is `GLX_DONT_CARE'.

`GLX_CONFIG_CAVEAT'


     Must be followed by one of `GLX_NONE', `GLX_SLOW_CONFIG',
     `GLX_NON_CONFORMANT_CONFIG'.  If `GLX_NONE' is specified, then only
     frame buffer configurations with no caveats will be considered; if
     `GLX_SLOW_CONFIG' is specified, then only slow frame buffer
     configurations will be considered; if `GLX_NON_CONFORMANT_CONFIG'
     is specified, then only nonconformant frame buffer configurations
     will be considered.  The default value is `GLX_DONT_CARE'.

`GLX_TRANSPARENT_TYPE'


     Must be followed by one of `GLX_NONE', `GLX_TRANSPARENT_RGB',
     `GLX_TRANSPARENT_INDEX'.  If `GLX_NONE' is specified, then only
     opaque frame buffer configurations will be considered; if
     `GLX_TRANSPARENT_RGB' is specified, then only transparent frame
     buffer configurations that support RGBA rendering will be
     considered; if `GLX_TRANSPARENT_INDEX' is specified, then only
     transparent frame buffer configurations that support color index
     rendering will be considered.  The default value is `GLX_NONE'.

`GLX_TRANSPARENT_INDEX_VALUE'


     Must be followed by an integer value indicating the transparent
     index value; the value must be between 0 and the maximum frame
     buffer value for indices.  Only frame buffer configurations that
     use the specified transparent index value will be considered.  The
     default value is `GLX_DONT_CARE'.  This attribute is ignored unless
     `GLX_TRANSPARENT_TYPE' is included in ATTRIB_LIST and specified as
     `GLX_TRANSPARENT_INDEX'.

`GLX_TRANSPARENT_RED_VALUE'


     Must be followed by an integer value indicating the transparent red
     value; the value must be between 0 and the maximum frame buffer
     value for red.  Only frame buffer configurations that use the
     specified transparent red value will be considered.  The default
     value is `GLX_DONT_CARE'.  This attribute is ignored unless
     `GLX_TRANSPARENT_TYPE' is included in ATTRIB_LIST and specified as
     `GLX_TRANSPARENT_RGB'.

`GLX_TRANSPARENT_GREEN_VALUE'


     Must be followed by an integer value indicating the transparent
     green value; the value must be between 0 and the maximum frame
     buffer value for green.  Only frame buffer configurations that use
     the specified transparent green value will be considered.  The
     default value is `GLX_DONT_CARE'.  This attribute is ignored unless
     `GLX_TRANSPARENT_TYPE' is included in ATTRIB_LIST and specified as
     `GLX_TRANSPARENT_RGB'.

`GLX_TRANSPARENT_BLUE_VALUE'


     Must be followed by an integer value indicating the transparent
     blue value; the value must be between 0 and the maximum frame
     buffer value for blue.  Only frame buffer configurations that use
     the specified transparent blue value will be considered.  The
     default value is `GLX_DONT_CARE'.  This attribute is ignored unless
     `GLX_TRANSPARENT_TYPE' is included in ATTRIB_LIST and specified as
     `GLX_TRANSPARENT_RGB'.

`GLX_TRANSPARENT_ALPHA_VALUE'


     Must be followed by an integer value indicating the transparent
     alpha value; the value must be between 0 and the maximum frame
     buffer value for alpha.  Only frame buffer configurations that use
     the specified transparent alpha value will be considered.  The
     default value is `GLX_DONT_CARE'.

When more than one GLX frame buffer configuration matches the specified
attributes, a list of matching configurations is returned.  The list is
sorted according to the following precedence rules, which are applied in
ascending order (i.e., configurations that are considered equal by a
lower numbered rule are sorted by the higher numbered rule):

1.
     By `GLX_CONFIG_CAVEAT' where the precedence is `GLX_NONE',
     `GLX_SLOW_CONFIG', and `GLX_NON_CONFORMANT_CONFIG'.

2.
     Larger total number of RGBA color components (`GLX_RED_SIZE',
     `GLX_GREEN_SIZE', `GLX_BLUE_SIZE', plus `GLX_ALPHA_SIZE') that have
     higher number of bits.  If the requested number of bits in
     ATTRIB_LIST is zero or `GLX_DONT_CARE' for a particular color
     component, then the number of bits for that component is not
     considered.

3.
     Smaller `GLX_BUFFER_SIZE'.

4.
     Single buffered configuration (`GLX_DOUBLEBUFFER' being `False'
     precedes a double buffered one.

5.
     Smaller `GLX_AUX_BUFFERS'.

6.
     Larger `GLX_DEPTH_SIZE'.

7.
     Smaller `GLX_STENCIL_SIZE'.

8.
     Larger total number of accumulation buffer color components
     (`GLX_ACCUM_RED_SIZE', `GLX_ACCUM_GREEN_SIZE',
     `GLX_ACCUM_BLUE_SIZE', plus `GLX_ACCUM_ALPHA_SIZE') that have
     higher number of bits.  If the requested number of bits in
     ATTRIB_LIST is zero or `GLX_DONT_CARE' for a particular color
     component, then the number of bits for that component is not
     considered.

9.
     By `GLX_X_VISUAL_TYPE' where the precedence order is
     `GLX_TRUE_COLOR', `GLX_DIRECT_COLOR', `GLX_PSEUDO_COLOR',
     `GLX_STATIC_COLOR', `GLX_GRAY_SCALE', `GLX_STATIC_GRAY'.

`NULL' is returned if an undefined GLX attribute is encountered in
ATTRIB_LIST, if SCREEN is invalid, or if DPY does not support the GLX
extension.")

(define-glx-procedures
  ((glXChooseVisual
     (dpy Display-*)
     (screen int)
     (attribList int-*)
     ->
     XVisualInfo*))
  "Return a visual that matches specified attributes.

DPY
     Specifies the connection to the X server.

SCREEN
     Specifies the screen number.

ATTRIBLIST
     Specifies a list of boolean attributes and integer attribute/value
     pairs.  The last attribute must be `None'.

`glXChooseVisual' returns a pointer to an XVisualInfo structure
describing the visual that best meets a minimum specification.  The
boolean GLX attributes of the visual that is returned will match the
specified values, and the integer GLX attributes will meet or exceed the
specified minimum values.  If all other attributes are equivalent, then
TrueColor and PseudoColor visuals have priority over DirectColor and
StaticColor visuals, respectively.  If no conforming visual exists,
`NULL' is returned.  To free the data returned by this function, use
`XFree'.

All boolean GLX attributes default to `False' except `GLX_USE_GL', which
defaults to `True'.  All integer GLX attributes default to zero.  Default
specifications are superseded by attributes included in ATTRIBLIST.
Boolean attributes included in ATTRIBLIST are understood to be `True'.
Integer attributes and enumerated type attributes are followed
immediately by the corresponding desired or minimum value.  The list
must be terminated with `None'.

The interpretations of the various GLX visual attributes are as follows:

`GLX_USE_GL'
     Ignored.  Only visuals that can be rendered with GLX are
     considered.

`GLX_BUFFER_SIZE'
     Must be followed by a nonnegative integer that indicates the
     desired color index buffer size.  The smallest index buffer of at
     least the specified size is preferred.  Ignored if `GLX_RGBA' is
     asserted.

`GLX_LEVEL'
     Must be followed by an integer buffer-level specification.  This
     specification is honored exactly.  Buffer level zero corresponds to
     the main frame buffer of the display.  Buffer level one is the
     first overlay frame buffer, level two the second overlay frame
     buffer, and so on.  Negative buffer levels correspond to underlay
     frame buffers.

`GLX_RGBA'
     If present, only TrueColor and DirectColor visuals are considered.
     Otherwise, only PseudoColor and StaticColor visuals are considered.

`GLX_DOUBLEBUFFER'
     If present, only double-buffered visuals are considered.  Otherwise,
     only single-buffered visuals are considered.

`GLX_STEREO'
     If present, only stereo visuals are considered.  Otherwise, only
     monoscopic visuals are considered.

`GLX_AUX_BUFFERS'
     Must be followed by a nonnegative integer that indicates the
     desired number of auxiliary buffers.  Visuals with the smallest
     number of auxiliary buffers that meets or exceeds the specified
     number are preferred.

`GLX_RED_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, the smallest available red buffer is preferred.
     Otherwise, the largest available red buffer of at least the minimum
     size is preferred.

`GLX_GREEN_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, the smallest available green buffer is
     preferred.  Otherwise, the largest available green buffer of at
     least the minimum size is preferred.

`GLX_BLUE_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, the smallest available blue buffer is
     preferred.  Otherwise, the largest available blue buffer of at
     least the minimum size is preferred.

`GLX_ALPHA_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, the smallest available alpha buffer is
     preferred.  Otherwise, the largest available alpha buffer of at
     least the minimum size is preferred.

`GLX_DEPTH_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, visuals with no depth buffer are preferred.
     Otherwise, the largest available depth buffer of at least the
     minimum size is preferred.

`GLX_STENCIL_SIZE'
     Must be followed by a nonnegative integer that indicates the
     desired number of stencil bitplanes.  The smallest stencil buffer
     of at least the specified size is preferred.  If the desired value
     is zero, visuals with no stencil buffer are preferred.

`GLX_ACCUM_RED_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, visuals with no red accumulation buffer are
     preferred.  Otherwise, the largest possible red accumulation buffer
     of at least the minimum size is preferred.

`GLX_ACCUM_GREEN_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, visuals with no green accumulation buffer are
     preferred.  Otherwise, the largest possible green accumulation
     buffer of at least the minimum size is preferred.

`GLX_ACCUM_BLUE_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, visuals with no blue accumulation buffer are
     preferred.  Otherwise, the largest possible blue accumulation
     buffer of at least the minimum size is preferred.

`GLX_ACCUM_ALPHA_SIZE'
     Must be followed by a nonnegative minimum size specification.  If
     this value is zero, visuals with no alpha accumulation buffer are
     preferred.  Otherwise, the largest possible alpha accumulation
     buffer of at least the minimum size is preferred.

`NULL' is returned if an undefined GLX attribute is encountered in
ATTRIBLIST.")

(define-glx-procedures
  ((glXCopyContext
     (dpy Display-*)
     (src GLXContext)
     (dst GLXContext)
     (mask unsigned-long)
     ->
     void))
  "Copy state from one rendering context to another.

DPY
     Specifies the connection to the X server.

SRC
     Specifies the source context.

DST
     Specifies the destination context.

MASK
     Specifies which portions of SRC state are to be copied to DST.

`glXCopyContext' copies selected groups of state variables from SRC to
DST.  MASK indicates which groups of state variables are to be copied.
MASK contains the bitwise OR of the same symbolic names that are passed
to the GL command `glPushAttrib'.  The single symbolic constant
`GLX_ALL_ATTRIB_BITS' can be used to copy the maximum possible portion
of rendering state.

The copy can be done only if the renderers named by SRC and DST share an
address space.  Two rendering contexts share an address space if both
are nondirect using the same server, or if both are direct and owned by
a single process.  Note that in the nondirect case it is not necessary
for the calling threads to share an address space, only for their
related rendering contexts to share an address space.

Not all values for GL state can be copied.  For example, pixel pack and
unpack state, render mode state, and select and feedback state are not
copied.  The state that can be copied is exactly the state that is
manipulated by the GL command `glPushAttrib'.

An implicit `glFlush' is done by `glXCopyContext' if SRC is the current
context for the calling thread.

`BadMatch' is generated if rendering contexts SRC and DST do not share
an address space or were not created with respect to the same screen.

`BadAccess' is generated if DST is current to any thread (including the
calling thread) at the time `glXCopyContext' is called.

`GLXBadCurrentWindow' is generated if SRC is the current context and the
current drawable is a window that is no longer valid.

`GLXBadContext' is generated if either SRC or DST is not a valid GLX
context.")

(define-glx-procedures
  ((glXCreateContext
     (dpy Display-*)
     (vis XVisualInfo-*)
     (shareList GLXContext)
     (direct Bool)
     ->
     GLXContext))
  "Create a new GLX rendering context.

DPY
     Specifies the connection to the X server.

VIS
     Specifies the visual that defines the frame buffer resources
     available to the rendering context.  It is a pointer to an
     `XVisualInfo' structure, not a visual ID or a pointer to a
     `Visual'.

SHARELIST
     Specifies the context with which to share display lists.  `NULL'
     indicates that no sharing is to take place.

DIRECT
     Specifies whether rendering is to be done with a direct connection
     to the graphics system if possible (`True') or through the X server
     (`False').

`glXCreateContext' creates a GLX rendering context and returns its
handle.  This context can be used to render into both windows and GLX
pixmaps.  If `glXCreateContext' fails to create a rendering context,
`NULL' is returned.

If DIRECT is `True', then a direct rendering context is created if the
implementation supports direct rendering, if the connection is to an X
server that is local, and if a direct rendering context is available.
(An implementation may return an indirect context when DIRECT is
`True'.) If DIRECT is `False', then a rendering context that renders
through the X server is always created.  Direct rendering provides a
performance advantage in some implementations.  However, direct
rendering contexts cannot be shared outside a single process, and they
may be unable to render to GLX pixmaps.

If SHARELIST is not `NULL', then all display-list indexes and
definitions are shared by context SHARELIST and by the newly created
context.  An arbitrary number of contexts can share a single
display-list space.  However, all rendering contexts that share a single
display-list space must themselves exist in the same address space.  Two
rendering contexts share an address space if both are nondirect using
the same server, or if both are direct and owned by a single process.
Note that in the nondirect case, it is not necessary for the calling
threads to share an address space, only for their related rendering
contexts to share an address space.

If the GL version is 1.1 or greater, then all texture objects except
object 0 are shared by any contexts that share display lists.

`NULL' is returned if execution fails on the client side.

`BadMatch' is generated if the context to be created would not share the
address space or the screen of the context specified by SHARELIST.

`BadValue' is generated if VIS is not a valid visual (for example, if a
particular GLX implementation does not support it).

`GLXBadContext' is generated if SHARELIST is not a GLX context and is
not `NULL'.

`BadAlloc' is generated if the server does not have enough resources to
allocate the new context.")

(define-glx-procedures
  ((glXCreateGLXPixmap
     (dpy Display-*)
     (vis XVisualInfo-*)
     (pixmap Pixmap)
     ->
     GLXPixmap))
  "Create an off-screen GLX rendering area.

DPY
     Specifies the connection to the X server.

VIS
     Specifies the visual that defines the structure of the rendering
     area.  It is a pointer to an `XVisualInfo' structure, not a visual
     ID or a pointer to a `Visual'.

PIXMAP
     Specifies the X pixmap that will be used as the front left color
     buffer of the off-screen rendering area.

`glXCreateGLXPixmap' creates an off-screen rendering area and returns
its XID.  Any GLX rendering context that was created with respect to VIS
can be used to render into this off-screen area.  Use `glXMakeCurrent'
to associate the rendering area with a GLX rendering context.

The X pixmap identified by PIXMAP is used as the front left buffer of
the resulting off-screen rendering area.  All other buffers specified by
VIS, including color buffers other than the front left buffer, are
created without externally visible names.  GLX pixmaps with
double-buffering are supported.  However, `glXSwapBuffers' is ignored by
these pixmaps.

Some implementations may not support GLX pixmaps with direct rendering
contexts.

`BadMatch' is generated if the depth of PIXMAP does not match the depth
value reported by core X11 for VIS, or if PIXMAP was not created with
respect to the same screen as VIS.

`BadValue' is generated if VIS is not a valid XVisualInfo pointer (for
example, if a particular GLX implementation does not support this
visual).

`BadPixmap' is generated if PIXMAP is not a valid pixmap.

`BadAlloc' is generated if the server cannot allocate the GLX pixmap.")

(define-glx-procedures
  ((glXCreateNewContext
     (dpy Display-*)
     (config GLXFBConfig)
     (render_type int)
     (share_list GLXContext)
     (direct Bool)
     ->
     GLXContext))
  "Create a new GLX rendering context.

DPY
     Specifies the connection to the X server.

CONFIG
     Specifies the GLXFBConfig structure with the desired attributes for
     the context.

RENDER_TYPE
     Specifies the type of the context to be created.  Must be one of
     `GLX_RGBA_TYPE' or `GLX_COLOR_INDEX_TYPE'.

SHARE_LIST
     Specifies the context with which to share display lists.  `NULL'
     indicates that no sharing is to take place.

SHARE_LIST
     Specifies whether rendering is to be done with a direct connection
     to the graphics system if possible (`True') or through the X server
     (`False').

`glXCreateNewContext' creates a GLX rendering context and returns its
handle.  This context can be used to render into GLX windows, pixmaps,
or pixel buffers.  If `glXCreateNewContext' fails to create a rendering
context, `NULL' is returned.

If RENDER_TYPE is `GLX_RGBA_TYPE', then a context that supports RGBA
rendering is created.  If CONFIG is `GLX_COLOR_INDEX_TYPE', then context
supporting color-index rendering is created.

If RENDER_TYPE is not `NULL', then all display-list indexes and
definitions are shared by context RENDER_TYPE and by the newly created
context.  An arbitrary number of contexts can share a single
display-list space.  However, all rendering contexts that share a single
display-list space must themselves exist in the same address space.  Two
rendering contexts share an address space if both are nondirect using
the same server, or if both are direct and owned by a single process.
Note that in the nondirect case, it is not necessary for the calling
threads to share an address space, only for their related rendering
contexts to share an address space.

If SHARE_LIST is `True', then a direct-rendering context is created if
the implementation supports direct rendering, if the connection is to an
X server that is local, and if a direct-rendering context is available.
(An implementation may return an indirect context when SHARE_LIST is
`True'.) If SHARE_LIST is `False', then a rendering context that renders
through the X server is always created.  Direct rendering provides a
performance advantage in some implementations.  However,
direct-rendering contexts cannot be shared outside a single process, and
they may be unable to render to GLX pixmaps.

`NULL' is returned if execution fails on the client side.

`GLXBadContext' is generated if RENDER_TYPE is not a GLX context and is
not `NULL'.

`GLXBadFBConfig' is generated if CONFIG is not a valid GLXFBConfig.

`BadMatch' is generated if the context to be created would not share the
address space or the screen of the context specified by RENDER_TYPE.

`BadAlloc' is generated if the server does not have enough resources to
allocate the new context.

`BadValue' is generated if CONFIG is not a valid visual (for example, if
a particular GLX implementation does not support it).")

(define-glx-procedures
  ((glXCreatePbuffer
     (dpy Display-*)
     (config GLXFBConfig)
     (attrib_list const-int-*)
     ->
     GLXPbuffer))
  "Create an off-screen rendering area.

DPY
     Specifies the connection to the X server.

CONFIG
     Specifies a GLXFBConfig structure with the desired attributes for
     the window.

ATTRIB_LIST
     Specifies a list of attribute value pairs, which must be terminated
     with `None' or `NULL'.  Accepted attributes are
     `GLX_PBUFFER_WIDTH', `GLX_PBUFFER_HEIGHT',
     `GLX_PRESERVED_CONTENTS', and `GLX_LARGEST_PBUFFER'.

`glXCreatePbuffer' creates an off-screen rendering area and returns its
XID.  Any GLX rendering context that was created with respect to CONFIG
can be used to render into this window.  Use `glXMakeContextCurrent' to
associate the rendering area with a GLX rendering context.

The accepted attributes for a GLXPbuffer are:

`GLX_PBUFFER_WIDTH'
     Specify the pixel width of the requested GLXPbuffer.  The default
     value is 0.

`GLX_PBUFFER_HEIGHT'
     Specify the pixel height of the requested GLXPbuffer.  The default
     value is 0.

`GLX_LARGEST_PBUFFER'
     Specify to obtain the largest available pixel buffer, if the
     requested allocation would have failed.  The width and height of
     the allocated pixel buffer will never exceed the specified
     `GLX_PBUFFER_WIDTH' or `GLX_PBUFFER_HEIGHT', respectively.  Use
     `glXQueryDrawable' to retrieve the dimensions of the allocated
     pixel buffer.  The default value is `False'.

`GLX_PRESERVED_CONTENTS'
     Specify if the contents of the pixel buffer should be preserved
     when a resource conflict occurs.  If set to `False', the contents
     of the pixel buffer may be lost at any time.  If set to `True', or
     not specified in ATTRIB_LIST, then the contents of the pixel buffer
     will be preserved (most likely by copying the contents into main
     system memory from the frame buffer).  In either case, the client
     can register (using `glXSelectEvent', to receive pixel buffer
     clobber events that are generated when the pbuffer contents have
     been preserved or damaged.

GLXPbuffers contain the color and ancillary buffers specified by CONFIG.
It is possible to create a pixel buffer with back buffers and to swap
those buffers using `glXSwapBuffers'.

`BadAlloc' is generated if there are insufficient resources to allocate
the requested GLXPbuffer.

`GLXBadFBConfig' is generated if CONFIG is not a valid GLXFBConfig.

`BadMatch' is generated if CONFIG does not support rendering to pixel
buffers (e.g., `GLX_DRAWABLE_TYPE' does not contain `GLX_PBUFFER_BIT').")

(define-glx-procedures
  ((glXCreatePixmap
     (dpy Display-*)
     (config GLXFBConfig)
     (pixmap Pixmap)
     (attrib_list const-int-*)
     ->
     GLXPixmap))
  "Create an off-screen rendering area.

DPY
     Specifies the connection to the X server.

CONFIG
     Specifies a GLXFBConfig structure with the desired attributes for
     the window.

PIXMAP
     Specifies the X pixmap to be used as the rendering area.

ATTRIB_LIST
     Currently unused.  This must be set to `NULL' or be an empty list
     (i.e., one in which the first element is `None').

`glXCreatePixmap' creates an off-screen rendering area and returns its
XID.  Any GLX rendering context that was created with respect to CONFIG
can be used to render into this window.  Use `glXMakeCurrent' to
associate the rendering area with a GLX rendering context.

`BadMatch' is generated if PIXMAP was not created with a visual that
corresponds to CONFIG.

`BadMatch' is generated if CONFIG does not support rendering to windows
(e.g., `GLX_DRAWABLE_TYPE' does not contain `GLX_WINDOW_BIT').

`BadWindow' is generated if PIXMAP is not a valid window XID.  `BadAlloc'
is generated if there is already a GLXFBConfig associated with PIXMAP.

`BadAlloc' is generated if the X server cannot allocate a new GLX
window.

`GLXBadFBConfig' is generated if CONFIG is not a valid GLXFBConfig.")

(define-glx-procedures
  ((glXCreateWindow
     (dpy Display-*)
     (config GLXFBConfig)
     (win Window)
     (attrib_list const-int-*)
     ->
     GLXWindow))
  "Create an on-screen rendering area.

DPY
     Specifies the connection to the X server.

CONFIG
     Specifies a GLXFBConfig structure with the desired attributes for
     the window.

WIN
     Specifies the X window to be used as the rendering area.

ATTRIB_LIST
     Currently unused.  This must be set to `NULL' or be an empty list
     (i.e., one in which the first element is `None').

`glXCreateWindow' creates an on-screen rendering area from an existing X
window that was created with a visual matching CONFIG.  The XID of the
GLXWindow is returned.  Any GLX rendering context that was created with
respect to CONFIG can be used to render into this window.  Use
`glXMakeContextCurrent' to associate the rendering area with a GLX
rendering context.

`BadMatch' is generated if WIN was not created with a visual that
corresponds to CONFIG.

`BadMatch' is generated if CONFIG does not support rendering to windows
(i.e., `GLX_DRAWABLE_TYPE' does not contain `GLX_WINDOW_BIT').

`BadWindow' is generated if WIN is not a valid pixmap XID.

`BadAlloc' is generated if there is already a GLXFBConfig associated
with WIN.

`BadAlloc' is generated if the X server cannot allocate a new GLX
window.

`GLXBadFBConfig' is generated if CONFIG is not a valid GLXFBConfig.")

(define-glx-procedures
  ((glXDestroyContext
     (dpy Display-*)
     (ctx GLXContext)
     ->
     void))
  "Destroy a GLX context.

DPY
     Specifies the connection to the X server.

CTX
     Specifies the GLX context to be destroyed.

If the GLX rendering context CTX is not current to any thread,
`glXDestroyContext' destroys it immediately.  Otherwise, CTX is
destroyed when it becomes not current to any thread.  In either case,
the resource ID referenced by CTX is freed immediately.

`GLXBadContext' is generated if CTX is not a valid GLX context.")

(define-glx-procedures
  ((glXDestroyGLXPixmap
     (dpy Display-*)
     (pix GLXPixmap)
     ->
     void))
  "Destroy a GLX pixmap.

DPY
     Specifies the connection to the X server.

PIX
     Specifies the GLX pixmap to be destroyed.

If the GLX pixmap PIX is not current to any client,
`glXDestroyGLXPixmap' destroys it immediately.  Otherwise, PIX is
destroyed when it becomes not current to any client.  In either case,
the resource ID is freed immediately.

`GLXBadPixmap' is generated if PIX is not a valid GLX pixmap.")

(define-glx-procedures
  ((glXDestroyPbuffer
     (dpy Display-*)
     (pbuf GLXPbuffer)
     ->
     void))
  "Destroy an off-screen rendering area.

DPY
     Specifies the connection to the X server.

PBUF
     Specifies the GLXPbuffer to be destroyed.

`glXDestroyPbuffer' destroys a GLXPbuffer created by `glXCreatePbuffer'.

`GLXBadPbuffer' is generated if PBUF is not a valid GLXPbuffer.")

(define-glx-procedures
  ((glXDestroyPixmap
     (dpy Display-*)
     (pixmap GLXPixmap)
     ->
     void))
  "Destroy an off-screen rendering area.

DPY
     Specifies the connection to the X server.

PIXMAP
     Specifies the GLXPixmap to be destroyed.

`glXDestroyPixmap' destroys a GLXPixmap created by `glXCreatePixmap'.

`GLXBadPixmap' is generated if PIXMAP is not a valid GLXPixmap.")

(define-glx-procedures
  ((glXDestroyWindow
     (dpy Display-*)
     (win GLXWindow)
     ->
     void))
  "Destroy an on-screen rendering area.

DPY
     Specifies the connection to the X server.

WIN
     Specifies the GLXWindow to be destroyed.

`glXDestroyWindow' destroys a GLXWindow created by `glXCreateWindow'.

`GLXBadWindow' is generated if WIN is not a valid GLXPixmap.")

(define-glx-procedures
  ((glXFreeContextEXT
     (dpy Display-*)
     (ctx GLXContext)
     ->
     void))
  "Free client-side memory for imported context.

DPY
     Specifies the connection to the X server.

CTX
     Specifies a GLX rendering context.

`glXFreeContextEXT' frees the client-side part of a GLXContext that was
created with `glXImportContextEXT'.  `glXFreeContextEXT' does not free
the server-side context information or the XID associated with the
server-side context.

`glXFreeContextEXT' is part of the `EXT_import_context' extension, not
part of the core GLX command set.  If _glxextstring(EXT_import_context)
is included in the string returned by `glXQueryExtensionsString', when
called with argument `GLX_EXTENSIONS', extension `EXT_vertex_array' is
supported.

`GLXBadContext' is generated if CTX does not refer to a valid context.")

(define-glx-procedures
  ((glXGetClientString
     (dpy Display-*)
     (name int)
     ->
     const-char-*))
  "Return a string describing the client.

DPY
     Specifies the connection to the X server.

NAME
     Specifies which string is returned.  The symbolic constants
     `GLX_VENDOR', `GLX_VERSION', and `GLX_EXTENSIONS' are accepted.

`glXGetClientString' returns a string describing some aspect of the
client library.  The possible values for NAME are `GLX_VENDOR',
`GLX_VERSION', and `GLX_EXTENSIONS'.  If NAME is not set to one of these
values, `glXGetClientString' returns `NULL'.  The format and contents of
the vendor string is implementation dependent.

The extensions string is null-terminated and contains a space-separated
list of extension names.  (The extension names never contain spaces.) If
there are no extensions to GLX, then the empty string is returned.

The version string is laid out as follows:

<major_version.minor_version><space><vendor-specific info>

Both the major and minor portions of the version number are of arbitrary
length.  The vendor-specific information is optional.  However, if it is
present, the format and contents are implementation specific.")

(define-glx-procedures
  ((glXGetConfig
     (dpy Display-*)
     (vis XVisualInfo-*)
     (attrib int)
     (value int-*)
     ->
     int))
  "Return information about GLX visuals.

DPY
     Specifies the connection to the X server.

VIS
     Specifies the visual to be queried.  It is a pointer to an
     `XVisualInfo' structure, not a visual ID or a pointer to a
     `Visual'.

ATTRIB
     Specifies the visual attribute to be returned.

VALUE
     Returns the requested value.

`glXGetConfig' sets VALUE to the ATTRIB value of windows or GLX pixmaps
created with respect to VIS.  `glXGetConfig' returns an error code if it
fails for any reason.  Otherwise, zero is returned.

ATTRIB is one of the following:



`GLX_USE_GL'
     `True' if OpenGL rendering is supported by this visual, `False'
     otherwise.

`GLX_BUFFER_SIZE'
     Number of bits per color buffer.  For RGBA visuals,
     `GLX_BUFFER_SIZE' is the sum of `GLX_RED_SIZE', `GLX_GREEN_SIZE',
     `GLX_BLUE_SIZE', and `GLX_ALPHA_SIZE'.  For color index visuals,
     `GLX_BUFFER_SIZE' is the size of the color indexes.

`GLX_LEVEL'
     Frame buffer level of the visual.  Level zero is the default frame
     buffer.  Positive levels correspond to frame buffers that overlay
     the default buffer, and negative levels correspond to frame buffers
     that underlay the default buffer.

`GLX_RGBA'
     `True' if color buffers store red, green, blue, and alpha values.
     `False' if they store color indexes.

`GLX_DOUBLEBUFFER'
     `True' if color buffers exist in front/back pairs that can be
     swapped, `False' otherwise.

`GLX_STEREO'
     `True' if color buffers exist in left/right pairs, `False'
     otherwise.

`GLX_AUX_BUFFERS'
     Number of auxiliary color buffers that are available.  Zero
     indicates that no auxiliary color buffers exist.

`GLX_RED_SIZE'
     Number of bits of red stored in each color buffer.  Undefined if
     `GLX_RGBA' is `False'.

`GLX_GREEN_SIZE'
     Number of bits of green stored in each color buffer.  Undefined if
     `GLX_RGBA' is `False'.

`GLX_BLUE_SIZE'
     Number of bits of blue stored in each color buffer.  Undefined if
     `GLX_RGBA' is `False'.

`GLX_ALPHA_SIZE'
     Number of bits of alpha stored in each color buffer.  Undefined if
     `GLX_RGBA' is `False'.

`GLX_DEPTH_SIZE'
     Number of bits in the depth buffer.

`GLX_STENCIL_SIZE'
     Number of bits in the stencil buffer.

`GLX_ACCUM_RED_SIZE'
     Number of bits of red stored in the accumulation buffer.

`GLX_ACCUM_GREEN_SIZE'
     Number of bits of green stored in the accumulation buffer.

`GLX_ACCUM_BLUE_SIZE'
     Number of bits of blue stored in the accumulation buffer.

`GLX_ACCUM_ALPHA_SIZE'
     Number of bits of alpha stored in the accumulation buffer.

The X protocol allows a single visual ID to be instantiated with
different numbers of bits per pixel.  Windows or GLX pixmaps that will
be rendered with OpenGL, however, must be instantiated with a color
buffer depth of `GLX_BUFFER_SIZE'.

Although a GLX implementation can export many visuals that support GL
rendering, it must support at least one RGBA visual.  This visual must
have at least one color buffer, a stencil buffer of at least 1 bit, a
depth buffer of at least 12 bits, and an accumulation buffer.  Alpha
bitplanes are optional in this visual.  However, its color buffer size
must be as great as that of the deepest `TrueColor', `DirectColor',
`PseudoColor', or `StaticColor' visual supported on level zero, and it
must itself be made available on level zero.

In addition, if the X server exports a `PseudoColor' or `StaticColor'
visual on framebuffer level 0, a color index visual is also required on
that level.  It must have at least one color buffer, a stencil buffer of
at least 1 bit, and a depth buffer of at least 12 bits.  This visual
must have as many color bitplanes as the deepest `PseudoColor' or
`StaticColor' visual supported on level 0.

Applications are best written to select the visual that most closely
meets their requirements.  Creating windows or GLX pixmaps with
unnecessary buffers can result in reduced rendering performance as well
as poor resource allocation.

`GLX_NO_EXTENSION' is returned if DPY does not support the GLX
extension.

`GLX_BAD_SCREEN' is returned if the screen of VIS does not correspond to
a screen.

`GLX_BAD_ATTRIBUTE' is returned if ATTRIB is not a valid GLX attribute.

`GLX_BAD_VISUAL' is returned if VIS doesn't support GLX and an attribute
other than `GLX_USE_GL' is requested.")

(define-glx-procedures
  ((glXGetContextIDEXT
     (ctx const-GLXContext)
     ->
     GLXContextID))
  "Get the XID for a context..

CTX
     Specifies a GLX rendering context.

`glXGetContextIDEXT' returns the XID associated with a GLXContext.

No round trip is forced to the server; unlike most X calls that return a
value, `glXGetContextIDEXT' does not flush any pending events.

`glXGetContextIDEXT' is part of the `EXT_import_context' extension, not
part of the core GLX command set.  If _glxextstring(EXT_import_context)
is included in the string returned by `glXQueryExtensionsString', when
called with argument `GLX_EXTENSIONS', extension `EXT_import_context' is
supported.

`GLXBadContext' is generated if CTX does not refer to a valid context.")

(define-glx-procedures
  ((glXGetCurrentContext -> GLXContext))
  "Return the current context.

`glXGetCurrentContext' returns the current context, as specified by
`glXMakeCurrent'.  If there is no current context, `NULL' is returned.

`glXGetCurrentContext' returns client-side information.  It does not
make a round trip to the server.")

(define-glx-procedures
  ((glXGetCurrentDisplay -> Display-*))
  "Get display for current context.

`glXGetCurrentDisplay' returns the display for the current context.  If
no context is current, `NULL' is returned.

`glXGetCurrentDisplay' returns client-side information.  It does not
make a round-trip to the server, and therefore does not flush any
pending events.")

(define-glx-procedures
  ((glXGetCurrentDrawable -> GLXDrawable))
  "Return the current drawable.

`glXGetCurrentDrawable' returns the current drawable, as specified by
`glXMakeCurrent'.  If there is no current drawable, `None' is returned.

`glXGetCurrentDrawable' returns client-side information.  It does not
make a round trip to the server.")

(define-glx-procedures
  ((glXGetCurrentReadDrawable -> GLXDrawable))
  "Return the current drawable.

`glXGetCurrentReadDrawable' returns the current read drawable, as
specified by `read' parameter of `glXMakeContextCurrent'.  If there is
no current drawable, `None' is returned.

`glXGetCurrentReadDrawable' returns client-side information.  It does
not make a round-trip to the server.")

(define-glx-procedures
  ((glXGetFBConfigAttrib
     (dpy Display-*)
     (config GLXFBConfig)
     (attribute int)
     (value int-*)
     ->
     int))
  "Return information about a GLX frame buffer configuration.

DPY
     Specifies the connection to the X server.

CONFIG
     Specifies the GLX frame buffer configuration to be queried.

ATTRIBUTE
     Specifies the attribute to be returned.

VALUE
     Returns the requested value.

`glXGetFBConfigAttrib' sets VALUE to the ATTRIBUTE value of GLX
drawables created with respect to CONFIG.  `glXGetFBConfigAttrib'
returns an error code if it fails for any reason.  Otherwise, `Success'
is returned.

ATTRIBUTE is one of the following:



`GLX_FBCONFIG_ID'
     XID of the given GLXFBConfig.

`GLX_BUFFER_SIZE'


     Number of bits per color buffer.  If the frame buffer configuration
     supports RGBA contexts, then `GLX_BUFFER_SIZE' is the sum of
     `GLX_RED_SIZE', `GLX_GREEN_SIZE', `GLX_BLUE_SIZE', and
     `GLX_ALPHA_SIZE'.  If the frame buffer configuration supports only
     color index contexts, `GLX_BUFFER_SIZE' is the size of the color
     indexes.

`GLX_LEVEL'


     Frame buffer level of the configuration.  Level zero is the default
     frame buffer.  Positive levels correspond to frame buffers that
     overlay the default buffer, and negative levels correspond to frame
     buffers that underlie the default buffer.

`GLX_DOUBLEBUFFER'


     `True' if color buffers exist in front/back pairs that can be
     swapped, `False' otherwise.

`GLX_STEREO'


     `True' if color buffers exist in left/right pairs, `False'
     otherwise.

`GLX_AUX_BUFFERS'


     Number of auxiliary color buffers that are available.  Zero
     indicates that no auxiliary color buffers exist.

`GLX_RED_SIZE'


     Number of bits of red stored in each color buffer.  Undefined if
     RGBA contexts are not supported by the frame buffer configuration.

`GLX_GREEN_SIZE'


     Number of bits of green stored in each color buffer.  Undefined if
     RGBA contexts are not supported by the frame buffer configuration.

`GLX_BLUE_SIZE'


     Number of bits of blue stored in each color buffer.  Undefined if
     RGBA contexts are not supported by the frame buffer configuration.

`GLX_ALPHA_SIZE'


     Number of bits of alpha stored in each color buffer.  Undefined if
     RGBA contexts are not supported by the frame buffer configuration.

`GLX_DEPTH_SIZE'


     Number of bits in the depth buffer.

`GLX_STENCIL_SIZE'


     Number of bits in the stencil buffer.

`GLX_ACCUM_RED_SIZE'


     Number of bits of red stored in the accumulation buffer.

`GLX_ACCUM_GREEN_SIZE'


     Number of bits of green stored in the accumulation buffer.

`GLX_ACCUM_BLUE_SIZE'


     Number of bits of blue stored in the accumulation buffer.

`GLX_ACCUM_ALPHA_SIZE'


     Number of bits of alpha stored in the accumulation buffer.

`GLX_RENDER_TYPE'


     Mask indicating what type of GLX contexts can be made current to
     the frame buffer configuration.  Valid bits are `GLX_RGBA_BIT' and
     `GLX_COLOR_INDEX_BIT'.

`GLX_DRAWABLE_TYPE'


     Mask indicating what drawable types the frame buffer configuration
     supports.  Valid bits are `GLX_WINDOW_BIT', `GLX_PIXMAP_BIT', and
     `GLX_PBUFFER_BIT'.

`GLX_X_RENDERABLE'


     `True' if drawables created with the frame buffer configuration can
     be rendered to by X.

`GLX_VISUAL_ID'


     XID of the corresponding visual, or zero if there is no associated
     visual (i.e., if `GLX_X_RENDERABLE' is `False' or
     `GLX_DRAWABLE_TYPE' does not have the `GLX_WINDOW_BIT' bit set).

`GLX_X_VISUAL_TYPE'


     Visual type of associated visual.  The returned value will be one
     of: `GLX_TRUE_COLOR', `GLX_DIRECT_COLOR', `GLX_PSEUDO_COLOR',
     `GLX_STATIC_COLOR', `GLX_GRAY_SCALE', `GLX_STATIC_GRAY', or
     `GLX_NONE', if there is no associated visual (i.e., if
     `GLX_X_RENDERABLE' is `False' or `GLX_DRAWABLE_TYPE' does not have
     the `GLX_WINDOW_BIT' bit set).

`GLX_CONFIG_CAVEAT'


     One of `GLX_NONE', `GLX_SLOW_CONFIG', or
     `GLX_NON_CONFORMANT_CONFIG', indicating that the frame buffer
     configuration has no caveats, some aspect of the frame buffer
     configuration runs slower than other frame buffer configurations,
     or some aspect of the frame buffer configuration is nonconformant,
     respectively.

`GLX_TRANSPARENT_TYPE'


     One of `GLX_NONE', `GLX_TRANSPARENT_RGB', `GLX_TRANSPARENT_INDEX',
     indicating that the frame buffer configuration is opaque, is
     transparent for particular values of red, green, and blue, or is
     transparent for particular index values, respectively.

`GLX_TRANSPARENT_INDEX_VALUE'


     Integer value between 0 and the maximum frame buffer value for
     indices, indicating the transparent index value for the frame
     buffer configuration.  Undefined if `GLX_TRANSPARENT_TYPE' is not
     `GLX_TRANSPARENT_INDEX'.

`GLX_TRANSPARENT_RED_VALUE'


     Integer value between 0 and the maximum frame buffer value for red,
     indicating the transparent red value for the frame buffer
     configuration.  Undefined if `GLX_TRANSPARENT_TYPE' is not
     `GLX_TRANSPARENT_RGB'.

`GLX_TRANSPARENT_GREEN_VALUE'


     Integer value between 0 and the maximum frame buffer value for
     green, indicating the transparent green value for the frame buffer
     configuration.  Undefined if `GLX_TRANSPARENT_TYPE' is not
     `GLX_TRANSPARENT_RGB'.

`GLX_TRANSPARENT_BLUE_VALUE'


     Integer value between 0 and the maximum frame buffer value for
     blue, indicating the transparent blue value for the frame buffer
     configuration.  Undefined if `GLX_TRANSPARENT_TYPE' is not
     `GLX_TRANSPARENT_RGB'.

`GLX_TRANSPARENT_ALPHA_VALUE'


     Integer value between 0 and the maximum frame buffer value for
     alpha, indicating the transparent blue value for the frame buffer
     configuration.  Undefined if `GLX_TRANSPARENT_TYPE' is not
     `GLX_TRANSPARENT_RGB'.

`GLX_MAX_PBUFFER_WIDTH'


     The maximum width that can be specified to `glXCreatePbuffer'.

`GLX_MAX_PBUFFER_HEIGHT'


     The maximum height that can be specified to `glXCreatePbuffer'.

`GLX_MAX_PBUFFER_PIXELS'


     The maximum number of pixels (width times height) for a pixel
     buffer.  Note that this value may be less than
     `GLX_MAX_PBUFFER_WIDTH' times `GLX_MAX_PBUFFER_HEIGHT'.  Also, this
     value is static and assumes that no other pixel buffers or X
     resources are contending for the frame buffer memory.  As a result,
     it may not be possible to allocate a pixel buffer of the size given
     by `GLX_MAX_PBUFFER_PIXELS'.

Applications should choose the frame buffer configuration that most
closely meets their requirements.  Creating windows, GLX pixmaps, or GLX
pixel buffers with unnecessary buffers can result in reduced rendering
performance as well as poor resource allocation.

`GLX_NO_EXTENSION' is returned if DPY does not support the GLX
extension.  `GLX_BAD_ATTRIBUTE' is returned if ATTRIBUTE is not a valid
GLX attribute.")

(define-glx-procedures
  ((glXGetFBConfigs
     (dpy Display-*)
     (screen int)
     (nelements int-*)
     ->
     GLXFBConfig-*))
  "List all GLX frame buffer configurations for a given screen.

DPY
     Specifies the connection to the X server.

SCREEN
     Specifies the screen number.

NELEMENTS
     Returns the number of GLXFBConfigs returned.

`glXGetFBConfigs' returns a list of all GLXFBConfigs available on the
screen specified by SCREEN.  Use `glXGetFBConfigAttrib' to obtain
attribute values from a specific GLXFBConfig.")

(define-glx-procedures
  ((glXGetProcAddress
     (procName const-GLubyte-*)
     ->
     #{void\x28;*\x29;\x28;\x29;}#))
  "Obtain a pointer to an OpenGL or GLX function.

PROCNAME
     Specifies the name of the OpenGL or GLX function whose address is
     to be returned.

`glXGetProcAddress' returns the address of the function specified in
PROCNAME.  This is necessary in environments where the OpenGL link
library exports a different set of functions than the runtime library.")

(define-glx-procedures
  ((glXGetSelectedEvent
     (dpy Display-*)
     (draw GLXDrawable)
     (event_mask unsigned-long-*)
     ->
     void))
  "Returns GLX events that are selected for a window or a GLX pixel buffer.

DPY
     Specifies the connection to the X server.

DRAW
     Specifies a GLX drawable.  Must be a GLX pixel buffer or a window.

EVENT_MASK
     Returns the events that are selected for DRAW.

`glXGetSelectedEvent' returns in EVENT_MASK the events selected for
DRAW.

`GLXBadDrawable' is generated if DRAW is not a valid window or a valid
GLX pixel buffer.")

(define-glx-procedures
  ((glXGetVisualFromFBConfig
     (dpy Display-*)
     (config GLXFBConfig)
     ->
     XVisualInfo-*))
  "Return visual that is associated with the frame buffer configuration.

DPY
     Specifies the connection to the X server.

CONFIG
     Specifies the GLX frame buffer configuration.

If CONFIG is a valid GLX frame buffer configuration and it has an
associated X Visual, then information describing that visual is
returned; otherwise `NULL' is returned.  Use `XFree' to free the data
returned.

Returns `NULL' if CONFIG is not a valid GLXFBConfig.")

(define-glx-procedures
  ((glXImportContextEXT
     (dpy Display-*)
     (contextID GLXContextID)
     ->
     GLXContext))
  "Import another process's indirect rendering context..

DPY
     Specifies the connection to the X server.

CONTEXTID
     Specifies a GLX rendering context.

`glXImportContextEXT' creates a GLXContext given the XID of an existing
GLXContext.  It may be used in place of `glXCreateContext', to share
another process's indirect rendering context.

Only the server-side context information can be shared between X
clients; client-side state, such as pixel storage modes, cannot be
shared.  Thus, `glXImportContextEXT' must allocate memory to store
client-side information.  This memory is freed by calling
`glXFreeContextEXT'.

This call does not create a new XID.  It merely makes an existing object
available to the importing client (Display *).  Like any XID, it goes
away when the creating client drops its connection or the ID is
explicitly deleted.  Note that this is when the XID goes away.  The
object goes away when the XID goes away AND the context is not current
to any thread.

If CONTEXTID refers to a direct rendering context then no error is
generated but `glXImportContextEXT' returns NULL.

`glXImportContextEXT' is part of the `EXT_import_context' extension, not
part of the core GLX command set.  If _glxextstring(EXT_import_context)
is included in the string returned by `glXQueryExtensionsString', when
called with argument `GLX_EXTENSIONS', extension `EXT_import_context' is
supported.

`GLXBadContext' is generated if CONTEXTID does not refer to a valid
context.")

(define-glx-procedures
  ((glXIsDirect
     (dpy Display-*)
     (ctx GLXContext)
     ->
     Bool))
  "Indicate whether direct rendering is enabled.

DPY
     Specifies the connection to the X server.

CTX
     Specifies the GLX context that is being queried.

`glXIsDirect' returns `True' if CTX is a direct rendering context,
`False' otherwise.  Direct rendering contexts pass rendering commands
directly from the calling process's address space to the rendering
system, bypassing the X server.  Nondirect rendering contexts pass all
rendering commands to the X server.

`GLXBadContext' is generated if CTX is not a valid GLX context.")

(define-glx-procedures
  ((glXMakeContextCurrent
     (display Display-*)
     (draw GLXDrawable)
     (read GLXDrawable)
     (ctx GLXContext)
     ->
     Bool))
  "Attach a GLX context to a GLX drawable.

DISPLAY
     Specifies the connection to the X server.

DRAW
     Specifies a GLX drawable to render into.  Must be an XID
     representing a GLXWindow, GLXPixmap, or GLXPbuffer.

READ
     Specifies a GLX drawable to read from.  Must be an XID representing
     a GLXWindow, GLXPixmap, or GLXPbuffer.

CTX
     Specifies the GLX context to be bound to READ and CTX.

`glXMakeContextCurrent' binds CTX to the current rendering thread and to
the DRAW and READ GLX drawables.  DRAW and READ may be the same.

DRAW is used for all OpenGL operations except:

Any pixel data that are read based on the value of `GLX_READ_BUFFER'.
Note that accumulation operations use the value of `GLX_READ_BUFFER',
but are not allowed unless DRAW is identical to READ.

Any depth values that are retrieved by `glReadPixels' or `glCopyPixels'.

Any stencil values that are retrieved by `glReadPixels' or
`glCopyPixels'.

Frame buffer values are taken from DRAW.

If the current rendering thread has a current rendering context, that
context is flushed and replaced by CTX.

The first time that CTX is made current, the viewport and scissor
dimensions are set to the size of the DRAW drawable.  The viewport and
scissor are not modified when CTX is subsequently made current.

To release the current context without assigning a new one, call
`glXMakeContextCurrent' with DRAW and READ set to `None' and CTX set to
`NULL'.

`glXMakeContextCurrent' returns `True' if it is successful, `False'
otherwise.  If `False' is returned, the previously current rendering
context and drawable (if any) remain unchanged.

`BadMatch' is generated if DRAW and READ are not compatible.

`BadAccess' is generated if CTX is current to some other thread.

`GLXContextState' is generated if there is a current rendering context
and its render mode is either `GLX_FEEDBACK' or `GLX_SELECT'.

`GLXBadContext' is generated if CTX is not a valid GLX rendering
context.

`GLXBadDrawable' is generated if DRAW or READ is not a valid GLX
drawable.

`GLXBadWindow' is generated if the underlying X window for either DRAW
or READ is no longer valid.

`GLXBadCurrentDrawable' is generated if the previous context of the
calling thread has unflushed commands and the previous drawable is no
longer valid.

`BadAlloc' is generated if the X server does not have enough resources
to allocate the buffers.

`BadMatch' is generated if:

DRAW and READ cannot fit into frame buffer memory simultaneously.

DRAW or READ is a GLXPixmap and CTX is a direct-rendering context.

DRAW or READ is a GLXPixmap and CTX was previously bound to a GLXWindow
or GLXPbuffer.

DRAW or READ is a GLXWindow or GLXPbuffer and CTX was previously bound
to a GLXPixmap.")

(define-glx-procedures
  ((glXMakeCurrent
     (dpy Display-*)
     (drawable GLXDrawable)
     (ctx GLXContext)
     ->
     Bool))
  "Attach a GLX context to a window or a GLX pixmap.

DPY
     Specifies the connection to the X server.

DRAWABLE
     Specifies a GLX drawable.  Must be either an X window ID or a GLX
     pixmap ID.

CTX
     Specifies a GLX rendering context that is to be attached to
     DRAWABLE.

`glXMakeCurrent' does two things: It makes CTX the current GLX rendering
context of the calling thread, replacing the previously current context
if there was one, and it attaches CTX to a GLX drawable, either a window
or a GLX pixmap.  As a result of these two actions, subsequent GL
rendering calls use rendering context CTX to modify GLX drawable
DRAWABLE (for reading and writing).  Because `glXMakeCurrent' always
replaces the current rendering context with CTX, there can be only one
current context per thread.

Pending commands to the previous context, if any, are flushed before it
is released.

The first time CTX is made current to any thread, its viewport is set to
the full size of DRAWABLE.  Subsequent calls by any thread to
`glXMakeCurrent' with CTX have no effect on its viewport.

To release the current context without assigning a new one, call
`glXMakeCurrent' with DRAWABLE set to `None' and CTX set to `NULL'.

`glXMakeCurrent' returns `True' if it is successful, `False' otherwise.
If `False' is returned, the previously current rendering context and
drawable (if any) remain unchanged.

`BadMatch' is generated if DRAWABLE was not created with the same X
screen and visual as CTX.  It is also generated if DRAWABLE is `None'
and CTX is not `NULL'.

`BadAccess' is generated if CTX was current to another thread at the
time `glXMakeCurrent' was called.

`GLXBadDrawable' is generated if DRAWABLE is not a valid GLX drawable.

`GLXBadContext' is generated if CTX is not a valid GLX context.

`GLXBadContextState' is generated if `glXMakeCurrent' is executed
between the execution of `glBegin' and the corresponding execution of
`glEnd'.

`GLXBadContextState' is also generated if the rendering context current
to the calling thread has GL renderer state `GLX_FEEDBACK' or
`GLX_SELECT'.

`GLXBadCurrentWindow' is generated if there are pending GL commands for
the previous context and the current drawable is a window that is no
longer valid.

`BadAlloc' may be generated if the server has delayed allocation of
ancillary buffers until `glXMakeCurrent' is called, only to find that it
has insufficient resources to complete the allocation.")

(define-glx-procedures
  ((glXQueryContextInfoEXT
     (dpy Display-*)
     (ctx GLXContext)
     (attribute int)
     (value int-*)
     ->
     int))
  "Query context information.

DPY
     Specifies the connection to the X server.

CTX
     Specifies a GLX rendering context.

ATTRIBUTE
     Specifies that a context parameter should be retrieved.  Must be
     one of `GLX_SHARED_CONTEXT_EXT', `GLX_VISUAL_ID_EXT', or
     `GLX_SCREEN_EXT'.

VALUE
     Contains the return value for ATTRIBUTE.

`glXQueryContextInfoEXT' sets VALUE to the value of ATTRIBUTE with
respect to CTX.  `glXQueryContextInfoEXT' returns an error code if it
fails for any reason.  Otherwise, `Success' is returned.

ATTRIBUTE may be one of the following:

`GLX_SHARED_CONTEXT_EXT'
     Returns the XID of the share list context associated with CTX at
     its creation.

`GLX_VISUAL_ID_EXT'
     Returns the XID of the GLX Visual associated with CTX.

`GLX_SCREEN_EXT'
     Returns the screen number associated with CTX.

This call may cause a round-trip to the server.

`glXQueryContextInfoEXT' is part of the `EXT_import_context' extension,
not part of the core GLX command set.  If
_glxextstring(EXT_import_context) is included in the string returned by
`glXQueryExtensionsString', when called with argument `GLX_EXTENSIONS',
extension `EXT_import_context' is supported.

`GLXBadContext' is generated if CTX does not refer to a valid context.

`GLX_BAD_ATTRIBUTE' is returned if ATTRIBUTE is not a valid GLX context
attribute.

fred `GLX_BAD_CONTEXT' is returned if ATTRIBUTE is not a valid context.")

(define-glx-procedures
  ((glXQueryContext
     (dpy Display-*)
     (ctx GLXContext)
     (attribute int)
     (value int-*)
     ->
     int))
  "Query context information.

DPY
     Specifies the connection to the X server.

CTX
     Specifies a GLX rendering context.

ATTRIBUTE
     Specifies that a context parameter should be retrieved.  Must be
     one of `GLX_FBCONFIG_ID', `GLX_RENDER_TYPE', or `GLX_SCREEN'.

VALUE
     Contains the return value for ATTRIBUTE.

`glXQueryContext' sets VALUE to the value of ATTRIBUTE with respect to
CTX.  ATTRIBUTE may be one of the following:

`GLX_FBCONFIG_ID'
     Returns the XID of the GLXFBConfig associated with CTX.

`GLX_RENDER_TYPE'
     Returns the rendering type supported by CTX.

`GLX_SCREEN'
     Returns the screen number associated with CTX.

`Success' is returned unless ATTRIBUTE is not a valid GLX context
attribute, in which case `GLX_BAD_ATTRIBUTE' is returned.

This call may cause a round-trip to the server.

`GLXBadContext' is generated if CTX does not refer to a valid context.")

(define-glx-procedures
  ((glXQueryDrawable
     (dpy Display-*)
     (draw GLXDrawable)
     (attribute int)
     (value unsigned-int-*)
     ->
     int))
  "Returns an attribute assoicated with a GLX drawable.

DPY
     Specifies the connection to the X server.

DRAW
     Specifies the GLX drawable to be queried.

ATTRIBUTE
     Specifies the attribute to be returned.  Must be one of
     `GLX_WIDTH', `GLX_HEIGHT', `GLX_PRESERVED_CONTENTS',
     `GLX_LARGEST_PBUFFER', or `GLX_FBCONFIG_ID'.

VALUE
     Contains the return value for ATTRIBUTE.

`glXQueryDrawable' sets VALUE to the value of ATTRIBUTE with respect to
the GLXDrawable DRAW.

ATTRIBUTE may be one of the following:

`GLX_WIDTH'
     Returns the width of CTX.

`GLX_HEIGHT'
     Returns the height of CTX.

`GLX_PRESERVED_CONTENTS'
     Returns `True' if the contents of a GLXPbuffer are preserved when a
     resource conflict occurs; `False' otherwise.

`GLX_LARGEST_PBUFFER'
     Returns the value set when `glXCreatePbuffer' was called to create
     the GLXPbuffer.  If `False' is returned, then the call to
     `glXCreatePbuffer' will fail to create a GLXPbuffer if the
     requested size is larger than the implementation maximum or
     available resources.  If `True' is returned, a GLXPbuffer of the
     maximum availble size (if less than the requested width and height)
     is created.

`GLX_FBCONFIG_ID'
     Returns the XID for DRAW.

If DRAW is a GLXWindow or GLXPixmap and ATTRIBUTE is set to
`GLX_PRESERVED_CONTENTS' or `GLX_LARGETST_PBUFFER', the contents of
VALUE are undefined.  If ATTRIBUTE is not one of the attributes listed
above, the contents of VALUE are unedfined.

A `GLXBadDrawable' is generated if DRAW is not a valid GLXDrawable.")

(define-glx-procedures
  ((glXQueryExtensionsString
     (dpy Display-*)
     (screen int)
     ->
     const-char-*))
  "Return list of supported extensions.

DPY
     Specifies the connection to the X server.

SCREEN
     Specifies the screen number.

`glXQueryExtensionsString' returns a pointer to a string describing
which GLX extensions are supported on the connection.  The string is
null-terminated and contains a space-separated list of extension names.
(The extension names themselves never contain spaces.) If there are no
extensions to GLX, then the empty string is returned.")

(define-glx-procedures
  ((glXQueryExtension
     (dpy Display-*)
     (errorBase int-*)
     (eventBase int-*)
     ->
     Bool))
  "Indicate whether the GLX extension is supported.

DPY
     Specifies the connection to the X server.

ERRORBASE
     Returns the base error code of the GLX server extension.

EVENTBASE
     Returns the base event code of the GLX server extension.

`glXQueryExtension' returns `True' if the X server of connection DPY
supports the GLX extension, `False' otherwise.  If `True' is returned,
then ERRORBASE and EVENTBASE return the error base and event base of the
GLX extension.  These values should be added to the constant error and
event values to determine the actual event or error values.  Otherwise,
ERRORBASE and EVENTBASE are unchanged.

ERRORBASE and EVENTBASE do not return values if they are specified as
`NULL'.")

(define-glx-procedures
  ((glXQueryServerString
     (dpy Display-*)
     (screen int)
     (name int)
     ->
     const-char-*))
  "Return string describing the server.

DPY
     Specifies the connection to the X server.

SCREEN
     Specifies the screen number.

NAME
     Specifies which string is returned: one of `GLX_VENDOR',
     `GLX_VERSION', or `GLX_EXTENSIONS'.

`glXQueryServerString' returns a pointer to a static, null-terminated
string describing some aspect of the server's GLX extension.  The
possible values for NAME and the format of the strings is the same as
for `glXGetClientString'.  If NAME is not set to a recognized value,
`NULL' is returned.")

(define-glx-procedures
  ((glXQueryVersion
     (dpy Display-*)
     (major int-*)
     (minor int-*)
     ->
     Bool))
  "Return the version numbers of the GLX extension.

DPY
     Specifies the connection to the X server.

MAJOR
     Returns the major version number of the GLX server extension.

MINOR
     Returns the minor version number of the GLX server extension.

`glXQueryVersion' returns the major and minor version numbers of the GLX
extension implemented by the server associated with connection DPY.
Implementations with the same major version number are upward
compatible, meaning that the implementation with the higher minor number
is a superset of the version with the lower minor number.

MAJOR and MINOR do not return values if they are specified as `NULL'.

`glXQueryVersion' returns `False' if it fails, `True' otherwise.

MAJOR and MINOR are not updated when `False' is returned.")

(define-glx-procedures
  ((glXSelectEvent
     (dpy Display-*)
     (draw GLXDrawable)
     (event_mask unsigned-long)
     ->
     void))
  "Select GLX events for a window or a GLX pixel buffer.

DPY
     Specifies the connection to the X server.

DRAW
     Specifies a GLX drawable.  Must be a GLX pixel buffer or a window.

EVENT_MASK
     Specifies the events to be returned for DRAW.

`glXSelectEvent' sets the GLX event mask for a GLX pixel buffer or a
window.  Calling `glXSelectEvent' overrides any previous event mask that
was set by the client for DRAW.  Note that it does not affect the event
masks that other clients may have specified for DRAW since each client
rendering to DRAW has a separate event mask for it.

Currently, only one GLX event, `GLX_PBUFFER_CLOBBER_MASK', can be
selected.  The following data is returned to the client when a
`GLX_PBUFFER_CLOBBER_MASK' event occurs:

typedef struct {

int EVENT_TYPE;
     /* GLX_DAMAGED or GLX_SAVED */

int DRAW_TYPE;
     /* GLX_WINDOW or GLX_PBUFFER */

unsigned long SERIAL;
     /* # of last request processed by server */

Bool SEND_EVENT;
     /* true if this came for SendEvent request */

Display *DISPLAY;
     /* display the event was read from */

GLXDrawable DRAWABLE;
     /* i.d.  of Drawable */

unsigned int BUFFER_MASK;
     /* mask indicating affected buffers */

int X, Y;


int WIDTH, HEIGHT;


int COUNT;
     /* if nonzero, at least this many more */

} GLXPbufferClobberEvent; The valid bit masks used in BUFFER_MASK are:



*Bitmask*
     *Corresponding Buffer*

`GLX_FRONT_LEFT_BUFFER_BIT'
     Front left color buffer

`GLX_FRONT_RIGHT_BUFFER_BIT'
     Front right color buffer

`GLX_BACK_LEFT_BUFFER_BIT'
     Back left color buffer

`GLX_BACK_RIGHT_BUFFER_BIT'
     Back right color buffer

`GLX_AUX_BUFFERS_BIT'
     Auxiliary buffer

`GLX_DEPTH_BUFFER_BIT'
     Depth buffer

`GLX_STENCIL_BUFFER_BIT'
     Stencil buffer

`GLX_ACCUM_BUFFER_BIT'
     Accumulation buffer

A single X server operation can cause several buffer clobber events to
be sent.  (e.g., a single GLX pixel buffer may be damaged and cause
multiple buffer clobber events to be generated).  Each event specifies
one region of the GLX drawable that was affected by the X Server
operation.  The BUFFER_MASK field indicates which color buffers and
ancillary buffers were affected.  All the buffer clobber events
generated by a single X server action are guaranteed to be contiguous in
the event queue.  The conditions under which this event is generated and
the EVENT_TYPE varies, depending on the type of the GLX drawable.

When the `GLX_AUX_BUFFERS_BIT' is set in BUFFER_MASK, then AUX_BUFFER is
set to indicate which buffer was affected.  If more than one aux buffer
was affected, then additional events are generated as part of the same
contiguous event group.  Each additional event will have only the
`GLX_AUX_BUFFERS_BIT' set in BUFFER_MASK, and the AUX_BUFFER field will
be set appropriately.  For nonstereo drawables,
`GLX_FRONT_LEFT_BUFFER_BIT' and `GLX_BACK_LEFT_BUFFER_BIT' are used to
specify the front and back color buffers.

For preserved GLX pixel buffers, a buffer clobber event with type
`GLX_SAVED' is generated whenever the contents of the GLX pixel buffer
is moved out of offscreen memory.  The event(s) describes which portions
of the GLX pixel buffer were affected.  Clients who receive many buffer
clobber events, referring to different save actions, should consider
freeing the GLX pixel buffer resource in order to prevent the system
from thrashing due to insufficient resources.

For an unpreserved GLXPbuffer, a buffer clobber event, with type
`GLX_DAMAGED', is generated whenever a portion of the GLX pixel buffer
becomes invalid.  The client may wish to regenerate the invalid portions
of the GLX pixel buffer.

For Windows, buffer clobber events, with type `GLX_SAVED', occur
whenever an ancillary buffer, associated with the window, gets clobbered
or moved out of off-screen memory.  The event contains information
indicating which color buffers and ancillary buffers\\(emand which
portions of those buffers\\(emwere affected.

`GLXBadDrawable' is generated if DRAW is not a valid window or a valid
GLX pixel buffer.")

(define-glx-procedures
  ((glXSwapBuffers
     (dpy Display-*)
     (drawable GLXDrawable)
     ->
     void))
  "Exchange front and back buffers.

DPY
     Specifies the connection to the X server.

DRAWABLE
     Specifies the drawable whose buffers are to be swapped.

`glXSwapBuffers' promotes the contents of the back buffer of DRAWABLE to
become the contents of the front buffer of DRAWABLE.  The contents of
the back buffer then become undefined.  The update typically takes place
during the vertical retrace of the monitor, rather than immediately
after `glXSwapBuffers' is called.

`glXSwapBuffers' performs an implicit `glFlush' before it returns.
Subsequent OpenGL commands may be issued immediately after calling
`glXSwapBuffers', but are not executed until the buffer exchange is
completed.

If DRAWABLE was not created with respect to a double-buffered visual,
`glXSwapBuffers' has no effect, and no error is generated.

`GLXBadDrawable' is generated if DRAWABLE is not a valid GLX drawable.

`GLXBadCurrentWindow' is generated if DPY and DRAWABLE are respectively
the display and drawable associated with the current context of the
calling thread, and DRAWABLE identifies a window that is no longer
valid.")

(define-glx-procedures
  ((glXUseXFont
     (font Font)
     (first int)
     (count int)
     (listBase int)
     ->
     void))
  "Create bitmap display lists from an X font.

FONT
     Specifies the font from which character glyphs are to be taken.

FIRST
     Specifies the index of the first glyph to be taken.

COUNT
     Specifies the number of glyphs to be taken.

LISTBASE
     Specifies the index of the first display list to be generated.

`glXUseXFont' generates COUNT display lists, named LISTBASE through
LISTBASE+COUNT-1 , each containing a single `glBitmap' command.  The
parameters of the `glBitmap' command of display list LISTBASE+I are
derived from glyph FIRST+I .  Bitmap parameters XORIG , YORIG , WIDTH ,
and HEIGHT are computed from font metrics as DESCENT-1 , -LBEARING ,
RBEARING-LBEARING , and ASCENT+DESCENT , respectively.  XMOVE is taken
from the glyph's WIDTH metric, and YMOVE is set to zero.  Finally, the
glyph's image is converted to the appropriate format for `glBitmap'.

Using `glXUseXFont' may be more efficient than accessing the X font and
generating the display lists explicitly, both because the display lists
are created on the server without requiring a round trip of the glyph
data, and because the server may choose to delay the creation of each
bitmap until it is accessed.

Empty display lists are created for all glyphs that are requested and
are not defined in FONT.  `glXUseXFont' is ignored if there is no
current GLX context.

`BadFont' is generated if FONT is not a valid font.

`GLXBadContextState' is generated if the current GLX context is in
display-list construction mode.

`GLXBadCurrentWindow' is generated if the drawable associated with the
current context of the calling thread is a window, and that window is no
longer valid.")

(define-glx-procedures
  ((glXWaitGL -> void))
  "Complete GL execution prior to subsequent X calls.

GL rendering calls made prior to `glXWaitGL' are guaranteed to be
executed before X rendering calls made after `glXWaitGL'.  Although this
same result can be achieved using `glFinish', `glXWaitGL' does not
require a round trip to the server, and it is therefore more efficient
in cases where client and server are on separate machines.

`glXWaitGL' is ignored if there is no current GLX context.

`GLXBadCurrentWindow' is generated if the drawable associated with the
current context of the calling thread is a window, and that window is no
longer valid.")

(define-glx-procedures
  ((glXWaitX -> void))
  "Complete X execution prior to subsequent GL calls.

X rendering calls made prior to `glXWaitX' are guaranteed to be executed
before GL rendering calls made after `glXWaitX'.  Although the same
result can be achieved using `XSync', `glXWaitX' does not require a
round trip to the server, and it is therefore more efficient in cases
where client and server are on separate machines.

`glXWaitX' is ignored if there is no current GLX context.

`GLXBadCurrentWindow' is generated if the drawable associated with the
current context of the calling thread is a window, and that window is no
longer valid.")

