## Process this file with automake to produce Makefile.in.
##
## Guile-OpenGL
## Copyright (C) 2014 Free Software Foundation, Inc.
## 
## Guile-OpenGL is free software: you can redistribute it and/or modify
## it under the terms of the GNU Lesser General Public License as
## published by the Free Software Foundation, either version 3 of the
## License, or (at your option) any later version.
## 
## Guile-OpenGL is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## Lesser General Public License for more details.
## 
## You should have received a copy of the GNU Lesser General Public
## License along with this program.  If not, see
## <http://www.gnu.org/licenses/>.

include guile.am

moddir=$(prefix)/share/guile/site/$(GUILE_EFFECTIVE_VERSION)
godir=$(libdir)/guile/$(GUILE_EFFECTIVE_VERSION)/ccache

SOURCES = \
	gl/config.scm \
	gl/contrib.scm \
	gl/contrib/packed-struct.scm \
	gl/parse.scm \
	\
	gl/types.scm \
	gl/runtime.scm \
	gl/low-level.scm \
	gl/enums.scm \
	gl.scm \
	\
	glu/types.scm \
	glu/runtime.scm \
	glu/low-level.scm \
	glu.scm \
	\
	glx/types.scm \
	glx/runtime.scm \
	glx/low-level.scm \
	glx/enums.scm \
	glx.scm \
	\
	glut/types.scm \
	glut/runtime.scm \
	glut/low-level.scm \
	glut/enums.scm \
	glut.scm

update: gl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/maint/update-low-level-bindings

update-enums: gl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/maint/update-enumerations

update-manual:
	cd $(top_srcdir)/doc; ../build-aux/gendocs.sh --email bug-guile@gnu.org guile-opengl "GNU Guile-OpenGL manual"

EXTRA_DIST += env.in COPYING COPYING.LESSER examples upstream-doc
EXTRA_DIST += LICENSE README AUTHORS NEWS

dist-hook: gen-ChangeLog

gen_start_rev = 4a07fe280dea895ef4f127b11a481c1dff335d90
.PHONY: gen-ChangeLog
gen-ChangeLog:
	if test -d .git; then						\
	  $(top_srcdir)/build-aux/gitlog-to-changelog			\
	    $(gen_start_rev)..HEAD > $(distdir)/cl-t;			\
	  rm -f $(distdir)/ChangeLog;					\
	  mv $(distdir)/cl-t $(distdir)/ChangeLog;			\
	fi

info_TEXINFOS = doc/guile-opengl.texi
guile_opengl_TEXINFOS = \
	doc/gpl.texi \
	doc/lgpl.texi \
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
EXTRA_DIST += $(TESTS) $(guile_opengl_TEXINFOS)
