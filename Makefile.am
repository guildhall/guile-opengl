include guile.am

moddir=$(prefix)/share/guile/site/2.0
godir=$(libdir)/guile/2.0/ccache

SOURCES = \
	figl.scm \
	figl/config.scm \
	figl/parse.scm \
	figl/runtime.scm \
	figl/gl/types.scm \
	figl/gl/low-level.scm \
	figl/gl.scm \
	figl/glu/types.scm \
	figl/glu/low-level.scm \
	figl/glx/types.scm \
	figl/glx/low-level.scm \
	figl/glx.scm

update: figl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/maint/update-low-level-bindings

EXTRA_DIST += env.in COPYING COPYING.LESSER

info_TEXINFOS = doc/figl.texi
figl_TEXINFOS = \
	doc/low-level-gl.texi \
	doc/low-level-glu.texi \
	doc/low-level-glx.texi

TESTS = \
	tests/basic.test
TESTS_ENVIRONMENT = $(top_builddir)/env $(GUILE) --no-auto-compile
EXTRA_DIST += $(TESTS) $(figl_TEXINFOS)
