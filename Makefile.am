include guile.am

moddir=$(prefix)/share/guile/site/2.0
godir=$(libdir)/guile/2.0/ccache

SOURCES = \
	figl.scm \
	figl/config.scm \
	figl/parse.scm \
	figl/low-level.scm

BUILT_SOURCES = \
	figl/low-level.inc.scm

NOCOMP_SOURCES = \
	figl/low-level.inc.scm

figl/low-level.inc.scm: figl/parse.go
	$(top_builddir)/env $(GUILE) $(top_srcdir)/generate-low-level-bindings > $@

EXTRA_DIST += env.in COPYING COPYING.LESSER

TESTS = \
	tests/basic.test
TESTS_ENVIRONMENT = $(top_builddir)/env $(GUILE) --no-auto-compile
EXTRA_DIST += $(TESTS)
