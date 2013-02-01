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
  (figl low-level glx)
  #:use-module
  (figl low-level support)
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
    glXIntro
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

(define-gl-procedure
  glXChooseFBConfig
  "glXChooseFBConfig"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXFBConfig * "
        (function "glXChooseFBConfig"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int " (parameter "screen"))
      (paramdef
        "const int * "
        (parameter "attrib_list"))
      (paramdef "int * " (parameter "nelements"))))
  '(*fragment*
     (heading
       "return a list of GLX frame buffer configurations that match the specified attributes")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "screen")))
                   (para "
Specifies the screen number. "))
            (entry (% (heading (var "attrib_list")))
                   (para "
Specifies a list of attribute/value pairs.
                    The last attribute must be "
                         (code "None")
                         ". "))
            (entry (% (heading (var "nelements")))
                   (para "
Returns the number of elements in the list returned by "
                         (code "glXChooseFBConfig")
                         ". ")))
     (heading "Description")
     (para (code "glXChooseFBConfig")
           " returns GLX frame buffer configurations that match the attributes
            specified in "
           (var "attrib_list")
           ", or "
           (code "NULL")
           " if no matches are found.
            If "
           (var "attrib_list")
           " is "
           (code "NULL")
           ", then "
           (code "glXChooseFBConfig")
           " returns an array of GLX
            frame buffer configurations that are available on the specified screen.
            If an error occurs, no frame buffer configurations exist on the
            specified screen, or if no frame buffer configurations match the
            specified attributes, then "
           (code "NULL")
           " is returned.
            Use "
           (code "XFree")
           " to free the memory returned by "
           (code "glXChooseFBConfig")
           ". ")
     (para "
All attributes in "
           (var "attrib_list")
           ", including boolean attributes, are
            immediately followed by the corresponding desired value. The list is
            terminated with "
           (code "None")
           ". If an attribute is not specified in "
           (var "attrib_list")
           ",
            then the default value (see below) is used (and the attribute is said to be 
            specified implicitly). For example, if "
           (code "GLX_STEREO")
           " is not specified, then 
            it is assumed to be "
           (code "False")
           ". For some attributes, the default is "
           (code "GLX_DONT_CARE")
           ", meaning that any value is OK for this attribute, so the 
            attribute will not be checked. ")
     (para "
Attributes are matched in an attribute-specific manner.
            Some of the attributes, such as "
           (code "GLX_LEVEL")
           ", must match the specified 
            value exactly; others, such as, "
           (code "GLX_RED_SIZE")
           " must meet or exceed the 
            specified minimum values. If more than one GLX frame buffer configuration is found,
            then a list of configurations, sorted 
            according to the ``best'' match criteria, is returned. The match
            criteria for each attribute and the exact sorting order is
            defined below. ")
     (para "
The interpretations of the various GLX visual attributes are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_FBCONFIG_ID")))
                   (para)
                   (para "
Must be followed by a valid XID that indicates the desired GLX frame
                        buffer configuration. When a "
                         (code "GLX_FBCONFIG_ID")
                         " is specified, all
                        attributes are ignored. The default value is "
                         (code "GLX_DONT_CARE")
                         ". "))
            (entry (% (heading (code "GLX_BUFFER_SIZE")))
                   (para)
                   (para "
Must be followed by a nonnegative integer that indicates the desired
                        color index buffer size.
                        The smallest index buffer of at least the specified size is preferred.
                        This attribute is ignored if "
                         (code "GLX_COLOR_INDEX_BIT")
                         " is not set in "
                         (code "GLX_RENDER_TYPE")
                         ". The default value is 0. "))
            (entry (% (heading (code "GLX_LEVEL")))
                   (para)
                   (para "
Must be followed by an integer buffer-level specification.
                        This specification is honored exactly.
                        Buffer level 0 corresponds to the default frame buffer of the display.
                        Buffer level 1 is the first overlay frame buffer, level two the second
                        overlay frame buffer, and so on.
                        Negative buffer levels correspond to underlay frame buffers.
                        The default value is 0. "))
            (entry (% (heading (code "GLX_DOUBLEBUFFER")))
                   (para)
                   (para "
Must be followed by "
                         (code "True")
                         " or "
                         (code "False")
                         ". If "
                         (code "True")
                         " is specified, then
                        only double-buffered frame buffer configurations are considered;
                        if "
                         (code "False")
                         " is specified, then
                        only single-buffered frame buffer configurations are considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ". "))
            (entry (% (heading (code "GLX_STEREO")))
                   (para)
                   (para "
Must be followed by "
                         (code "True")
                         " or "
                         (code "False")
                         ". If "
                         (code "True")
                         " is specified, then
                        only stereo frame buffer configurations are considered;
                        if "
                         (code "False")
                         " is specified, then
                        only monoscopic frame buffer configurations are considered.
                        The default value is "
                         (code "False")
                         ". "))
            (entry (% (heading (code "GLX_AUX_BUFFERS")))
                   (para)
                   (para "
Must be followed by a nonnegative integer that indicates the desired
                        number of auxiliary buffers.
                        Configurations with the 
                        smallest number of auxiliary buffers that meet or exceed
                        the specified number are preferred.
                        The default value is 0. "))
            (entry (% (heading
                        (code "GLX_RED_SIZE")
                        ", "
                        (code "GLX_GREEN_SIZE")
                        ", "
                        (code "GLX_BLUE_SIZE")
                        ", "
                        (code "GLX_ALPHA_SIZE")))
                   (para)
                   (para "
Each attribute, if present, must be followed by a nonnegative minimum size
                        specification or "
                         (code "GLX_DONT_CARE")
                         ".
                        The largest available total RGBA color buffer size (sum of "
                         (code "GLX_RED_SIZE")
                         ", "
                         (code "GLX_GREEN_SIZE")
                         ", "
                         (code "GLX_BLUE_SIZE")
                         ", and "
                         (code "GLX_ALPHA_SIZE")
                         ") 
                        of at least the minimum size specified for each color component is preferred.
                        If the requested number of bits for a color component is 0 or "
                         (code "GLX_DONT_CARE")
                         ", it is not considered. The default value for each color 
                        component is 0. "))
            (entry (% (heading (code "GLX_DEPTH_SIZE")))
                   (para)
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        frame buffer configurations with no depth buffer are preferred.
                        Otherwise, the largest available depth buffer of at least the minimum size
                        is preferred.
                        The default value is 0. "))
            (entry (% (heading (code "GLX_STENCIL_SIZE")))
                   (para)
                   (para "
Must be followed by a nonnegative integer that indicates the desired
                        number of stencil bitplanes.
                        The smallest stencil buffer of at least the specified size is preferred.
                        If the desired value is zero,
                        frame buffer configurations with no stencil buffer are preferred.
                        The default value is 0. "))
            (entry (% (heading (code "GLX_ACCUM_RED_SIZE")))
                   (para)
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        frame buffer configurations with no red accumulation buffer are preferred.
                        Otherwise, the largest possible red accumulation buffer
                        of at least the minimum size is preferred.
                        The default value is 0. "))
            (entry (% (heading (code "GLX_ACCUM_GREEN_SIZE")))
                   (para)
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        frame buffer configurations with no green accumulation buffer are preferred.
                        Otherwise, the largest possible green accumulation buffer
                        of at least the minimum size is preferred.
                        The default value is 0. "))
            (entry (% (heading (code "GLX_ACCUM_BLUE_SIZE")))
                   (para)
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        frame buffer configurations with no blue accumulation buffer are preferred.
                        Otherwise, the largest possible blue accumulation buffer
                        of at least the minimum size is preferred.
                        The default value is 0. "))
            (entry (% (heading (code "GLX_ACCUM_ALPHA_SIZE")))
                   (para)
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        frame buffer configurations with no alpha accumulation buffer are preferred.
                        Otherwise, the largest possible alpha accumulation buffer
                        of at least the minimum size is preferred.
                        The default value is 0. "))
            (entry (% (heading (code "GLX_RENDER_TYPE")))
                   (para)
                   (para "
Must be followed by a mask indicating which OpenGL rendering modes
                        the frame buffer configuration must support.
                        Valid bits are "
                         (code "GLX_RGBA_BIT")
                         " and "
                         (code "GLX_COLOR_INDEX_BIT")
                         ". If the mask is 
                        set to "
                         (code "GLX_RGBA_BIT")
                         " | "
                         (code "GLX_COLOR_INDEX_BIT")
                         ",
                        then only frame buffer configurations that can be bound to both
                        RGBA contexts and color index contexts will be considered.
                        The default value is "
                         (code "GLX_RGBA_BIT")
                         ". "))
            (entry (% (heading (code "GLX_DRAWABLE_TYPE")))
                   (para)
                   (para "
Must be followed by a mask indicating which GLX drawable types
                        the frame buffer configuration must support. Valid bits are "
                         (code "GLX_WINDOW_BIT")
                         ", "
                         (code "GLX_PIXMAP_BIT")
                         ", and "
                         (code "GLX_PBUFFER_BIT")
                         ".
                        For example, if mask is set to "
                         (code "GLX_WINDOW_BIT")
                         " | "
                         (code "GLX_PIXMAP_BIT")
                         ", 
                        only frame buffer configurations that support both windows and GLX pixmaps
                        will be considered.
                        The default value is "
                         (code "GLX_WINDOW_BIT")
                         ". "))
            (entry (% (heading (code "GLX_X_RENDERABLE")))
                   (para)
                   (para "
Must be followed by "
                         (code "True")
                         " or "
                         (code "False")
                         ".
                        If "
                         (code "True")
                         " is specified, then only frame buffer configurations that
                        have associated X visuals (and can be used to render to Windows and/or
                        GLX pixmaps) will be considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ". "))
            (entry (% (heading (code "GLX_X_VISUAL_TYPE")))
                   (para)
                   (para "
Must be followed by one of "
                         (code "GLX_TRUE_COLOR")
                         ", "
                         (code "GLX_DIRECT_COLOR")
                         ", "
                         (code "GLX_PSEUDO_COLOR")
                         ", "
                         (code "GLX_STATIC_COLOR")
                         ", "
                         (code "GLX_GRAY_SCALE")
                         ", or "
                         (code "GLX_STATIC_GRAY")
                         ", indicating the desired X visual type.
                        Not all frame buffer configurations have an associated X visual. If "
                         (code "GLX_DRAWABLE_TYPE")
                         " is specified in "
                         (var "attrib_list")
                         " and the
                        mask that follows does not have "
                         (code "GLX_WINDOW_BIT")
                         " set,
                        then this value is ignored. It is also ignored if "
                         (code "GLX_X_RENDERABLE")
                         " is specified as "
                         (code "False")
                         ".
                        RGBA rendering may be supported for visuals of type "
                         (code "GLX_TRUE_COLOR")
                         ", "
                         (code "GLX_DIRECT_COLOR")
                         ", "
                         (code "GLX_PSEUDO_COLOR")
                         ",
                        or "
                         (code "GLX_STATIC_COLOR")
                         ", 
                        but color index rendering is only supported for visuals of type "
                         (code "GLX_PSEUDO_COLOR")
                         " or "
                         (code "GLX_STATIC_COLOR")
                         "
(i.e., single-channel visuals).
                        The tokens "
                         (code "GLX_GRAY_SCALE")
                         " and "
                         (code "GLX_STATIC_GRAY")
                         " will 
                        not match current OpenGL enabled visuals, but are included for future use.
                        The default value for "
                         (code "GLX_X_VISUAL_TYPE")
                         " is "
                         (code "GLX_DONT_CARE")
                         ". "))
            (entry (% (heading (code "GLX_CONFIG_CAVEAT")))
                   (para)
                   (para "
Must be followed by one of "
                         (code "GLX_NONE")
                         ", "
                         (code "GLX_SLOW_CONFIG")
                         ", "
                         (code "GLX_NON_CONFORMANT_CONFIG")
                         ".
                        If "
                         (code "GLX_NONE")
                         " is specified, then only frame buffer configurations with
                        no caveats will be considered; if "
                         (code "GLX_SLOW_CONFIG")
                         "
is specified, then only slow frame buffer configurations will be considered; if "
                         (code "GLX_NON_CONFORMANT_CONFIG")
                         " is specified, then only
                        nonconformant frame buffer configurations will be considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_TYPE")))
                   (para)
                   (para "
Must be followed by one of "
                         (code "GLX_NONE")
                         ", "
                         (code "GLX_TRANSPARENT_RGB")
                         ", "
                         (code "GLX_TRANSPARENT_INDEX")
                         ".
                        If "
                         (code "GLX_NONE")
                         " is specified, then only opaque 
                        frame buffer configurations will be considered; if "
                         (code "GLX_TRANSPARENT_RGB")
                         "
is specified, then only transparent
                        frame buffer configurations that support RGBA rendering will be considered;
                        if "
                         (code "GLX_TRANSPARENT_INDEX")
                         " is specified,
                        then only transparent frame buffer configurations that support color 
                        index rendering will be considered.
                        The default value is "
                         (code "GLX_NONE")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_INDEX_VALUE")))
                   (para)
                   (para "
Must be followed by an integer value indicating the transparent
                        index value; the value must be between 0 and the maximum
                        frame buffer value for indices.
                        Only frame buffer configurations that use the 
                        specified transparent index value will be considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ".
                        This attribute is ignored unless "
                         (code "GLX_TRANSPARENT_TYPE")
                         " is 
                        included in "
                         (var "attrib_list")
                         " and specified as "
                         (code "GLX_TRANSPARENT_INDEX")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_RED_VALUE")))
                   (para)
                   (para "
Must be followed by an integer value indicating the transparent
                        red value; the value must be between 0 and the maximum
                        frame buffer value for red.
                        Only frame buffer configurations that use the 
                        specified transparent red value will be considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ".
                        This attribute is
                        ignored unless "
                         (code "GLX_TRANSPARENT_TYPE")
                         " is included in "
                         (var "attrib_list")
                         " and specified as "
                         (code "GLX_TRANSPARENT_RGB")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_GREEN_VALUE")))
                   (para)
                   (para "
Must be followed by an integer value indicating the transparent
                        green value; the value must be between 0 and the maximum
                        frame buffer value for green.
                        Only frame buffer configurations that use the 
                        specified transparent green value will be considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ".
                        This attribute is
                        ignored unless "
                         (code "GLX_TRANSPARENT_TYPE")
                         " is included in "
                         (var "attrib_list")
                         " and specified as "
                         (code "GLX_TRANSPARENT_RGB")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_BLUE_VALUE")))
                   (para)
                   (para "
Must be followed by an integer value indicating the transparent
                        blue value; the value must be between 0 and the maximum
                        frame buffer value for blue.
                        Only frame buffer configurations that use the 
                        specified transparent blue value will be considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ".
                        This attribute is ignored unless "
                         (code "GLX_TRANSPARENT_TYPE")
                         " is included in "
                         (var "attrib_list")
                         " and specified as "
                         (code "GLX_TRANSPARENT_RGB")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_ALPHA_VALUE")))
                   (para)
                   (para "
Must be followed by an integer value indicating the transparent
                        alpha value; the value must be between 0 and the maximum
                        frame buffer value for alpha.
                        Only frame buffer configurations that use the 
                        specified transparent alpha value will be considered.
                        The default value is "
                         (code "GLX_DONT_CARE")
                         ". ")))
     (para "
When more than one GLX frame buffer configuration matches the specified attributes,
            a list of matching configurations is returned. The list is sorted 
            according to the following precedence rules, which are applied in ascending 
            order (i.e., configurations
            that are considered equal by a lower numbered rule are sorted by the higher
            numbered rule): ")
     (table (% (formatter (asis)))
            (entry (% (heading "1."))
                   (para "
By "
                         (code "GLX_CONFIG_CAVEAT")
                         " where the precedence is "
                         (code "GLX_NONE")
                         ", "
                         (code "GLX_SLOW_CONFIG")
                         ", and "
                         (code "GLX_NON_CONFORMANT_CONFIG")
                         ". "))
            (entry (% (heading "2."))
                   (para "
Larger total number of RGBA color components
                        ("
                         (code "GLX_RED_SIZE")
                         ", "
                         (code "GLX_GREEN_SIZE")
                         ", "
                         (code "GLX_BLUE_SIZE")
                         ",
                        plus "
                         (code "GLX_ALPHA_SIZE")
                         ")
                        that have higher number of bits. If the requested number of bits in "
                         (var "attrib_list")
                         " is zero or "
                         (code "GLX_DONT_CARE")
                         " for a particular color
                        component, then the number of bits for that component is not considered. "))
            (entry (% (heading "3."))
                   (para "
Smaller " (code "GLX_BUFFER_SIZE") ". "))
            (entry (% (heading "4."))
                   (para "
Single buffered configuration ("
                         (code "GLX_DOUBLEBUFFER")
                         " being "
                         (code "False")
                         " precedes a double buffered one. "))
            (entry (% (heading "5."))
                   (para "
Smaller " (code "GLX_AUX_BUFFERS") ". "))
            (entry (% (heading "6."))
                   (para "
Larger " (code "GLX_DEPTH_SIZE") ". "))
            (entry (% (heading "7."))
                   (para "
Smaller " (code "GLX_STENCIL_SIZE") ". "))
            (entry (% (heading "8."))
                   (para "
Larger total number of accumulation buffer color components
                        ("
                         (code "GLX_ACCUM_RED_SIZE")
                         ", "
                         (code "GLX_ACCUM_GREEN_SIZE")
                         ", "
                         (code "GLX_ACCUM_BLUE_SIZE")
                         ", plus "
                         (code "GLX_ACCUM_ALPHA_SIZE")
                         ") that have
                        higher number of bits. If the requested number of bits in "
                         (var "attrib_list")
                         " is
                        zero or "
                         (code "GLX_DONT_CARE")
                         " for a particular color component, then the
                        number of bits for that component is not considered. "))
            (entry (% (heading "9."))
                   (para "
By "
                         (code "GLX_X_VISUAL_TYPE")
                         " where the precedence order is "
                         (code "GLX_TRUE_COLOR")
                         ", "
                         (code "GLX_DIRECT_COLOR")
                         ", "
                         (code "GLX_PSEUDO_COLOR")
                         ", "
                         (code "GLX_STATIC_COLOR")
                         ", "
                         (code "GLX_GRAY_SCALE")
                         ", "
                         (code "GLX_STATIC_GRAY")
                         ". ")))
     (heading "Errors")
     (para (code "NULL")
           " is returned if an undefined GLX attribute is
            encountered in "
           (var "attrib_list")
           ", if "
           (var "screen")
           " is invalid, or if "
           (var "dpy")
           " does
            not support the GLX extension. ")))

(define-gl-procedure
  glXChooseVisual
  "glXChooseVisual"
  (funcsynopsis
    (funcprototype
      (funcdef
        "XVisualInfo* "
        (function "glXChooseVisual"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int " (parameter "screen"))
      (paramdef "int * " (parameter "attribList"))))
  '(*fragment*
     (heading
       "return a visual that matches specified attributes")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "screen")))
                   (para "
Specifies the screen number. "))
            (entry (% (heading (var "attribList")))
                   (para "
Specifies a list of boolean attributes and integer attribute/value pairs.
                    The last attribute must be "
                         (code "None")
                         ". ")))
     (heading "Description")
     (para (code "glXChooseVisual")
           " returns a pointer to an XVisualInfo structure describing the visual
            that best meets a minimum specification.
            The boolean GLX attributes of the visual that is returned will match the
            specified values,
            and the integer GLX attributes will meet or exceed the specified
            minimum values. 
            If all other attributes are equivalent, then TrueColor and PseudoColor
            visuals have priority over DirectColor and StaticColor visuals,
            respectively.
            If no conforming visual exists, "
           (code "NULL")
           " is returned.
            To free the data returned by this function, use "
           (code "XFree")
           ". ")
     (para "
All boolean GLX attributes default to "
           (code "False")
           "
except "
           (code "GLX_USE_GL")
           ",
            which defaults to "
           (code "True")
           ".
            All integer GLX attributes default to zero.
            Default specifications are superseded by attributes included in "
           (var "attribList")
           ".
            Boolean attributes included in "
           (var "attribList")
           " are understood to be "
           (code "True")
           ".
            Integer attributes and enumerated type attributes are followed immediately 
            by the corresponding desired or
            minimum value.
            The list must be terminated with "
           (code "None")
           ". ")
     (para "
The interpretations of the various GLX visual attributes are as follows: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_USE_GL")))
                   (para "
Ignored.
                        Only visuals that can be rendered with GLX are considered. "))
            (entry (% (heading (code "GLX_BUFFER_SIZE")))
                   (para "
Must be followed by a nonnegative integer that indicates the desired
                        color index buffer size.
                        The smallest index buffer of at least the specified size is preferred.
                        Ignored if "
                         (code "GLX_RGBA")
                         " is asserted. "))
            (entry (% (heading (code "GLX_LEVEL")))
                   (para "
Must be followed by an integer buffer-level specification.
                        This specification is honored exactly.
                        Buffer level zero corresponds to the main frame buffer of the display.
                        Buffer level one is the first overlay frame buffer, level two the second
                        overlay frame buffer, and so on.
                        Negative buffer levels correspond to underlay frame buffers. "))
            (entry (% (heading (code "GLX_RGBA")))
                   (para "
If present,
                        only TrueColor and DirectColor visuals are considered.
                        Otherwise,
                        only PseudoColor and StaticColor visuals are considered. "))
            (entry (% (heading (code "GLX_DOUBLEBUFFER")))
                   (para "
If present,
                        only double-buffered visuals are considered.
                        Otherwise,
                        only single-buffered visuals are considered. "))
            (entry (% (heading (code "GLX_STEREO")))
                   (para "
If present,
                        only stereo visuals are considered.
                        Otherwise,
                        only monoscopic visuals are considered. "))
            (entry (% (heading (code "GLX_AUX_BUFFERS")))
                   (para "
Must be followed by a nonnegative integer that indicates the desired
                        number of auxiliary buffers.
                        Visuals with the 
                        smallest number of auxiliary buffers that meets or exceeds
                        the specified number are preferred. "))
            (entry (% (heading (code "GLX_RED_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        the smallest available red buffer is preferred.
                        Otherwise, the largest available red buffer of at least the minimum size
                        is preferred. "))
            (entry (% (heading (code "GLX_GREEN_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        the smallest available green buffer is preferred.
                        Otherwise, the largest available green buffer of at least the minimum size
                        is preferred. "))
            (entry (% (heading (code "GLX_BLUE_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        the smallest available blue buffer is preferred.
                        Otherwise, the largest available blue buffer of at least the minimum size
                        is preferred. "))
            (entry (% (heading (code "GLX_ALPHA_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        the smallest available alpha buffer is preferred.
                        Otherwise, the largest available alpha buffer of at least the minimum size
                        is preferred. "))
            (entry (% (heading (code "GLX_DEPTH_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        visuals with no depth buffer are preferred.
                        Otherwise, the largest available depth buffer of at least the minimum size
                        is preferred. "))
            (entry (% (heading (code "GLX_STENCIL_SIZE")))
                   (para "
Must be followed by a nonnegative integer that indicates the desired
                        number of stencil bitplanes.
                        The smallest stencil buffer of at least the specified size is preferred.
                        If the desired value is zero,
                        visuals with no stencil buffer are preferred. "))
            (entry (% (heading (code "GLX_ACCUM_RED_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        visuals with no red accumulation buffer are preferred.
                        Otherwise, the largest possible red accumulation buffer
                        of at least the minimum size is preferred. "))
            (entry (% (heading (code "GLX_ACCUM_GREEN_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        visuals with no green accumulation buffer are preferred.
                        Otherwise, the largest possible green accumulation buffer
                        of at least the minimum size is preferred. "))
            (entry (% (heading (code "GLX_ACCUM_BLUE_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        visuals with no blue accumulation buffer are preferred.
                        Otherwise, the largest possible blue accumulation buffer
                        of at least the minimum size is preferred. "))
            (entry (% (heading (code "GLX_ACCUM_ALPHA_SIZE")))
                   (para "
Must be followed by a nonnegative minimum size specification.
                        If this value is zero,
                        visuals with no alpha accumulation buffer are preferred.
                        Otherwise, the largest possible alpha accumulation buffer
                        of at least the minimum size is preferred. ")))
     (heading "Errors")
     (para (code "NULL")
           " is returned if an undefined GLX attribute is encountered in "
           (var "attribList")
           ". ")))

(define-gl-procedure
  glXCopyContext
  "glXCopyContext"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXCopyContext"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXContext " (parameter "src"))
      (paramdef "GLXContext " (parameter "dst"))
      (paramdef "unsigned long " (parameter "mask"))))
  '(*fragment*
     (heading
       "copy state from one rendering context to another")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "src")))
                   (para "
Specifies the source context. "))
            (entry (% (heading (var "dst")))
                   (para "
Specifies the destination context. "))
            (entry (% (heading (var "mask")))
                   (para "
Specifies which portions of "
                         (var "src")
                         " state are to be copied to "
                         (var "dst")
                         ". ")))
     (heading "Description")
     (para (code "glXCopyContext")
           " copies selected groups of state variables from "
           (var "src")
           " to "
           (var "dst")
           ". "
           (var "mask")
           " indicates which groups of state variables are to be copied. "
           (var "mask")
           " contains the bitwise OR of the same symbolic names that are
            passed to the GL command "
           (code "glPushAttrib")
           ".
            The single symbolic constant "
           (code "GLX_ALL_ATTRIB_BITS")
           " can be used to
            copy the maximum possible portion of rendering state. ")
     (para "
The copy can be done only if the renderers named by "
           (var "src")
           " and "
           (var "dst")
           "
share an address space.
            Two rendering contexts share an address space if both are nondirect
            using the same server,
            or if both are direct and owned by a single process.
            Note that in the nondirect case it is not necessary for the calling
            threads to share an address space,
            only for their related rendering contexts to share an address space. ")
     (para "
Not all values for GL state can be copied.
            For example,
            pixel pack and unpack state,
            render mode state,
            and select and feedback state are not copied.
            The state that can be copied is exactly the state that is manipulated
            by the GL command "
           (code "glPushAttrib")
           ". ")
     (para "
An implicit "
           (code "glFlush")
           " is done by "
           (code "glXCopyContext")
           " if "
           (var "src")
           " is the current
            context for the calling thread. ")
     (heading "Errors")
     (para (code "BadMatch")
           " is generated if rendering contexts "
           (var "src")
           " and "
           (var "dst")
           "
do not share an address space
            or were not created with respect to the same screen. ")
     (para (code "BadAccess")
           " is generated if "
           (var "dst")
           " is current to any thread
            (including the calling thread) at the time "
           (code "glXCopyContext")
           " is called. ")
     (para (code "GLXBadCurrentWindow")
           " is generated if "
           (var "src")
           " is the current
            context and the current drawable is a window that is no longer valid. ")
     (para (code "GLXBadContext")
           " is generated if either "
           (var "src")
           " or "
           (var "dst")
           " is not
            a valid GLX context. ")))

(define-gl-procedure
  glXCreateContext
  "glXCreateContext"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXContext "
        (function "glXCreateContext"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "XVisualInfo * " (parameter "vis"))
      (paramdef "GLXContext " (parameter "shareList"))
      (paramdef "Bool " (parameter "direct"))))
  '(*fragment*
     (heading "create a new GLX rendering context")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "vis")))
                   (para "
Specifies the visual that defines the frame buffer resources available to
                    the rendering context.
                    It is a pointer to an "
                         (code "XVisualInfo")
                         " structure,
                    not a visual ID or a pointer to a "
                         (code "Visual")
                         ". "))
            (entry (% (heading (var "shareList")))
                   (para "
Specifies the context with which to share display lists. "
                         (code "NULL")
                         " indicates that no sharing is to take place. "))
            (entry (% (heading (var "direct")))
                   (para "
Specifies whether rendering is to be done with a direct connection
                    to the graphics system if possible ("
                         (code "True")
                         ")
                    or through the X server ("
                         (code "False")
                         "). ")))
     (heading "Description")
     (para (code "glXCreateContext")
           " creates a GLX rendering context and returns its handle.
            This context can be used to render into both windows and GLX pixmaps.
            If "
           (code "glXCreateContext")
           " fails to create a rendering context, "
           (code "NULL")
           " is returned. ")
     (para "
If "
           (var "direct")
           " is "
           (code "True")
           ",
            then a direct rendering context is created if the
            implementation supports direct rendering, if the connection is to an X
            server that is local, and if a direct rendering context is available. (An implementation may return an indirect context when "
           (var "direct")
           " is "
           (code "True")
           ".)
            If "
           (var "direct")
           " is "
           (code "False")
           ",
            then a rendering context that renders through the X server is always created.
            Direct rendering provides a performance advantage in some implementations.
            However, direct rendering contexts cannot be shared outside a single process,
            and they may be unable to render to GLX pixmaps. ")
     (para "
If "
           (var "shareList")
           " is not "
           (code "NULL")
           ",
            then all display-list indexes and definitions are shared by
            context "
           (var "shareList")
           " and by the newly created context.
            An arbitrary number of contexts can share a single display-list space.
            However,
            all rendering contexts that share a single display-list space must
            themselves exist in the same address space.
            Two rendering contexts share an address space if both are nondirect
            using the same server,
            or if both are direct and owned by a single process.
            Note that in the nondirect case, it is not necessary for the calling
            threads to share an address space,
            only for their related rendering contexts to share an address space. ")
     (para "
If the GL version is 1.1 or greater, 
            then all texture objects except object 0  
            are shared by any contexts that share display lists. ")
     (heading "Errors")
     (para (code "NULL")
           " is returned if execution fails on the client side. ")
     (para (code "BadMatch")
           " is generated if the context to be created would not
            share the address space or the screen of the context specified by "
           (var "shareList")
           ". ")
     (para (code "BadValue")
           " is generated if "
           (var "vis")
           " is not a valid visual (for
            example, if a particular GLX implementation does not support it). ")
     (para (code "GLXBadContext")
           " is generated if "
           (var "shareList")
           " is not a GLX context
            and is not "
           (code "NULL")
           ". ")
     (para (code "BadAlloc")
           " is generated if the server does not have enough
            resources to allocate the new context. ")))

(define-gl-procedure
  glXCreateGLXPixmap
  "glXCreateGLXPixmap"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXPixmap "
        (function "glXCreateGLXPixmap"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "XVisualInfo * " (parameter "vis"))
      (paramdef "Pixmap " (parameter "pixmap"))))
  '(*fragment*
     (heading
       "create an off-screen GLX rendering area")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "vis")))
                   (para "
Specifies the visual that defines the structure of the rendering area.
                    It is a pointer to an "
                         (code "XVisualInfo")
                         " structure,
                    not a visual ID or a pointer to a "
                         (code "Visual")
                         ". "))
            (entry (% (heading (var "pixmap")))
                   (para "
Specifies the X pixmap that will be used as the front left color buffer
                    of the off-screen rendering area. ")))
     (heading "Description")
     (para (code "glXCreateGLXPixmap")
           " creates an off-screen rendering area and returns its XID.
            Any GLX rendering context that was created with respect to "
           (var "vis")
           "
can be used to render into this off-screen area.
            Use "
           (code "glXMakeCurrent")
           " to associate the rendering area with a GLX
            rendering context. ")
     (para "
The X pixmap identified by "
           (var "pixmap")
           " is used as the front left buffer of the
            resulting off-screen rendering area.
            All other buffers specified by "
           (var "vis")
           ",
            including color buffers other than the front left buffer,
            are created without externally visible names.
            GLX pixmaps with double-buffering are supported.
            However, "
           (code "glXSwapBuffers")
           " is ignored by these pixmaps. ")
     (para "
Some implementations may not support GLX pixmaps with direct rendering
            contexts. ")
     (heading "Errors")
     (para (code "BadMatch")
           " is generated if the depth of "
           (var "pixmap")
           " does not match
            the depth value reported by core X11 for "
           (var "vis")
           ",
            or if "
           (var "pixmap")
           " was not created with respect to the same screen as "
           (var "vis")
           ". ")
     (para (code "BadValue")
           " is generated
            if "
           (var "vis")
           " is not a valid XVisualInfo pointer (for example, if a
            particular GLX implementation does not support this visual). ")
     (para (code "BadPixmap")
           " is generated if "
           (var "pixmap")
           " is not a valid pixmap. ")
     (para (code "BadAlloc")
           " is generated if the server cannot allocate the GLX
            pixmap. ")))

(define-gl-procedure
  glXCreateNewContext
  "glXCreateNewContext"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXContext "
        (function "glXCreateNewContext"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXFBConfig " (parameter "config"))
      (paramdef "int " (parameter "render_type"))
      (paramdef "GLXContext " (parameter "share_list"))
      (paramdef "Bool " (parameter "direct"))))
  '(*fragment*
     (heading "create a new GLX rendering context")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "config")))
                   (para "
Specifies the GLXFBConfig structure with the desired attributes for the
                    context. "))
            (entry (% (heading (var "render_type")))
                   (para "
Specifies the type of the context to be created.  Must be one of "
                         (code "GLX_RGBA_TYPE")
                         " or "
                         (code "GLX_COLOR_INDEX_TYPE")
                         ". "))
            (entry (% (heading (var "share_list")))
                   (para "
Specifies the context with which to share display lists. "
                         (code "NULL")
                         " indicates that no sharing is to take place. "))
            (entry (% (heading (var "share_list")))
                   (para "
Specifies whether rendering is to be done with a direct connection
                    to the graphics system if possible ("
                         (code "True")
                         ")
                    or through the X server ("
                         (code "False")
                         "). ")))
     (heading "Description")
     (para (code "glXCreateNewContext")
           " creates a GLX rendering context and returns its handle.
            This context can be used to render into GLX windows, pixmaps, or pixel 
            buffers.
            If "
           (code "glXCreateNewContext")
           " fails to create a rendering context, "
           (code "NULL")
           " is returned. ")
     (para "
If "
           (var "render_type")
           " is "
           (code "GLX_RGBA_TYPE")
           ", then a context that supports RGBA
            rendering is created.  If "
           (var "config")
           " is "
           (code "GLX_COLOR_INDEX_TYPE")
           ", then
            context supporting color-index rendering is created. ")
     (para "
If "
           (var "render_type")
           " is not "
           (code "NULL")
           ",
            then all display-list indexes and definitions are shared by
            context "
           (var "render_type")
           " and by the newly created context.
            An arbitrary number of contexts can share a single display-list space.
            However,
            all rendering contexts that share a single display-list space must
            themselves exist in the same address space.
            Two rendering contexts share an address space if both are nondirect
            using the same server,
            or if both are direct and owned by a single process.
            Note that in the nondirect case, it is not necessary for the calling
            threads to share an address space,
            only for their related rendering contexts to share an address space. ")
     (para "
If "
           (var "share_list")
           " is "
           (code "True")
           ",
            then a direct-rendering context is created if the
            implementation supports direct rendering, if the connection is to an X
            server that is local, and if a direct-rendering context is available. (An implementation may return an indirect context when "
           (var "share_list")
           " is "
           (code "True")
           ".)
            If "
           (var "share_list")
           " is "
           (code "False")
           ",
            then a rendering context that renders through the X server is always created.
            Direct rendering provides a performance advantage in some implementations.
            However, direct-rendering contexts cannot be shared outside a single process,
            and they may be unable to render to GLX pixmaps. ")
     (heading "Errors")
     (para (code "NULL")
           " is returned if execution fails on the client side. ")
     (para (code "GLXBadContext")
           " is generated if "
           (var "render_type")
           " is not a GLX context
            and is not "
           (code "NULL")
           ". ")
     (para (code "GLXBadFBConfig")
           " is generated if "
           (var "config")
           " is not a valid
            GLXFBConfig. ")
     (para (code "BadMatch")
           " is generated if the context to be created would not
            share the address space or the screen of the context specified by "
           (var "render_type")
           ". ")
     (para (code "BadAlloc")
           " is generated if the server does not have enough
            resources to allocate the new context. ")
     (para (code "BadValue")
           " is generated if "
           (var "config")
           " is not a valid visual (for
            example, if a particular GLX implementation does not support it). ")))

(define-gl-procedure
  glXCreatePbuffer
  "glXCreatePbuffer"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXPbuffer "
        (function "glXCreatePbuffer"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXFBConfig " (parameter "config"))
      (paramdef
        "const int * "
        (parameter "attrib_list"))))
  '(*fragment*
     (heading "create an off-screen rendering area")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "config")))
                   (para "
Specifies a GLXFBConfig structure with the desired attributes for the
                    window. "))
            (entry (% (heading (var "attrib_list")))
                   (para "
Specifies a list of attribute value pairs, which must be terminated with "
                         (code "None")
                         " or "
                         (code "NULL")
                         ". Accepted attributes are "
                         (code "GLX_PBUFFER_WIDTH")
                         ", "
                         (code "GLX_PBUFFER_HEIGHT")
                         ", "
                         (code "GLX_PRESERVED_CONTENTS")
                         ", and "
                         (code "GLX_LARGEST_PBUFFER")
                         ". ")))
     (heading "Description")
     (para (code "glXCreatePbuffer")
           " creates an off-screen rendering area and returns its XID.
            Any GLX rendering context that was created with respect to "
           (var "config")
           "
can be used to render into this window.
            Use "
           (code "glXMakeContextCurrent")
           " to associate the rendering area with a GLX
            rendering context. ")
     (para "
The accepted attributes for a GLXPbuffer are: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_PBUFFER_WIDTH")))
                   (para "
Specify the pixel width of the requested GLXPbuffer. The default value
                        is 0. "))
            (entry (% (heading (code "GLX_PBUFFER_HEIGHT")))
                   (para "
Specify the pixel height of the requested GLXPbuffer. The default value
                        is 0. "))
            (entry (% (heading (code "GLX_LARGEST_PBUFFER")))
                   (para "
Specify to obtain the largest available pixel buffer, if the requested
                        allocation would have failed. The width and height of the allocated
                        pixel buffer will never exceed the specified "
                         (code "GLX_PBUFFER_WIDTH")
                         " or "
                         (code "GLX_PBUFFER_HEIGHT")
                         ", respectively.  Use "
                         (code "glXQueryDrawable")
                         " to
                        retrieve the dimensions of the allocated pixel buffer. The default value is "
                         (code "False")
                         ". "))
            (entry (% (heading (code "GLX_PRESERVED_CONTENTS")))
                   (para "
Specify if the contents of the pixel buffer should be preserved when a
                        resource conflict occurs.  If set to "
                         (code "False")
                         ", the contents of the 
                        pixel buffer may be lost at any time.  If set to "
                         (code "True")
                         ", or not
                        specified in "
                         (var "attrib_list")
                         ", then the contents of the pixel buffer will be preserved 
                        (most likely by copying the contents into main system memory from the
                        frame buffer).  In either case, the client can register (using "
                         (code "glXSelectEvent")
                         ", to receive
                        pixel buffer clobber events that are generated when the pbuffer contents have
                        been preserved or damaged. ")))
     (para "
GLXPbuffers contain the color and ancillary buffers specified by "
           (var "config")
           ".  It is possible to create a pixel buffer with back buffers and
            to swap those buffers using "
           (code "glXSwapBuffers")
           ". ")
     (heading "Errors")
     (para (code "BadAlloc")
           " is generated if there are insufficient resources to
            allocate the requested GLXPbuffer. ")
     (para (code "GLXBadFBConfig")
           " is generated if "
           (var "config")
           " is not a valid
            GLXFBConfig. ")
     (para (code "BadMatch")
           " is generated if "
           (var "config")
           " does not support rendering to
            pixel buffers (e.g., "
           (code "GLX_DRAWABLE_TYPE")
           " does not contain "
           (code "GLX_PBUFFER_BIT")
           "). ")))

(define-gl-procedure
  glXCreatePixmap
  "glXCreatePixmap"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXPixmap "
        (function "glXCreatePixmap"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXFBConfig " (parameter "config"))
      (paramdef "Pixmap " (parameter "pixmap"))
      (paramdef
        "const int * "
        (parameter "attrib_list"))))
  '(*fragment*
     (heading "create an off-screen rendering area")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "config")))
                   (para "
Specifies a GLXFBConfig structure with the desired attributes for the
                    window. "))
            (entry (% (heading (var "pixmap")))
                   (para "
Specifies the X pixmap to be used as the rendering area. "))
            (entry (% (heading (var "attrib_list")))
                   (para "
Currently unused. This must be set to "
                         (code "NULL")
                         " or be an empty list
                    (i.e., one in which the first element is "
                         (code "None")
                         "). ")))
     (heading "Description")
     (para (code "glXCreatePixmap")
           " creates an off-screen rendering area and returns its XID.
            Any GLX rendering context that was created with respect to "
           (var "config")
           "
can be used to render into this window.
            Use "
           (code "glXMakeCurrent")
           " to associate the rendering area with a GLX
            rendering context. ")
     (heading "Errors")
     (para (code "BadMatch")
           " is generated if "
           (var "pixmap")
           " was not created with a visual
            that corresponds to "
           (var "config")
           ". ")
     (para (code "BadMatch")
           " is generated if "
           (var "config")
           " does not support rendering to
            windows (e.g., "
           (code "GLX_DRAWABLE_TYPE")
           " does not contain "
           (code "GLX_WINDOW_BIT")
           "). ")
     (para (code "BadWindow")
           " is generated if "
           (var "pixmap")
           " is not a valid window XID. "
           (code "BadAlloc")
           " is generated if there is already a GLXFBConfig
            associated with "
           (var "pixmap")
           ". ")
     (para (code "BadAlloc")
           " is generated if the X server cannot allocate a new
            GLX window. ")
     (para (code "GLXBadFBConfig")
           " is generated if "
           (var "config")
           " is not a valid
            GLXFBConfig. ")
     (para)))

(define-gl-procedure
  glXCreateWindow
  "glXCreateWindow"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXWindow "
        (function "glXCreateWindow"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXFBConfig " (parameter "config"))
      (paramdef "Window " (parameter "win"))
      (paramdef
        "const int * "
        (parameter "attrib_list"))))
  '(*fragment*
     (heading "create an on-screen rendering area")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "config")))
                   (para "
Specifies a GLXFBConfig structure with the desired attributes for the
                    window. "))
            (entry (% (heading (var "win")))
                   (para "
Specifies the X window to be used as the rendering area. "))
            (entry (% (heading (var "attrib_list")))
                   (para "
Currently unused. This must be set to "
                         (code "NULL")
                         " or be an empty list
                    (i.e., one in which the first element is "
                         (code "None")
                         "). ")))
     (heading "Description")
     (para (code "glXCreateWindow")
           " creates an on-screen rendering area from an existing X window
            that was created with a visual matching "
           (var "config")
           ". The XID of the
            GLXWindow is returned.
            Any GLX rendering context that was created with respect to "
           (var "config")
           "
can be used to render into this window.
            Use "
           (code "glXMakeContextCurrent")
           " to associate the rendering area with a GLX
            rendering context. ")
     (heading "Errors")
     (para (code "BadMatch")
           " is generated if "
           (var "win")
           " was not created with a visual
            that corresponds to "
           (var "config")
           ". ")
     (para (code "BadMatch")
           " is generated if "
           (var "config")
           " does not support rendering to
            windows (i.e., "
           (code "GLX_DRAWABLE_TYPE")
           " does not contain "
           (code "GLX_WINDOW_BIT")
           "). ")
     (para (code "BadWindow")
           " is generated if "
           (var "win")
           " is not a valid pixmap XID. ")
     (para (code "BadAlloc")
           " is generated if there is already a GLXFBConfig
            associated with "
           (var "win")
           ". ")
     (para (code "BadAlloc")
           " is generated if the X server cannot allocate a new
            GLX window. ")
     (para (code "GLXBadFBConfig")
           " is generated if "
           (var "config")
           " is not a valid
            GLXFBConfig. ")
     (para)))

(define-gl-procedure
  glXDestroyContext
  "glXDestroyContext"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXDestroyContext"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXContext " (parameter "ctx"))))
  '(*fragment*
     (heading "destroy a GLX context")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies the GLX context to be destroyed. ")))
     (heading "Description")
     (para "
If the GLX rendering context "
           (var "ctx")
           " is not current to any thread, "
           (code "glXDestroyContext")
           " destroys it immediately.
            Otherwise, "
           (var "ctx")
           " is destroyed when it becomes not current to any thread.
            In either case, the resource ID
            referenced by "
           (var "ctx")
           " is freed immediately. ")
     (heading "Errors")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " is not a valid GLX context. ")))

(define-gl-procedure
  glXDestroyGLXPixmap
  "glXDestroyGLXPixmap"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "glXDestroyGLXPixmap"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXPixmap " (parameter "pix"))))
  '(*fragment*
     (heading "destroy a GLX pixmap")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "pix")))
                   (para "
Specifies the GLX pixmap to be destroyed. ")))
     (heading "Description")
     (para "
If the GLX pixmap "
           (var "pix")
           " is not current to any client, "
           (code "glXDestroyGLXPixmap")
           " destroys it immediately.
            Otherwise, "
           (var "pix")
           " is destroyed when it becomes not current to any client.
            In either case, the resource ID
            is freed immediately. ")
     (heading "Errors")
     (para (code "GLXBadPixmap")
           " is generated if "
           (var "pix")
           " is not a valid GLX pixmap. ")))

(define-gl-procedure
  glXDestroyPbuffer
  "glXDestroyPbuffer"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXDestroyPbuffer"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXPbuffer " (parameter "pbuf"))))
  '(*fragment*
     (heading "destroy an off-screen rendering area")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "pbuf")))
                   (para "
Specifies the GLXPbuffer to be destroyed. ")))
     (heading "Description")
     (para (code "glXDestroyPbuffer")
           " destroys a GLXPbuffer created by "
           (code "glXCreatePbuffer")
           ". ")
     (heading "Errors")
     (para (code "GLXBadPbuffer")
           " is generated if "
           (var "pbuf")
           " is not a valid
            GLXPbuffer. ")))

(define-gl-procedure
  glXDestroyPixmap
  "glXDestroyPixmap"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXDestroyPixmap"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXPixmap " (parameter "pixmap"))))
  '(*fragment*
     (heading "destroy an off-screen rendering area")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "pixmap")))
                   (para "
Specifies the GLXPixmap to be destroyed. ")))
     (heading "Description")
     (para (code "glXDestroyPixmap")
           " destroys a GLXPixmap created by "
           (code "glXCreatePixmap")
           ". ")
     (heading "Errors")
     (para (code "GLXBadPixmap")
           " is generated if "
           (var "pixmap")
           " is not a valid
            GLXPixmap. ")))

(define-gl-procedure
  glXDestroyWindow
  "glXDestroyWindow"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXDestroyWindow"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXWindow " (parameter "win"))))
  '(*fragment*
     (heading "destroy an on-screen rendering area")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "win")))
                   (para "
Specifies the GLXWindow to be destroyed. ")))
     (heading "Description")
     (para (code "glXDestroyWindow")
           " destroys a GLXWindow created by "
           (code "glXCreateWindow")
           ". ")
     (heading "Errors")
     (para (code "GLXBadWindow")
           " is generated if "
           (var "win")
           " is not a valid
            GLXPixmap. ")))

(define-gl-procedure
  glXFreeContextEXT
  "glXFreeContextEXT"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXFreeContextEXT"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXContext " (parameter "ctx"))))
  '(*fragment*
     (heading
       "free client-side memory for imported context")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies a GLX rendering context. ")))
     (heading "Description")
     (para (code "glXFreeContextEXT")
           " frees the client-side part of a GLXContext that 
            was created with "
           (code "glXImportContextEXT")
           ". "
           (code "glXFreeContextEXT")
           " does not 
            free the server-side context information or the XID 
            associated with the server-side context. ")
     (para (code "glXFreeContextEXT")
           " is part of the "
           (code "EXT_import_context")
           " extension,
            not part of the core GLX command set. If _glxextstring(EXT_import_context)
            is included in the string returned by "
           (code "glXQueryExtensionsString")
           ",
            when called with argument "
           (code "GLX_EXTENSIONS")
           ",
            extension "
           (code "EXT_vertex_array")
           " is supported. ")
     (heading "Errors")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " does not
            refer to a valid context. ")))

(define-gl-procedure
  glXGetClientString
  "glXGetClientString"
  (funcsynopsis
    (funcprototype
      (funcdef
        "const char * "
        (function "glXGetClientString"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int " (parameter "name"))))
  '(*fragment*
     (heading "return a string describing the client")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "name")))
                   (para "
Specifies which string is returned.
                    The symbolic constants "
                         (code "GLX_VENDOR")
                         ", "
                         (code "GLX_VERSION")
                         ",
                    and "
                         (code "GLX_EXTENSIONS")
                         " are accepted. ")))
     (heading "Description")
     (para (code "glXGetClientString")
           " returns a string
            describing some aspect of the client library. The possible values for "
           (var "name")
           " are "
           (code "GLX_VENDOR")
           ", "
           (code "GLX_VERSION")
           ", and "
           (code "GLX_EXTENSIONS")
           ". If "
           (var "name")
           " is not set to one of these values, "
           (code "glXGetClientString")
           " returns "
           (code "NULL")
           ". 
            The format and contents of the vendor string is implementation dependent. ")
     (para "
The extensions string is null-terminated and contains a
            space-separated list of  extension names. (The extension names never
            contain spaces.)  
            If there are no extensions to GLX, then the empty string is returned. ")
     (para "
The version string is laid out as follows: ")
     (para "
<major_version.minor_version><space><vendor-specific info> ")
     (para "
Both the major and minor portions of the version number are of arbitrary 
            length.  The vendor-specific information is optional.  However, if it is 
            present, the format and contents are implementation specific. ")))

(define-gl-procedure
  glXGetConfig
  "glXGetConfig"
  (funcsynopsis
    (funcprototype
      (funcdef "int " (function "glXGetConfig"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "XVisualInfo * " (parameter "vis"))
      (paramdef "int " (parameter "attrib"))
      (paramdef "int * " (parameter "value"))))
  '(*fragment*
     (heading "return information about GLX visuals")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "vis")))
                   (para "
Specifies the visual to be queried.
                    It is a pointer to an "
                         (code "XVisualInfo")
                         " structure,
                    not a visual ID or a pointer to a "
                         (code "Visual")
                         ". "))
            (entry (% (heading (var "attrib")))
                   (para "
Specifies the visual attribute to be returned. "))
            (entry (% (heading (var "value")))
                   (para "
Returns the requested value. ")))
     (heading "Description")
     (para (code "glXGetConfig")
           " sets "
           (var "value")
           " to the "
           (var "attrib")
           " value of windows or GLX pixmaps
            created with respect to "
           (var "vis")
           ". "
           (code "glXGetConfig")
           " returns an error code if it fails for any reason.
            Otherwise, zero is returned. ")
     (para (var "attrib")
           " is one of the following: ")
     (para)
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_USE_GL")))
                   (para (code "True")
                         " if OpenGL rendering is supported by this visual, "
                         (code "False")
                         " otherwise. "))
            (entry (% (heading (code "GLX_BUFFER_SIZE")))
                   (para "
Number of bits per color buffer.
                        For RGBA visuals, "
                         (code "GLX_BUFFER_SIZE")
                         " is the sum of "
                         (code "GLX_RED_SIZE")
                         ", "
                         (code "GLX_GREEN_SIZE")
                         ", "
                         (code "GLX_BLUE_SIZE")
                         ", and "
                         (code "GLX_ALPHA_SIZE")
                         ".
                        For color index visuals, "
                         (code "GLX_BUFFER_SIZE")
                         " is the size of the
                        color indexes. "))
            (entry (% (heading (code "GLX_LEVEL")))
                   (para "
Frame buffer level of the visual.
                        Level zero is the default frame buffer.
                        Positive levels correspond to frame buffers that overlay the default buffer,
                        and negative levels correspond to frame buffers that underlay the default
                        buffer. "))
            (entry (% (heading (code "GLX_RGBA")))
                   (para (code "True")
                         " if color buffers store red, green, blue, and alpha values. "
                         (code "False")
                         " if they store color indexes. "))
            (entry (% (heading (code "GLX_DOUBLEBUFFER")))
                   (para (code "True")
                         " if color buffers exist in front/back pairs that can be swapped, "
                         (code "False")
                         " otherwise. "))
            (entry (% (heading (code "GLX_STEREO")))
                   (para (code "True")
                         " if color buffers exist in left/right pairs, "
                         (code "False")
                         " otherwise. "))
            (entry (% (heading (code "GLX_AUX_BUFFERS")))
                   (para "
Number of auxiliary color buffers that are available.
                        Zero indicates that no auxiliary color buffers exist. "))
            (entry (% (heading (code "GLX_RED_SIZE")))
                   (para "
Number of bits of red stored in each color buffer.
                        Undefined if "
                         (code "GLX_RGBA")
                         " is "
                         (code "False")
                         ". "))
            (entry (% (heading (code "GLX_GREEN_SIZE")))
                   (para "
Number of bits of green stored in each color buffer.
                        Undefined if "
                         (code "GLX_RGBA")
                         " is "
                         (code "False")
                         ". "))
            (entry (% (heading (code "GLX_BLUE_SIZE")))
                   (para "
Number of bits of blue stored in each color buffer.
                        Undefined if "
                         (code "GLX_RGBA")
                         " is "
                         (code "False")
                         ". "))
            (entry (% (heading (code "GLX_ALPHA_SIZE")))
                   (para "
Number of bits of alpha stored in each color buffer.
                        Undefined if "
                         (code "GLX_RGBA")
                         " is "
                         (code "False")
                         ". "))
            (entry (% (heading (code "GLX_DEPTH_SIZE")))
                   (para "
Number of bits in the depth buffer. "))
            (entry (% (heading (code "GLX_STENCIL_SIZE")))
                   (para "
Number of bits in the stencil buffer. "))
            (entry (% (heading (code "GLX_ACCUM_RED_SIZE")))
                   (para "
Number of bits of red stored in the accumulation buffer. "))
            (entry (% (heading (code "GLX_ACCUM_GREEN_SIZE")))
                   (para "
Number of bits of green stored in the accumulation buffer. "))
            (entry (% (heading (code "GLX_ACCUM_BLUE_SIZE")))
                   (para "
Number of bits of blue stored in the accumulation buffer. "))
            (entry (% (heading (code "GLX_ACCUM_ALPHA_SIZE")))
                   (para "
Number of bits of alpha stored in the accumulation buffer. ")))
     (para "
The X protocol allows a single visual ID to be instantiated with
            different numbers of bits per pixel.
            Windows or GLX pixmaps that will be rendered with OpenGL, however,
            must be instantiated with a color buffer depth of "
           (code "GLX_BUFFER_SIZE")
           ". ")
     (para "
Although a GLX implementation can export many visuals that support GL
            rendering,
            it must support 
            at least one RGBA visual. This visual must have at 
            least one color buffer,
            a stencil buffer of at least 1 bit,
            a depth buffer of at least 12 bits,
            and an accumulation buffer.
            Alpha bitplanes are optional in this visual.
            However,
            its color buffer size must be as great as that of the
            deepest "
           (code "TrueColor")
           ", "
           (code "DirectColor")
           ", "
           (code "PseudoColor")
           ", or "
           (code "StaticColor")
           " visual supported on level zero,
            and it must itself be made available on level zero. ")
     (para "
In addition, if the X server exports a "
           (code "PseudoColor")
           " or "
           (code "StaticColor")
           " visual on framebuffer level 0, a color index 
            visual is also required on that level.
            It must have  
            at least one color buffer,
            a stencil buffer of at least 1 bit,
            and a depth buffer of at least 12 bits.
            This visual must 
            have as many 
            color bitplanes as the deepest "
           (code "PseudoColor")
           " or "
           (code "StaticColor")
           " visual supported on level 0. ")
     (para "
Applications are best written to select the visual that most closely
            meets their requirements.
            Creating windows or GLX pixmaps with unnecessary buffers can result in
            reduced rendering performance as well as poor resource allocation. ")
     (heading "Errors")
     (para (code "GLX_NO_EXTENSION")
           " is returned if "
           (var "dpy")
           " does not support the GLX
            extension. ")
     (para (code "GLX_BAD_SCREEN")
           " is returned if the screen of "
           (var "vis")
           " does not correspond
            to a screen. ")
     (para (code "GLX_BAD_ATTRIBUTE")
           " is returned if "
           (var "attrib")
           " is not a valid GLX attribute. ")
     (para (code "GLX_BAD_VISUAL")
           " is returned if "
           (var "vis")
           " doesn't support GLX and an
            attribute other than "
           (code "GLX_USE_GL")
           " is requested. ")))

(define-gl-procedure
  glXGetContextIDEXT
  "glXGetContextIDEXT"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXContextID "
        (function "glXGetContextIDEXT"))
      (paramdef "const GLXContext " (parameter "ctx"))))
  '(*fragment*
     (heading "get the XID for a context.")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies a GLX rendering context. ")))
     (heading "Description")
     (para (code "glXGetContextIDEXT")
           " returns the XID associated with a GLXContext. ")
     (para "
No round trip is forced to the server; unlike most X calls that
            return a value, "
           (code "glXGetContextIDEXT")
           " does not flush any pending events. ")
     (para (code "glXGetContextIDEXT")
           " is part of the "
           (code "EXT_import_context")
           " extension,
            not part of the core GLX command set. If _glxextstring(EXT_import_context)
            is included in the string returned by "
           (code "glXQueryExtensionsString")
           ",
            when called with argument "
           (code "GLX_EXTENSIONS")
           ",
            extension "
           (code "EXT_import_context")
           " is supported. ")
     (heading "Errors")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " does not
            refer to a valid context. ")))

(define-gl-procedure
  glXGetCurrentContext
  "glXGetCurrentContext"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXContext "
        (function "glXGetCurrentContext"))))
  '(*fragment*
     (heading "return the current context")
     (heading "Description")
     (para (code "glXGetCurrentContext")
           " returns the current context,
            as specified by "
           (code "glXMakeCurrent")
           ".
            If there is no current context, "
           (code "NULL")
           " is returned. ")
     (para (code "glXGetCurrentContext")
           " returns client-side information.
            It does not make a round trip to the server. ")
     (para)))

(define-gl-procedure
  glXGetCurrentDisplay
  "glXGetCurrentDisplay"
  (funcsynopsis
    (funcprototype
      (funcdef
        "Display * "
        (function "glXGetCurrentDisplay"))))
  '(*fragment*
     (heading "get display for current context")
     (heading "Description")
     (para (code "glXGetCurrentDisplay")
           " returns the display for the current context. If no 
            context is current, "
           (code "NULL")
           " is returned. ")
     (para (code "glXGetCurrentDisplay")
           " returns client-side information. It does not make a round-trip 
            to the server, and therefore does not flush any pending events. ")))

(define-gl-procedure
  glXGetCurrentDrawable
  "glXGetCurrentDrawable"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXDrawable "
        (function "glXGetCurrentDrawable"))))
  '(*fragment*
     (heading "return the current drawable")
     (heading "Description")
     (para (code "glXGetCurrentDrawable")
           " returns the current drawable,
            as specified by "
           (code "glXMakeCurrent")
           ".
            If there is no current drawable, "
           (code "None")
           " is returned. ")
     (para (code "glXGetCurrentDrawable")
           " returns client-side information.
            It does not make a round trip to the server. ")))

(define-gl-procedure
  glXGetCurrentReadDrawable
  "glXGetCurrentReadDrawable"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXDrawable "
        (function "glXGetCurrentReadDrawable"))))
  '(*fragment*
     (heading "return the current drawable")
     (heading "Description")
     (para (code "glXGetCurrentReadDrawable")
           " returns the current read drawable,
            as specified by "
           (code "read")
           " parameter
            of "
           (code "glXMakeContextCurrent")
           ".
            If there is no current drawable, "
           (code "None")
           " is returned. ")
     (para (code "glXGetCurrentReadDrawable")
           " returns client-side information.
            It does not make a round-trip to the server. ")))

(define-gl-procedure
  glXGetFBConfigAttrib
  "glXGetFBConfigAttrib"
  (funcsynopsis
    (funcprototype
      (funcdef
        "int "
        (function "glXGetFBConfigAttrib"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXFBConfig " (parameter "config"))
      (paramdef "int " (parameter "attribute"))
      (paramdef "int * " (parameter "value"))))
  '(*fragment*
     (heading
       "return information about a GLX frame buffer configuration")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "config")))
                   (para "
Specifies the GLX frame buffer configuration to be queried. "))
            (entry (% (heading (var "attribute")))
                   (para "
Specifies the attribute to be returned. "))
            (entry (% (heading (var "value")))
                   (para "
Returns the requested value. ")))
     (heading "Description")
     (para (code "glXGetFBConfigAttrib")
           " sets "
           (var "value")
           " to the "
           (var "attribute")
           " value of GLX drawables
            created with respect to "
           (var "config")
           ". "
           (code "glXGetFBConfigAttrib")
           " returns an error code if it fails for any reason.
            Otherwise, "
           (code "Success")
           " is returned. ")
     (para (var "attribute")
           " is one of the following: ")
     (para)
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_FBCONFIG_ID")))
                   (para "
XID of the given GLXFBConfig. "))
            (entry (% (heading (code "GLX_BUFFER_SIZE")))
                   (para)
                   (para "
Number of bits per color buffer.
                        If the frame buffer configuration supports RGBA contexts, then "
                         (code "GLX_BUFFER_SIZE")
                         " is the sum of "
                         (code "GLX_RED_SIZE")
                         ", "
                         (code "GLX_GREEN_SIZE")
                         ", "
                         (code "GLX_BLUE_SIZE")
                         ", and "
                         (code "GLX_ALPHA_SIZE")
                         ".
                        If the frame buffer configuration supports only color index contexts, "
                         (code "GLX_BUFFER_SIZE")
                         " is the size of the
                        color indexes. "))
            (entry (% (heading (code "GLX_LEVEL")))
                   (para)
                   (para "
Frame buffer level of the configuration.
                        Level zero is the default frame buffer.
                        Positive levels correspond to frame buffers that overlay the default buffer,
                        and negative levels correspond to frame buffers that underlie the default
                        buffer. "))
            (entry (% (heading (code "GLX_DOUBLEBUFFER")))
                   (para)
                   (para (code "True")
                         " if color buffers exist in front/back pairs that can be swapped, "
                         (code "False")
                         " otherwise. "))
            (entry (% (heading (code "GLX_STEREO")))
                   (para)
                   (para (code "True")
                         " if color buffers exist in left/right pairs, "
                         (code "False")
                         " otherwise. "))
            (entry (% (heading (code "GLX_AUX_BUFFERS")))
                   (para)
                   (para "
Number of auxiliary color buffers that are available.
                        Zero indicates that no auxiliary color buffers exist. "))
            (entry (% (heading (code "GLX_RED_SIZE")))
                   (para)
                   (para "
Number of bits of red stored in each color buffer.
                        Undefined if RGBA contexts are not supported by the frame buffer configuration. "))
            (entry (% (heading (code "GLX_GREEN_SIZE")))
                   (para)
                   (para "
Number of bits of green stored in each color buffer.
                        Undefined if RGBA contexts are not supported by the frame buffer configuration. "))
            (entry (% (heading (code "GLX_BLUE_SIZE")))
                   (para)
                   (para "
Number of bits of blue stored in each color buffer.
                        Undefined if RGBA contexts are not supported by the frame buffer configuration. "))
            (entry (% (heading (code "GLX_ALPHA_SIZE")))
                   (para)
                   (para "
Number of bits of alpha stored in each color buffer.
                        Undefined if RGBA contexts are not supported by the frame buffer configuration. "))
            (entry (% (heading (code "GLX_DEPTH_SIZE")))
                   (para)
                   (para "
Number of bits in the depth buffer. "))
            (entry (% (heading (code "GLX_STENCIL_SIZE")))
                   (para)
                   (para "
Number of bits in the stencil buffer. "))
            (entry (% (heading (code "GLX_ACCUM_RED_SIZE")))
                   (para)
                   (para "
Number of bits of red stored in the accumulation buffer. "))
            (entry (% (heading (code "GLX_ACCUM_GREEN_SIZE")))
                   (para)
                   (para "
Number of bits of green stored in the accumulation buffer. "))
            (entry (% (heading (code "GLX_ACCUM_BLUE_SIZE")))
                   (para)
                   (para "
Number of bits of blue stored in the accumulation buffer. "))
            (entry (% (heading (code "GLX_ACCUM_ALPHA_SIZE")))
                   (para)
                   (para "
Number of bits of alpha stored in the accumulation buffer. "))
            (entry (% (heading (code "GLX_RENDER_TYPE")))
                   (para)
                   (para "
Mask indicating what type of GLX contexts can be made
                        current to the frame buffer configuration. Valid bits are "
                         (code "GLX_RGBA_BIT")
                         " and "
                         (code "GLX_COLOR_INDEX_BIT")
                         ". "))
            (entry (% (heading (code "GLX_DRAWABLE_TYPE")))
                   (para)
                   (para "
Mask indicating what drawable types the frame buffer configuration
                        supports. Valid bits are "
                         (code "GLX_WINDOW_BIT")
                         ", "
                         (code "GLX_PIXMAP_BIT")
                         ", and "
                         (code "GLX_PBUFFER_BIT")
                         ". "))
            (entry (% (heading (code "GLX_X_RENDERABLE")))
                   (para)
                   (para (code "True")
                         " if drawables created with the 
                        frame buffer configuration can be rendered to by X. "))
            (entry (% (heading (code "GLX_VISUAL_ID")))
                   (para)
                   (para "
XID of the corresponding visual, or zero 
                        if there is no associated visual (i.e., if "
                         (code "GLX_X_RENDERABLE")
                         " is "
                         (code "False")
                         " or "
                         (code "GLX_DRAWABLE_TYPE")
                         " does not have the "
                         (code "GLX_WINDOW_BIT")
                         " bit set). "))
            (entry (% (heading (code "GLX_X_VISUAL_TYPE")))
                   (para)
                   (para "
Visual type of associated visual. The returned value will be one of: "
                         (code "GLX_TRUE_COLOR")
                         ", "
                         (code "GLX_DIRECT_COLOR")
                         ", "
                         (code "GLX_PSEUDO_COLOR")
                         ", "
                         (code "GLX_STATIC_COLOR")
                         ", "
                         (code "GLX_GRAY_SCALE")
                         ", "
                         (code "GLX_STATIC_GRAY")
                         ",
                        or "
                         (code "GLX_NONE")
                         ", if there is no associated visual (i.e., if "
                         (code "GLX_X_RENDERABLE")
                         " is "
                         (code "False")
                         " or "
                         (code "GLX_DRAWABLE_TYPE")
                         " does not have the "
                         (code "GLX_WINDOW_BIT")
                         " bit set). "))
            (entry (% (heading (code "GLX_CONFIG_CAVEAT")))
                   (para)
                   (para "
One of "
                         (code "GLX_NONE")
                         ", "
                         (code "GLX_SLOW_CONFIG")
                         ", or "
                         (code "GLX_NON_CONFORMANT_CONFIG")
                         ", indicating
                        that the frame buffer configuration has no caveats,
                        some aspect of the frame buffer configuration runs slower
                        than other frame buffer configurations, or some aspect of the
                        frame buffer configuration is nonconformant, respectively. "))
            (entry (% (heading (code "GLX_TRANSPARENT_TYPE")))
                   (para)
                   (para "
One of "
                         (code "GLX_NONE")
                         ", "
                         (code "GLX_TRANSPARENT_RGB")
                         ", "
                         (code "GLX_TRANSPARENT_INDEX")
                         ", indicating that 
                        the frame buffer configuration is opaque, is transparent for particular
                        values of red, green, and blue, or is transparent for
                        particular index values, respectively. "))
            (entry (% (heading (code "GLX_TRANSPARENT_INDEX_VALUE")))
                   (para)
                   (para "
Integer value between 0 and the maximum
                        frame buffer value for indices, indicating the transparent
                        index value for the frame buffer configuration. 
                        Undefined if "
                         (code "GLX_TRANSPARENT_TYPE")
                         "
is not "
                         (code "GLX_TRANSPARENT_INDEX")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_RED_VALUE")))
                   (para)
                   (para "
Integer value between 0 and the maximum
                        frame buffer value for red, indicating the transparent
                        red value for the frame buffer configuration. 
                        Undefined if "
                         (code "GLX_TRANSPARENT_TYPE")
                         "
is not "
                         (code "GLX_TRANSPARENT_RGB")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_GREEN_VALUE")))
                   (para)
                   (para "
Integer value between 0 and the maximum
                        frame buffer value for green, indicating the transparent
                        green value for the frame buffer configuration. 
                        Undefined if "
                         (code "GLX_TRANSPARENT_TYPE")
                         "
is not "
                         (code "GLX_TRANSPARENT_RGB")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_BLUE_VALUE")))
                   (para)
                   (para "
Integer value between 0 and the maximum
                        frame buffer value for blue, indicating the transparent
                        blue value for the frame buffer configuration. 
                        Undefined if "
                         (code "GLX_TRANSPARENT_TYPE")
                         "
is not "
                         (code "GLX_TRANSPARENT_RGB")
                         ". "))
            (entry (% (heading (code "GLX_TRANSPARENT_ALPHA_VALUE")))
                   (para)
                   (para "
Integer value between 0 and the maximum
                        frame buffer value for alpha, indicating the transparent
                        blue value for the frame buffer configuration. 
                        Undefined if "
                         (code "GLX_TRANSPARENT_TYPE")
                         "
is not "
                         (code "GLX_TRANSPARENT_RGB")
                         ". "))
            (entry (% (heading (code "GLX_MAX_PBUFFER_WIDTH")))
                   (para)
                   (para "
The maximum width that can be specified to "
                         (code "glXCreatePbuffer")
                         ". "))
            (entry (% (heading (code "GLX_MAX_PBUFFER_HEIGHT")))
                   (para)
                   (para "
The maximum height that can be specified to "
                         (code "glXCreatePbuffer")
                         ". "))
            (entry (% (heading (code "GLX_MAX_PBUFFER_PIXELS")))
                   (para)
                   (para "
The maximum number of pixels (width times height) for a 
                        pixel buffer. Note that this value may be less than "
                         (code "GLX_MAX_PBUFFER_WIDTH")
                         " times "
                         (code "GLX_MAX_PBUFFER_HEIGHT")
                         ". Also, this
                        value is static and assumes that no other pixel buffers 
                        or X resources are contending for the frame buffer memory. 
                        As a result, it may not be possible to allocate a pixel buffer of
                        the size given by "
                         (code "GLX_MAX_PBUFFER_PIXELS")
                         ". ")))
     (para "
Applications should choose the frame buffer configuration that most closely
            meets their requirements.
            Creating windows, GLX pixmaps, or GLX pixel buffers with unnecessary buffers 
            can result in
            reduced rendering performance as well as poor resource allocation. ")
     (heading "Errors")
     (para (code "GLX_NO_EXTENSION")
           " is returned if "
           (var "dpy")
           " does not support the GLX
            extension. "
           (code "GLX_BAD_ATTRIBUTE")
           " is returned if "
           (var "attribute")
           " is not a valid GLX attribute. ")))

(define-gl-procedure
  glXGetFBConfigs
  "glXGetFBConfigs"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXFBConfig * "
        (function "glXGetFBConfigs"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int " (parameter "screen"))
      (paramdef "int * " (parameter "nelements"))))
  '(*fragment*
     (heading
       "list all GLX frame buffer configurations for a given screen")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "screen")))
                   (para "
Specifies the screen number. "))
            (entry (% (heading (var "nelements")))
                   (para "
Returns the number of GLXFBConfigs returned. ")))
     (heading "Description")
     (para (code "glXGetFBConfigs")
           " returns a list of all GLXFBConfigs available on the screen
            specified by "
           (var "screen")
           ". Use "
           (code "glXGetFBConfigAttrib")
           " to obtain attribute
            values from a specific GLXFBConfig. ")))

(define-gl-procedure
  glXGetProcAddress
  "glXGetProcAddress"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void(*)() "
        (function "glXGetProcAddress"))
      (paramdef
        "const GLubyte * "
        (parameter "procName"))))
  '(*fragment*
     (heading
       "obtain a pointer to an OpenGL or GLX function")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "procName")))
                   (para "
Specifies the name of the OpenGL or GLX function whose address is to be returned. ")))
     (heading "Description")
     (para (code "glXGetProcAddress")
           " returns the address of the function specified in "
           (var "procName")
           ".  This is
            necessary in environments where the OpenGL link library exports a different
            set of functions than the runtime library. ")))

(define-gl-procedure
  glXGetSelectedEvent
  "glXGetSelectedEvent"
  (funcsynopsis
    (funcprototype
      (funcdef
        "void "
        (function "glXGetSelectedEvent"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXDrawable " (parameter "draw"))
      (paramdef
        "unsigned long * "
        (parameter "event_mask"))))
  '(*fragment*
     (heading
       "returns GLX events that are selected for a window or a GLX pixel buffer")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "draw")))
                   (para "
Specifies a GLX drawable. Must be a GLX pixel buffer or a window. "))
            (entry (% (heading (var "event_mask")))
                   (para "
Returns the events that are selected for "
                         (var "draw")
                         ". ")))
     (heading "Description")
     (para (code "glXGetSelectedEvent")
           " returns in "
           (var "event_mask")
           " the events selected for "
           (var "draw")
           ". ")
     (heading "Errors")
     (para (code "GLXBadDrawable")
           " is generated if "
           (var "draw")
           " is not a valid window
            or a valid GLX pixel buffer. ")))

(define-gl-procedure
  glXGetVisualFromFBConfig
  "glXGetVisualFromFBConfig"
  (funcsynopsis
    (funcprototype
      (funcdef
        "XVisualInfo * "
        (function "glXGetVisualFromFBConfig"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXFBConfig " (parameter "config"))))
  '(*fragment*
     (heading
       "return visual that is associated with the frame buffer configuration")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "config")))
                   (para "
Specifies the GLX frame buffer configuration. ")))
     (heading "Description")
     (para "
If "
           (var "config")
           " is a valid GLX frame buffer configuration
            and it has an associated X Visual, then
            information describing that visual is returned; otherwise "
           (code "NULL")
           "
is returned. Use "
           (code "XFree")
           " to free the data returned. ")
     (heading "Errors")
     (para "
Returns "
           (code "NULL")
           " if "
           (var "config")
           " is not a valid GLXFBConfig. ")))

(define-gl-procedure
  glXImportContextEXT
  "glXImportContextEXT"
  (funcsynopsis
    (funcprototype
      (funcdef
        "GLXContext "
        (function "glXImportContextEXT"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef
        "GLXContextID "
        (parameter "contextID"))))
  '(*fragment*
     (heading
       "import another process's indirect rendering context.")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "contextID")))
                   (para "
Specifies a GLX rendering context. ")))
     (heading "Description")
     (para (code "glXImportContextEXT")
           " creates a GLXContext given the XID of an existing GLXContext.
            It may be used in place of "
           (code "glXCreateContext")
           ",
            to share another process's indirect rendering context. ")
     (para "
Only the server-side context information can be shared between
            X clients; client-side state, such as pixel storage modes,
            cannot be shared. Thus, "
           (code "glXImportContextEXT")
           " must allocate memory to store
            client-side information. This memory is freed by calling "
           (code "glXFreeContextEXT")
           ". ")
     (para "
This call does not create a new XID.  It merely makes an
            existing object available to the importing client (Display *).
            Like any XID, it goes away when the creating client drops its
            connection or the ID is explicitly deleted. Note that this is
            when the XID goes away. The object goes away when the XID
            goes away AND the context is not current to any thread. ")
     (para "
If "
           (var "contextID")
           " refers to a
            direct rendering context then no error is generated but "
           (code "glXImportContextEXT")
           " returns NULL. ")
     (para (code "glXImportContextEXT")
           " is part of the "
           (code "EXT_import_context")
           " extension,
            not part of the core GLX command set. If _glxextstring(EXT_import_context)
            is included in the string returned by "
           (code "glXQueryExtensionsString")
           ",
            when called with argument "
           (code "GLX_EXTENSIONS")
           ",
            extension "
           (code "EXT_import_context")
           " is supported. ")
     (heading "Errors")
     (para (code "GLXBadContext")
           " is generated if "
           (var "contextID")
           " does not
            refer to a valid context. ")))

(define-gl-procedure
  glXIntro
  "glXIntro"
  #f
  '(*fragment*
     (heading
       "Introduction to OpenGL in the X window system")))

(define-gl-procedure
  glXIsDirect
  "glXIsDirect"
  (funcsynopsis
    (funcprototype
      (funcdef "Bool " (function "glXIsDirect"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXContext " (parameter "ctx"))))
  '(*fragment*
     (heading
       "indicate whether direct rendering is enabled")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies the GLX context that is being queried. ")))
     (heading "Description")
     (para (code "glXIsDirect")
           " returns "
           (code "True")
           " if "
           (var "ctx")
           " is a direct rendering context, "
           (code "False")
           " otherwise.
            Direct rendering contexts pass rendering commands directly from the calling
            process's address space to the rendering system,
            bypassing the X server.
            Nondirect rendering contexts pass all rendering commands to the X server. ")
     (heading "Errors")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " is not a valid GLX context. ")))

(define-gl-procedure
  glXMakeContextCurrent
  "glXMakeContextCurrent"
  (funcsynopsis
    (funcprototype
      (funcdef
        "Bool "
        (function "glXMakeContextCurrent"))
      (paramdef "Display * " (parameter "display"))
      (paramdef "GLXDrawable " (parameter "draw"))
      (paramdef "GLXDrawable " (parameter "read"))
      (paramdef "GLXContext " (parameter "ctx"))))
  '(*fragment*
     (heading
       "attach a GLX context to a GLX drawable")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "display")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "draw")))
                   (para "
Specifies a GLX drawable to render into.
                    Must be an XID representing a GLXWindow, GLXPixmap, or GLXPbuffer. "))
            (entry (% (heading (var "read")))
                   (para "
Specifies a GLX drawable to read from.
                    Must be an XID representing a GLXWindow, GLXPixmap, or GLXPbuffer. "))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies the GLX context to be bound to "
                         (var "read")
                         " and "
                         (var "ctx")
                         ". ")))
     (heading "Description")
     (para (code "glXMakeContextCurrent")
           " binds "
           (var "ctx")
           " to the current rendering thread and to the "
           (var "draw")
           "
and "
           (var "read")
           " GLX drawables. "
           (var "draw")
           " and "
           (var "read")
           " may be the same. ")
     (para (var "draw")
           " is used for all OpenGL operations except: ")
     (para "
Any pixel data that are read based on the value of "
           (code "GLX_READ_BUFFER")
           ".
            Note that accumulation operations use the value of "
           (code "GLX_READ_BUFFER")
           ",
            but are not allowed unless "
           (var "draw")
           " is identical to "
           (var "read")
           ". ")
     (para "
Any depth values that are retrieved by "
           (code "glReadPixels")
           " or "
           (code "glCopyPixels")
           ". ")
     (para "
Any stencil values that are retrieved by "
           (code "glReadPixels")
           " or "
           (code "glCopyPixels")
           ". ")
     (para "
Frame buffer values are taken from "
           (var "draw")
           ". ")
     (para "
If the current rendering thread has a current rendering context, that
            context is flushed and replaced by "
           (var "ctx")
           ". ")
     (para "
The first time that "
           (var "ctx")
           " is made current, the viewport and scissor
            dimensions are set to the size of the "
           (var "draw")
           " drawable.  The viewport
            and scissor are not modified when "
           (var "ctx")
           " is subsequently made current. ")
     (para "
To release the current context without assigning a new one,
            call "
           (code "glXMakeContextCurrent")
           " with "
           (var "draw")
           " and "
           (var "read")
           " set to "
           (code "None")
           " and "
           (var "ctx")
           "
set to "
           (code "NULL")
           ". ")
     (para (code "glXMakeContextCurrent")
           " returns "
           (code "True")
           " if it is successful, "
           (code "False")
           " otherwise.
            If "
           (code "False")
           " is returned, the previously current rendering context
            and drawable (if any) remain unchanged. ")
     (heading "Errors")
     (para (code "BadMatch")
           " is generated if "
           (var "draw")
           " and "
           (var "read")
           " are not compatible. ")
     (para (code "BadAccess")
           " is generated if "
           (var "ctx")
           " is current to some other
            thread. ")
     (para (code "GLXContextState")
           " is generated if there is a current rendering
            context and its render mode is either "
           (code "GLX_FEEDBACK")
           " or "
           (code "GLX_SELECT")
           ". ")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " is not a valid GLX
            rendering context. ")
     (para (code "GLXBadDrawable")
           " is generated if "
           (var "draw")
           " or "
           (var "read")
           " is not a valid 
            GLX drawable. ")
     (para (code "GLXBadWindow")
           " is generated if the underlying X window for either "
           (var "draw")
           " or "
           (var "read")
           " is no longer valid. ")
     (para (code "GLXBadCurrentDrawable")
           " is generated if the previous context of
            the calling thread has unflushed commands and the previous drawable is
            no longer valid. ")
     (para (code "BadAlloc")
           " is generated if the X server does not have enough
            resources to allocate the buffers. ")
     (para (code "BadMatch") " is generated if: ")
     (para (var "draw")
           " and "
           (var "read")
           " cannot fit into frame buffer memory simultaneously. ")
     (para (var "draw")
           " or "
           (var "read")
           " is a GLXPixmap and "
           (var "ctx")
           " is a direct-rendering
            context. ")
     (para (var "draw")
           " or "
           (var "read")
           " is a GLXPixmap and "
           (var "ctx")
           " was previously bound to a
            GLXWindow or GLXPbuffer. ")
     (para (var "draw")
           " or "
           (var "read")
           " is a GLXWindow or GLXPbuffer and "
           (var "ctx")
           " was
            previously bound to a GLXPixmap. ")))

(define-gl-procedure
  glXMakeCurrent
  "glXMakeCurrent"
  (funcsynopsis
    (funcprototype
      (funcdef "Bool " (function "glXMakeCurrent"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXDrawable " (parameter "drawable"))
      (paramdef "GLXContext " (parameter "ctx"))))
  '(*fragment*
     (heading
       "attach a GLX context to a window or a GLX pixmap")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "drawable")))
                   (para "
Specifies a GLX drawable.
                    Must be either an X window ID or a GLX pixmap ID. "))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies a GLX rendering context that is to be attached to "
                         (var "drawable")
                         ". ")))
     (heading "Description")
     (para (code "glXMakeCurrent")
           " does two things:
            It makes "
           (var "ctx")
           " the current GLX rendering context of the calling thread,
            replacing the previously current context if there was one,
            and it attaches "
           (var "ctx")
           " to a GLX drawable,
            either a window or a GLX pixmap.
            As a result of these two actions,
            subsequent GL rendering calls
            use rendering context "
           (var "ctx")
           " to modify GLX drawable "
           (var "drawable")
           " (for
            reading and writing).
            Because "
           (code "glXMakeCurrent")
           " always replaces the current rendering context with "
           (var "ctx")
           ",
            there can be only one current context per thread. ")
     (para "
Pending commands to the
            previous context, if any, are flushed before it is released. ")
     (para "
The first time "
           (var "ctx")
           " is made current to any thread,
            its viewport is set to the full size of "
           (var "drawable")
           ".
            Subsequent calls by any thread to "
           (code "glXMakeCurrent")
           " with "
           (var "ctx")
           "
have no effect on its viewport. ")
     (para "
To release the current context without assigning a new one,
            call "
           (code "glXMakeCurrent")
           " with "
           (var "drawable")
           " set to "
           (code "None")
           " and "
           (var "ctx")
           "
set to "
           (code "NULL")
           ". ")
     (para (code "glXMakeCurrent")
           " returns "
           (code "True")
           " if it is successful, "
           (code "False")
           " otherwise.
            If "
           (code "False")
           " is returned, the previously current rendering context
            and drawable (if any) remain unchanged. ")
     (heading "Errors")
     (para (code "BadMatch")
           " is generated if "
           (var "drawable")
           " was not
            created with the same X screen and visual as "
           (var "ctx")
           ".
            It is also generated if "
           (var "drawable")
           " is "
           (code "None")
           " and "
           (var "ctx")
           " is not "
           (code "NULL")
           ". ")
     (para (code "BadAccess")
           " is generated if "
           (var "ctx")
           " was current to another thread
            at the time "
           (code "glXMakeCurrent")
           " was called. ")
     (para (code "GLXBadDrawable")
           " is generated if "
           (var "drawable")
           " is not a valid GLX drawable. ")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " is not a valid GLX context. ")
     (para (code "GLXBadContextState")
           " is generated if "
           (code "glXMakeCurrent")
           " is executed between
            the execution of "
           (code "glBegin")
           " and the corresponding execution of "
           (code "glEnd")
           ". ")
     (para (code "GLXBadContextState")
           " is also generated if the rendering context current
            to the calling thread has GL renderer state "
           (code "GLX_FEEDBACK")
           " or "
           (code "GLX_SELECT")
           ". ")
     (para (code "GLXBadCurrentWindow")
           " is generated if there are pending GL
            commands for the previous context and the current drawable is
            a window that is no longer valid. ")
     (para (code "BadAlloc")
           " may be generated if the server has delayed allocation
            of ancillary buffers until "
           (code "glXMakeCurrent")
           " is called, only to find that it has
            insufficient resources to complete the allocation. ")))

(define-gl-procedure
  glXQueryContextInfoEXT
  "glXQueryContextInfoEXT"
  (funcsynopsis
    (funcprototype
      (funcdef
        "int "
        (function "glXQueryContextInfoEXT"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXContext " (parameter "ctx"))
      (paramdef "int " (parameter "attribute"))
      (paramdef "int * " (parameter "value"))))
  '(*fragment*
     (heading "query context information")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies a GLX rendering context. "))
            (entry (% (heading (var "attribute")))
                   (para "
Specifies that a context parameter should be retrieved.  Must be one of "
                         (code "GLX_SHARED_CONTEXT_EXT")
                         ", "
                         (code "GLX_VISUAL_ID_EXT")
                         ", or "
                         (code "GLX_SCREEN_EXT")
                         ". "))
            (entry (% (heading (var "value")))
                   (para "
Contains the return value for "
                         (var "attribute")
                         ". ")))
     (heading "Description")
     (para (code "glXQueryContextInfoEXT")
           " sets "
           (var "value")
           " to the value of "
           (var "attribute")
           " with respect to "
           (var "ctx")
           ". "
           (code "glXQueryContextInfoEXT")
           " returns an error code if it fails for any reason. Otherwise, "
           (code "Success")
           " is returned. ")
     (para (var "attribute")
           " may be one of the following: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_SHARED_CONTEXT_EXT")))
                   (para "
Returns the XID of the share list context associated with "
                         (var "ctx")
                         " at its
                        creation. "))
            (entry (% (heading (code "GLX_VISUAL_ID_EXT")))
                   (para "
Returns the XID of the GLX Visual associated with "
                         (var "ctx")
                         ". "))
            (entry (% (heading (code "GLX_SCREEN_EXT")))
                   (para "
Returns the screen number associated with "
                         (var "ctx")
                         ". ")))
     (para "
This call may cause a round-trip to the server. ")
     (para (code "glXQueryContextInfoEXT")
           " is part of the "
           (code "EXT_import_context")
           " extension,
            not part of the core GLX command set. If _glxextstring(EXT_import_context)
            is included in the string returned by "
           (code "glXQueryExtensionsString")
           ",
            when called with argument "
           (code "GLX_EXTENSIONS")
           ",
            extension "
           (code "EXT_import_context")
           " is supported. ")
     (heading "Errors")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " does not
            refer to a valid context. ")
     (para (code "GLX_BAD_ATTRIBUTE")
           " is returned if "
           (var "attribute")
           " is not a valid GLX
            context attribute. ")
     (para "
fred "
           (code "GLX_BAD_CONTEXT")
           " is returned if "
           (var "attribute")
           " is not a valid context. ")))

(define-gl-procedure
  glXQueryContext
  "glXQueryContext"
  (funcsynopsis
    (funcprototype
      (funcdef "int " (function "glXQueryContext"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXContext " (parameter "ctx"))
      (paramdef "int " (parameter "attribute"))
      (paramdef "int * " (parameter "value"))))
  '(*fragment*
     (heading "query context information")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "ctx")))
                   (para "
Specifies a GLX rendering context. "))
            (entry (% (heading (var "attribute")))
                   (para "
Specifies that a context parameter should be retrieved.  Must be one of "
                         (code "GLX_FBCONFIG_ID")
                         ", "
                         (code "GLX_RENDER_TYPE")
                         ", or "
                         (code "GLX_SCREEN")
                         ". "))
            (entry (% (heading (var "value")))
                   (para "
Contains the return value for "
                         (var "attribute")
                         ". ")))
     (heading "Description")
     (para (code "glXQueryContext")
           " sets "
           (var "value")
           " to the value of "
           (var "attribute")
           " with respect to "
           (var "ctx")
           ". "
           (var "attribute")
           " may be one of the following: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_FBCONFIG_ID")))
                   (para "
Returns the XID of the GLXFBConfig associated with "
                         (var "ctx")
                         ". "))
            (entry (% (heading (code "GLX_RENDER_TYPE")))
                   (para "
Returns the rendering type supported by "
                         (var "ctx")
                         ". "))
            (entry (% (heading (code "GLX_SCREEN")))
                   (para "
Returns the screen number associated with "
                         (var "ctx")
                         ". ")))
     (para (code "Success")
           " is returned unless "
           (var "attribute")
           " is not a valid GLX
            context attribute, in which case "
           (code "GLX_BAD_ATTRIBUTE")
           " is returned. ")
     (para "
This call may cause a round-trip to the server. ")
     (heading "Errors")
     (para (code "GLXBadContext")
           " is generated if "
           (var "ctx")
           " does not
            refer to a valid context. ")))

(define-gl-procedure
  glXQueryDrawable
  "glXQueryDrawable"
  (funcsynopsis
    (funcprototype
      (funcdef "int " (function "glXQueryDrawable"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXDrawable " (parameter "draw"))
      (paramdef "int " (parameter "attribute"))
      (paramdef "unsigned int * " (parameter "value"))))
  '(*fragment*
     (heading
       "returns an attribute assoicated with a GLX drawable")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "draw")))
                   (para "
Specifies the GLX drawable to be queried. "))
            (entry (% (heading (var "attribute")))
                   (para "
Specifies the attribute to be returned.  Must be one of "
                         (code "GLX_WIDTH")
                         ",\t"
                         (code "GLX_HEIGHT")
                         ",\t"
                         (code "GLX_PRESERVED_CONTENTS")
                         ",\t"
                         (code "GLX_LARGEST_PBUFFER")
                         ", or\t"
                         (code "GLX_FBCONFIG_ID")
                         ". "))
            (entry (% (heading (var "value")))
                   (para "
Contains the return value for\t"
                         (var "attribute")
                         ". ")))
     (heading "Description")
     (para (code "glXQueryDrawable")
           " sets\t"
           (var "value")
           " to the value of\t"
           (var "attribute")
           " with respect to the GLXDrawable\t"
           (var "draw")
           ".\t")
     (para (var "attribute")
           " may be one of the following: ")
     (table (% (formatter (asis)))
            (entry (% (heading (code "GLX_WIDTH")))
                   (para "
Returns the width of " (var "ctx") ". "))
            (entry (% (heading (code "GLX_HEIGHT")))
                   (para "
Returns the height of " (var "ctx") ". "))
            (entry (% (heading (code "GLX_PRESERVED_CONTENTS")))
                   (para "
Returns "
                         (code "True")
                         " if the contents
\t\t\t\t\t\tof a GLXPbuffer are preserved when a resource
\t\t\t\t\t\tconflict occurs; "
                         (code "False")
                         " otherwise. "))
            (entry (% (heading (code "GLX_LARGEST_PBUFFER")))
                   (para "
Returns the value set when "
                         (code "glXCreatePbuffer")
                         " was called to
                        create the GLXPbuffer. If "
                         (code "False")
                         " is returned, then the
                        call to "
                         (code "glXCreatePbuffer")
                         " will
                        fail to create a GLXPbuffer if the requested size
                        is larger than the implementation maximum or
                        available resources.  If "
                         (code "True")
                         "
is returned, a GLXPbuffer of the maximum availble
                        size (if less than the requested width and height)
                        is created. "))
            (entry (% (heading (code "GLX_FBCONFIG_ID")))
                   (para "
Returns the XID for " (var "draw") ".\t")))
     (para "
If "
           (var "draw")
           " is a GLXWindow or GLXPixmap and "
           (var "attribute")
           " is set to "
           (code "GLX_PRESERVED_CONTENTS")
           " or "
           (code "GLX_LARGETST_PBUFFER")
           ", the contents of "
           (var "value")
           " are undefined.  If "
           (var "attribute")
           " is not one of the attributes
            listed above, the contents of "
           (var "value")
           " are
            unedfined. ")
     (heading "Errors")
     (para "
A "
           (code "GLXBadDrawable")
           " is generated if\t"
           (var "draw")
           " is not a valid GLXDrawable. ")))

(define-gl-procedure
  glXQueryExtensionsString
  "glXQueryExtensionsString"
  (funcsynopsis
    (funcprototype
      (funcdef
        "const char * "
        (function "glXQueryExtensionsString"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int " (parameter "screen"))))
  '(*fragment*
     (heading "return list of supported extensions")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "screen")))
                   (para "
Specifies the screen number. ")))
     (heading "Description")
     (para (code "glXQueryExtensionsString")
           " returns a pointer to a string describing
            which GLX extensions are supported on the connection. The string
            is null-terminated and contains a space-separated list of 
            extension names.  (The extension names themselves never contain 
            spaces.) If there are no extensions to GLX, then the empty string is 
            returned. ")))

(define-gl-procedure
  glXQueryExtension
  "glXQueryExtension"
  (funcsynopsis
    (funcprototype
      (funcdef "Bool " (function "glXQueryExtension"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int * " (parameter "errorBase"))
      (paramdef "int * " (parameter "eventBase"))))
  '(*fragment*
     (heading
       "indicate whether the GLX extension is supported")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "errorBase")))
                   (para "
Returns the base error code of the GLX server extension. "))
            (entry (% (heading (var "eventBase")))
                   (para "
Returns the base event code of the GLX server extension. ")))
     (heading "Description")
     (para (code "glXQueryExtension")
           " returns "
           (code "True")
           " if the X server of
            connection "
           (var "dpy")
           " supports the GLX extension, "
           (code "False")
           " otherwise.
            If "
           (code "True")
           " is returned,
            then "
           (var "errorBase")
           " and "
           (var "eventBase")
           " return the error base and event base of
            the GLX extension.  These values should be added to the constant
            error and event values to determine the actual event or error values.
            Otherwise, "
           (var "errorBase")
           " and "
           (var "eventBase")
           " are unchanged. ")
     (para (var "errorBase")
           " and "
           (var "eventBase")
           " do not return values if they are specified
            as "
           (code "NULL")
           ". ")))

(define-gl-procedure
  glXQueryServerString
  "glXQueryServerString"
  (funcsynopsis
    (funcprototype
      (funcdef
        "const char * "
        (function "glXQueryServerString"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int " (parameter "screen"))
      (paramdef "int " (parameter "name"))))
  '(*fragment*
     (heading "return string describing the server")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "screen")))
                   (para "
Specifies the screen number. "))
            (entry (% (heading (var "name")))
                   (para "
Specifies which string is returned:
                    one of "
                         (code "GLX_VENDOR")
                         ", "
                         (code "GLX_VERSION")
                         ", or "
                         (code "GLX_EXTENSIONS")
                         ". ")))
     (heading "Description")
     (para (code "glXQueryServerString")
           " returns a pointer to a static, null-terminated string 
            describing some aspect of the server's GLX extension. The possible values for "
           (var "name")
           " and the format of the strings is the same as for "
           (code "glXGetClientString")
           ". If "
           (var "name")
           " is not set to a recognized value, "
           (code "NULL")
           " is returned. ")))

(define-gl-procedure
  glXQueryVersion
  "glXQueryVersion"
  (funcsynopsis
    (funcprototype
      (funcdef "Bool " (function "glXQueryVersion"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "int * " (parameter "major"))
      (paramdef "int * " (parameter "minor"))))
  '(*fragment*
     (heading
       "return the version numbers of the GLX extension")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "major")))
                   (para "
Returns the major version number of the GLX server extension. "))
            (entry (% (heading (var "minor")))
                   (para "
Returns the minor version number of the GLX server extension. ")))
     (heading "Description")
     (para (code "glXQueryVersion")
           " returns the major and minor version numbers of the GLX extension
            implemented by the server associated with connection "
           (var "dpy")
           ".
            Implementations with the same major version number are upward compatible,
            meaning that the implementation with the higher minor number is a superset
            of the version with the lower minor number. ")
     (para (var "major")
           " and "
           (var "minor")
           " do not return values if they are specified as "
           (code "NULL")
           ". ")
     (heading "Errors")
     (para (code "glXQueryVersion")
           " returns "
           (code "False")
           " if it fails, "
           (code "True")
           " otherwise. ")
     (para (var "major")
           " and "
           (var "minor")
           " are not updated when "
           (code "False")
           " is returned. ")))

(define-gl-procedure
  glXSelectEvent
  "glXSelectEvent"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXSelectEvent"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXDrawable " (parameter "draw"))
      (paramdef
        "unsigned long "
        (parameter "event_mask"))))
  '(*fragment*
     (heading
       "select GLX events for a window or a GLX pixel buffer")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "draw")))
                   (para "
Specifies a GLX drawable. Must be a GLX pixel buffer or a window. "))
            (entry (% (heading (var "event_mask")))
                   (para "
Specifies the events to be returned for "
                         (var "draw")
                         ". ")))
     (heading "Description")
     (para (code "glXSelectEvent")
           " sets the GLX event mask for a GLX pixel buffer or a window. 
            Calling "
           (code "glXSelectEvent")
           " overrides any previous event mask that was
            set by the client for "
           (var "draw")
           ". Note that it does not affect the
            event masks that other clients may have specified for "
           (var "draw")
           " since
            each client rendering to "
           (var "draw")
           " has a separate event mask for it. ")
     (para "
Currently, only one GLX event, "
           (code "GLX_PBUFFER_CLOBBER_MASK")
           ", 
            can be selected. The following data is returned to the client when a "
           (code "GLX_PBUFFER_CLOBBER_MASK")
           " event occurs: ")
     (para "
typedef struct { ")
     (table (% (formatter (asis)))
            (entry (% (heading "
int " (var "event_type") "; "))
                   (para "
/* GLX_DAMAGED or GLX_SAVED */ "))
            (entry (% (heading "
int " (var "draw_type") "; "))
                   (para "
/* GLX_WINDOW or GLX_PBUFFER */ "))
            (entry (% (heading "
unsigned long " (var "serial") "; "))
                   (para "
/* # of last request processed by server */ "))
            (entry (% (heading "
Bool " (var "send_event") "; "))
                   (para "
/* true if this came for SendEvent request */ "))
            (entry (% (heading "
Display " (var "*display") "; "))
                   (para "
/* display the event was read from */ "))
            (entry (% (heading "
GLXDrawable " (var "drawable") "; "))
                   (para "
/* i.d. of Drawable */ "))
            (entry (% (heading
                        "
unsigned int "
                        (var "buffer_mask")
                        "; "))
                   (para "
/* mask indicating affected buffers */ "))
            (entry (% (heading "
int " (var "x, y") "; "))
                   (para))
            (entry (% (heading "
int " (var "width, height") "; "))
                   (para))
            (entry (% (heading "
int " (var "count") "; "))
                   (para "
/* if nonzero, at least this many more */ ")))
     (para "
} GLXPbufferClobberEvent;
            The valid bit masks used in "
           (var "buffer_mask")
           " are: ")
     (para)
     (table (% (formatter (asis)))
            (entry (% (heading (strong "Bitmask")))
                   (para (strong "Corresponding Buffer")))
            (entry (% (heading (code "GLX_FRONT_LEFT_BUFFER_BIT")))
                   (para "
Front left color buffer "))
            (entry (% (heading (code "GLX_FRONT_RIGHT_BUFFER_BIT")))
                   (para "
Front right color buffer "))
            (entry (% (heading (code "GLX_BACK_LEFT_BUFFER_BIT")))
                   (para "
Back left color buffer "))
            (entry (% (heading (code "GLX_BACK_RIGHT_BUFFER_BIT")))
                   (para "
Back right color buffer "))
            (entry (% (heading (code "GLX_AUX_BUFFERS_BIT")))
                   (para "
Auxiliary buffer "))
            (entry (% (heading (code "GLX_DEPTH_BUFFER_BIT")))
                   (para "
Depth buffer "))
            (entry (% (heading (code "GLX_STENCIL_BUFFER_BIT")))
                   (para "
Stencil buffer "))
            (entry (% (heading (code "GLX_ACCUM_BUFFER_BIT")))
                   (para "
Accumulation buffer ")))
     (para "
A single X server operation can cause several buffer clobber events to be
            sent. (e.g., a single GLX pixel buffer may be damaged and cause multiple 
            buffer clobber events to be generated). Each event specifies one 
            region of the GLX drawable that was affected by the X Server operation. 
            The "
           (var "buffer_mask")
           " field indicates which color buffers and 
            ancillary buffers were affected. All the buffer clobber events 
            generated by a single X server action are guaranteed to be
            contiguous in the event queue. The conditions under which this event is
            generated and the "
           (var "event_type")
           " varies, depending on the type of the
            GLX drawable. ")
     (para "
When the "
           (code "GLX_AUX_BUFFERS_BIT")
           " is set in "
           (var "buffer_mask")
           ", then "
           (var "aux_buffer")
           " is set to indicate which buffer was affected. If more
            than one aux buffer was affected, then additional events are
            generated as part of the same contiguous event group. Each
            additional event will have only the "
           (code "GLX_AUX_BUFFERS_BIT")
           " set in "
           (var "buffer_mask")
           ", and the "
           (var "aux_buffer")
           " field will be set
            appropriately. For nonstereo drawables, "
           (code "GLX_FRONT_LEFT_BUFFER_BIT")
           " and "
           (code "GLX_BACK_LEFT_BUFFER_BIT")
           " are 
            used to specify the front and back color buffers. ")
     (para "
For preserved GLX pixel buffers, a buffer clobber event with 
            type "
           (code "GLX_SAVED")
           " is generated whenever the contents of the 
            GLX pixel buffer is moved out of offscreen memory. The event(s) describes which
            portions of the GLX pixel buffer were affected. Clients who receive many
            buffer clobber events, referring to different save actions,
            should consider freeing the GLX pixel buffer resource in order to prevent
            the system from thrashing due to insufficient resources. ")
     (para "
For an unpreserved GLXPbuffer, a buffer clobber event, with type "
           (code "GLX_DAMAGED")
           ", is generated whenever a portion of the GLX pixel buffer
            becomes invalid. The client may wish to regenerate the invalid portions
            of the GLX pixel buffer. ")
     (para "
For Windows, buffer clobber events, with type "
           (code "GLX_SAVED")
           ", occur
            whenever an ancillary buffer, associated with the window, gets clobbered
            or moved out of off-screen memory. The event contains information
            indicating which color buffers and ancillary buffers\\(emand which portions
            of those buffers\\(emwere affected. ")
     (heading "Errors")
     (para (code "GLXBadDrawable")
           " is generated if "
           (var "draw")
           " is not a valid window
            or a valid GLX pixel buffer. ")))

(define-gl-procedure
  glXSwapBuffers
  "glXSwapBuffers"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXSwapBuffers"))
      (paramdef "Display * " (parameter "dpy"))
      (paramdef "GLXDrawable " (parameter "drawable"))))
  '(*fragment*
     (heading "exchange front and back buffers")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "dpy")))
                   (para "
Specifies the connection to the X server. "))
            (entry (% (heading (var "drawable")))
                   (para "
Specifies the drawable whose buffers are to be swapped. ")))
     (heading "Description")
     (para (code "glXSwapBuffers")
           " promotes the contents of the back buffer of "
           (var "drawable")
           " to become
            the contents of the front buffer of "
           (var "drawable")
           ".
            The contents of the back buffer then become undefined.
            The update typically takes place during the vertical retrace of
            the monitor,
            rather than immediately after "
           (code "glXSwapBuffers")
           " is called. ")
     (para (code "glXSwapBuffers")
           " performs an implicit "
           (code "glFlush")
           " before it returns.
            Subsequent OpenGL commands may be issued immediately after calling "
           (code "glXSwapBuffers")
           ",
            but are not executed until the buffer exchange is completed. ")
     (para "
If "
           (var "drawable")
           " was not created with respect to a double-buffered visual, "
           (code "glXSwapBuffers")
           " has no effect,
            and no error is generated. ")
     (heading "Errors")
     (para (code "GLXBadDrawable")
           " is generated if "
           (var "drawable")
           " is not a valid GLX drawable. ")
     (para (code "GLXBadCurrentWindow")
           " is generated if "
           (var "dpy")
           " and "
           (var "drawable")
           " are
            respectively the display and drawable associated with the current
            context of the calling thread, and "
           (var "drawable")
           " identifies a window that
            is no longer valid. ")))

(define-gl-procedure
  glXUseXFont
  "glXUseXFont"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXUseXFont"))
      (paramdef "Font " (parameter "font"))
      (paramdef "int " (parameter "first"))
      (paramdef "int " (parameter "count"))
      (paramdef "int " (parameter "listBase"))))
  '(*fragment*
     (heading
       "create bitmap display lists from an X font")
     (heading "Parameters")
     (table (% (formatter (asis)))
            (entry (% (heading (var "font")))
                   (para "
Specifies the font from which character glyphs are to be taken. "))
            (entry (% (heading (var "first")))
                   (para "
Specifies the index of the first glyph to be taken. "))
            (entry (% (heading (var "count")))
                   (para "
Specifies the number of glyphs to be taken. "))
            (entry (% (heading (var "listBase")))
                   (para "
Specifies the index of the first display list to be generated. ")))
     (heading "Description")
     (para (code "glXUseXFont")
           " generates "
           (var "count")
           " display lists,
            named "
           (var "listBase")
           " through "
           (math (var "listBase") "+" (var "count") "-" "1")
           ",
            each containing a single "
           (code "glBitmap")
           " command.
            The parameters of the "
           (code "glBitmap")
           " command of display list "
           (math (var "listBase") "+" (var "i"))
           "
are derived from glyph "
           (math (var "first") "+" (var "i"))
           ".
            Bitmap parameters "
           (math (var "xorig"))
           ", "
           (math (var "yorig"))
           ", "
           (math (var "width"))
           ",
            and "
           (math (var "height"))
           "
are computed from font metrics as "
           (math (var "descent") "-" "1")
           ", "
           (math "-" (var "lbearing"))
           ", "
           (math (var "rbearing") "-" (var "lbearing"))
           ",
            and "
           (math (var "ascent") "+" (var "descent"))
           ",
            respectively. "
           (math (var "xmove"))
           "
is taken from the glyph's "
           (math (var "width"))
           "
metric,
            and "
           (math (var "ymove"))
           "
is set to zero.
            Finally,
            the glyph's image is converted to the appropriate format for "
           (code "glBitmap")
           ". ")
     (para "
Using "
           (code "glXUseXFont")
           " may be more efficient than accessing the X font and generating
            the display lists explicitly,
            both because the display lists are created on the server without requiring
            a round trip of the glyph data,
            and because the server may choose to delay the creation of each
            bitmap until it is accessed. ")
     (para "
Empty display lists are created for all glyphs that are requested and
            are not defined in "
           (var "font")
           ". "
           (code "glXUseXFont")
           " is ignored if there is no current GLX context. ")
     (heading "Errors")
     (para (code "BadFont")
           " is generated if "
           (var "font")
           " is not a valid font. ")
     (para (code "GLXBadContextState")
           " is generated if the current GLX context is
            in display-list construction mode. ")
     (para (code "GLXBadCurrentWindow")
           " is generated if the drawable associated
            with the current context of the calling thread is a window, and that
            window is no longer valid. ")))

(define-gl-procedure
  glXWaitGL
  "glXWaitGL"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXWaitGL"))
      (paramdef (parameter "void"))))
  '(*fragment*
     (heading
       "complete GL execution prior to subsequent X calls")
     (heading "Description")
     (para "
GL rendering calls made prior to "
           (code "glXWaitGL")
           " are guaranteed to be
            executed before X rendering calls made after "
           (code "glXWaitGL")
           ".
            Although this same result can be achieved using "
           (code "glFinish")
           ", "
           (code "glXWaitGL")
           " does not require a round trip to the server,
            and it is therefore more efficient in cases where client and server
            are on separate machines. ")
     (para (code "glXWaitGL")
           " is ignored if there is no current GLX context. ")
     (heading "Errors")
     (para (code "GLXBadCurrentWindow")
           " is generated if the drawable associated
            with the current context of the calling thread is a window, and that
            window is no longer valid. ")))

(define-gl-procedure
  glXWaitX
  "glXWaitX"
  (funcsynopsis
    (funcprototype
      (funcdef "void " (function "glXWaitX"))
      (paramdef (parameter "void"))))
  '(*fragment*
     (heading
       "complete X execution prior to subsequent GL calls")
     (heading "Description")
     (para "
X rendering calls made prior to "
           (code "glXWaitX")
           " are guaranteed to be
            executed before GL rendering calls made after "
           (code "glXWaitX")
           ".
            Although the same result can be achieved using "
           (code "XSync")
           ", "
           (code "glXWaitX")
           " does not require a round trip to the server,
            and it is therefore more efficient in cases where client and server
            are on separate machines. ")
     (para (code "glXWaitX")
           " is ignored if there is no current GLX context. ")
     (heading "Errors")
     (para (code "GLXBadCurrentWindow")
           " is generated if the drawable associated
            with the current context of the calling thread is a window, and that
            window is no longer valid. ")))

