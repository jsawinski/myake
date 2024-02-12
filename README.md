# Myake

CMake macros for personalized building, simplified packaging and publishing.

## Overview

Myake is an set of macros extending [CMake](https://cmake.org). It provides
three main features:

**Personalized building**

FIXME

**Packaging**

FIXME

**Publishing**

FIXME

In addition, a flexible configuration report mechanism is introduced.

In the following a short introduction is given to the capabilities of Myake.
Full documentation can be found [here](docs/My/index.md).

### Personalization

#### Setup

When using Myake, it is possible to set up general, per project or even
compiler dependent defaults that deviate from CMake's idea of standard
settings (the author of Myake, e.g., uses -ggdb for debugging with the GNU
compiler collection, generally). This also supports package maintainers that
can store a specific CMake configuration for a source package.

This feature is enabled by using

	find_package(Myake QUIET)
	include(My/Init OPTIONAL)

before the `project` command, followed by 

	include(My/Config OPTIONAL)

after and ending the top-level ``CMakeLists.txt`` file with

	include(My/Lists OPTIONAL)

#### Installation styles

By default, configuring with CMake without setting a prefix results in a
system dependent default installation path (such as `/usr/local` on typical
Unix derivatives). Instead of tweaking ``CMAKE_INSTALL_PREFIX``, here, we
introduce a 'style-based' way of installing software through the variable
[``MY_INSTALL_STYLE``](docs/My/Platform.md#markdown-header-MY_INSTALL_STYLE)
which can be set via GUI or on the command line, such as:

	cmake -DMY_INSTALL_STYLE=<style> ..

Dependent on the operating system, such styles can, for example be: `Default`
(CMake default), `System` (standard system installation path, e.g. `/usr` on
Unixoid systems), `Provider` (a provider or vendor, respectively, style
installation, involving a `provider/package` installation path), etc.

### Packaging

CMake provides a multitude of packaging options. Setting up each individual
packager is, in the view of the authors, not necessarily simple. Myake,
therefore, provides a more structured approach using a hierarchical
declaration format, which can be seen in the [CMakeLists.txt](CMakeLists.txt)
file:

	my_package(
		VENDOR myake
		VERSION ${Myake_VERSION}
		ARCHITECTURE all
		CONTACT "Jürgen 'George' Sawinski <juergen.sawinski@gmail.com>"
		AUTHORS {
			"Jürgen 'George' Sawinski"
			"Florian Franzen"
		}
		CATEGORY "Development"
		DESCRIPTION {
			SUMMARY "CMake configuration personalization and utilities."
		...


### Publishing

FIXME

## License and authors

### License

	Copyright (C) 2018-2023 Jürgen "George" Sawinski

	Permission is hereby granted, free of charge, to any person obtaining
	a copy of this software and associated documentation files (the
	"Software"), to deal in the Software without restriction, including
	without limitation the rights to use, copy, modify, merge, publish,
	distribute, sublicense, and/or sell copies of the Software, and to
	permit persons to whom the Software is furnished to do so, subject to
	the following conditions:

	The above copyright notice and this permission notice shall be
	included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
	EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
	CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
	SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Some code was kindly contributed by Florian Franzen

	Copyright 2015 by Florian Franzen
	Published under GPL v2 as part of Neurosuite.
	(see https://github.com/neurosuite/libneurosuite/blob/master/LICENSE.txt)

### Authors

	Jürgen "George" Sawinski
	Florian Franzen

## History

This project was previously hosted under the name "myake" which, at some 
point, became too simliar and hardly distinguishable from ``cmake``.

## Projects using Myake

[DeLua](https://github.com/jsawbbo/delua)