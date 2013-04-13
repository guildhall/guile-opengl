## Process this file with automake to produce Makefile.in.
##
## figl
## Copyright (C) 2013 Andy Wingo <wingo@pobox.com>
## Copyright (C) 2013 Daniel Hartwig <mandyke@gmail.com>
## 
## Figl is free software: you can redistribute it and/or modify it
## under the terms of the GNU Lesser General Public License as
## published by the Free Software Foundation, either version 3 of the
## License, or (at your option) any later version.
## 
## Figl is distributed in the hope that it will be useful, but WITHOUT
## ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
## or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General
## Public License for more details.
## 
## You should have received a copy of the GNU Lesser General Public
## License along with this program.  If not, see
## <http://www.gnu.org/licenses/>.

include guile.am

moddir=$(prefix)/share/guile/site/2.0
godir=$(libdir)/guile/2.0/ccache

SOURCES = \
	figl.scm \
	figl/config.scm \
	figl/contrib.scm \
	figl/contrib/packed-struct.scm \
	figl/parse.scm \
	figl/runtime.scm \
	\
	figl/gl/types.scm \
	figl/gl/runtime.scm \
	figl/gl/low-level.scm \
	figl/gl/enums.scm \
	figl/gl.scm \
	\
	figl/glu/types.scm \
	figl/glu/runtime.scm \
	figl/glu/low-level.scm \
	figl/glu.scm \
	\
	figl/glx/types.scm \
	figl/glx/runtime.scm \
	figl/glx/low-level.scm \
	figl/glx/enums.scm \
	figl/glx.scm \
	\
	figl/glut/types.scm \
	figl/glut/runtime.scm \
	figl/glut/low-level.scm \
	figl/glut/enums.scm \
	figl/glut.scm

update: figl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/maint/update-low-level-bindings

update-enums: figl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/maint/update-enumerations

EXTRA_DIST += env.in COPYING COPYING.LESSER examples upstream-doc

info_TEXINFOS = doc/figl.texi
figl_TEXINFOS = \
	doc/gl.texi \
	doc/glu.texi \
	doc/glx.texi \
	doc/glut.texi \
	doc/low-level-gl.texi \
	doc/low-level-glu.texi \
	doc/low-level-glx.texi \
	doc/low-level-gl-enums.texi \
	doc/low-level-glx-enums.texi

TESTS = \
	tests/basic.test
TESTS_ENVIRONMENT = $(top_builddir)/env $(GUILE) --no-auto-compile
EXTRA_DIST += $(TESTS) $(figl_TEXINFOS)
