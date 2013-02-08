include guile.am

moddir=$(prefix)/share/guile/site/2.0
godir=$(libdir)/guile/2.0/ccache

SOURCES = \
	figl.scm \
	figl/config.scm \
	figl/contrib.scm \
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
	\
	figl/glx/types.scm \
	figl/glx/runtime.scm \
	figl/glx/low-level.scm \
	figl/glx/enums.scm \
	figl/glx.scm \
	\
	figl/glut/runtime.scm \
	figl/glut/low-level.scm \
	figl/glut.scm

update: figl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/maint/update-low-level-bindings

update-enums: figl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/maint/update-enumerations

EXTRA_DIST += env.in COPYING COPYING.LESSER

info_TEXINFOS = doc/figl.texi
figl_TEXINFOS = \
	doc/low-level-gl.texi \
	doc/low-level-glu.texi \
	doc/low-level-glx.texi \
	doc/low-level-gl-enums.texi \
	doc/low-level-glx-enums.texi

TESTS = \
	tests/basic.test
TESTS_ENVIRONMENT = $(top_builddir)/env $(GUILE) --no-auto-compile
EXTRA_DIST += $(TESTS) $(figl_TEXINFOS)
