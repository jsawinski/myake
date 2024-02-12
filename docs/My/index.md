# Myake documentation

## Overview

FIXME

## Usage

The general skeleton for a `CMakeLists.txt` file taking advantage of Myake is:

	find_package(Myake OPTIONAL)
	include(My/Init OPTIONAL)
	project(<...>)
	include(My/Config OPTIONAL)

	<...>

	if(Myake_FOUND)
		# ...
	endif()

	include(My/Lists OPTIONAL)

Here, `My/Init` will initialize and `My/Config` will configure Myake and, as well,
load user specific settings from `User/Init` and `User\Config`, respectively, which
can be used to store personalized settings. In the sameway, `My/Lists` (which is
recommend to appear at the end of the file) loads `User/Lists`, which can be used
to add additional configuration, such as package generator options. Note, that
`OPTIONAL` must be used as Myake is not necessarily installed nor it's CMake version
requirements are satisfied (at the time of writing Myake requires CMake version 3.16
or above).

**See also**:
[My/Init](Init.md)
[My/Config](Config.md)
[My/Lists](Lists.md)

## Invocation options

To retrieve help or information about Myake's internals,

FIXME

## Modules

FIXME






