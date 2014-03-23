dnl -*- Autoconf -*-

AC_INIT(guile-opengl, 0.1.0)
AC_COPYRIGHT([

Guile-OpenGL
Copyright (C) 2014 Free Software Foundation, Inc.

Guile-OpenGL is free software: you can redistribute it and/or modify it
under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

Guile-OpenGL is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this program.  If not, see
<http://www.gnu.org/licenses/>.

])

AC_CONFIG_SRCDIR(gl.scm)
AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([color-tests -Wall -Wno-portability serial-tests])
AM_SILENT_RULES([yes])

GUILE_PKG([2.2 2.0])
GUILE_PROGS

AC_CONFIG_FILES([Makefile gl/config.scm])
AC_CONFIG_FILES([env], [chmod +x env])

AC_OUTPUT
