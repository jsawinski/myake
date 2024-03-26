# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

# Inspired by and some code copied from
#      https://github.com/neurosuite/libneurosuite/blob/master/cmake/modules/PackNeurosuite.cmake,
#      Copyright 2015 by Florian Franzen
#
#      Neurosuite was published under the GPL v2.
#      See https://github.com/neurosuite/libneurosuite/blob/master/LICENSE.txt

#[=======================================================================[.md:
# My/Package - Packaging utilities

Tools and utilities for setting up CPack in a more structured manner.

See also gitlab's [Packaging with CPack](https://gitlab.kitware.com/cmake/community/wikis/doc/cpack/Packaging-With-CPack)
for more information.

## Overview

FIXME

## Reference
#]=======================================================================]
include_guard(GLOBAL)

include(My/Build)
include(My/Package/Generator)

#[==[.md
## Defaults

### MY_PACK_SOURCES_IGNORE

Default for CPACK_SOURCE_IGNORE_FILES.

#]==]
set(MY_PACK_SOURCES_IGNORE "/CVS/;/[.]svn/;/[.]bzr/;/[.]hg/;/[.]git/;[.]swp$;[.]#;/#")

#[==[.md:
## my_package

    my_package([<generator> [COMMON]]
        <settings>...
    )

FIXME

**See**:  
[MY_PROJECT_TOPLEVEL](Bits/Toplevel.md) 
#]==]
macro(my_package)
    message(DEBUG "my_package(...)")

    # check for <generator> and COMMON
    set(__MY_PACKAGE_ARGS ${ARGN})

    my_generator_identify(${ARGV0} __MY_PACKAGE_GENERATOR)
    if(DEFINED __MY_PACKAGE_GENERATOR)
        list(POP_FRONT __MY_PACKAGE_ARGS)
    endif()

    list(GET __MY_PACKAGE_ARGS 0 __MY_PACKAGE_COMMON)
    if("${__MY_PACKAGE_COMMON}" STREQUAL "COMMON")
        set(__MY_PACKAGE_COMMON TRUE)
        list(POP_FRONT __MY_PACKAGE_ARGS)
    else()
        set(__MY_PACKAGE_COMMON FALSE)
    endif()

    # parse arguments
    if(NOT DEFINED __MY_PACKAGE_GENERATOR)
        set(MY_PACK_COMMON ${__MY_PACKAGE_ARGS})
    elseif(__MY_PACKAGE_COMMON)
        set(MY_PACK_${__MY_PACKAGE_GENERATOR} ${__MY_PACKAGE_ARGS})
    else()
        my_generator(${__MY_PACKAGE_GENERATOR} ${__MY_PACKAGE_ARGS})
    endif()

    # cleanup
    unset(__MY_PACKAGE_GENERATOR)
    unset(__MY_PACKAGE_COMMON)
    unset(__MY_PACKAGE_ARGS)
endmacro()

