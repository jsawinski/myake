# Myake

Myake is a play of words, indicating the ache of building software, as well
as the Japanes 三宅, literally meaning "three homes".

## Overview

Myake is an set of macros extending [CMake](https://cmake.org). It provides
three main features:

**Personalization**

When using Myake it is possible to store common and per-project CMake settings 
outside the source tree. Common settings may, for example, be standard compiler 
options (like "-Wextra" for gcc/clang compiler suites). Also, Myake provides
a "style-based" installation prefix selection (such as "MY_INSTALL_STYLE=Local",
which will cause installation in an user-local path, e.g. '$HOME/.local/bin'
on FreeDesktop conforming systems).

**Packaging**

Myake provides a simplified approach for ``CPack``. Code authors may, then, provide
settings common to all package generators and leave specific settings to package
maintainers.

**External sites**

Myake provides macros for dealing with external sites, provides down- and upload 
mechanisms, including source code revision suites, and more.

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

before the `project` command. Myake will use CMake's code injection facility to 
load [`My/Init`](docs/My/Init.md) before and [`My/Config`](docs/My/Config.md) 
during the `project()` commands execution using the variables 
CMAKE_PROJECT_INCLUDE and CMAKE_PROJECT_INCLUDE_BEFORE
(see [Code Injection](https://cmake.org/cmake/help/latest/command/project.html#code-injection)).

#### Installation styles

By default, configuring with CMake without setting a prefix results in a
system dependent default installation path (such as `/usr/local` on typical
Unix derivatives). Instead of tweaking ``CMAKE_INSTALL_PREFIX``, here, we
introduce a 'style-based' way of installing software through the variable
[``MY_INSTALL_STYLE``](docs/My/Platform.md#my_install_style)
which can be set via GUI or on the command line, such as:

    cmake -DMY_INSTALL_STYLE=<style> ..

Dependent on the operating system, such styles can, for example be: `Default`
(CMake default), `System` (standard system installation path, e.g. `/usr` on
Unixoid systems), `Provider` (a provider or vendor, respectively, style
installation, involving a `provider/package` installation path), etc.

### Packaging

CMake provides a multitude of packaging options. Setting up each individual
packager is, possibly not only in the eyes of the authors, not trivial. Myake,
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


### External sites

External sites is at the moment of writing in an orphaned state and intended
to be revived not before milestone 0.90. Planned features are:

Myake supports simple handling of external projects, sites. It provides a
simple interface for down- and uploading (e.g. using git). In combination,
for example, with packaging, it is possible to setup the complete workflow
for creating, signing, uploading and managing software suites 
(see [External](https://github.com/jsawinski/myake/blob/main/docs/My/External.md)).

## License and authors

### License

    MIT License

    Copyright (C) 2018-2024 Jürgen "George" Sawinski
    
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

This project was previously hosted under the name "cmyke" which, at some 
point, became too simliar and hardly distinguishable from ``cmake``.

## Projects using Myake

[DeLua](https://github.com/jsawbbo/delua)