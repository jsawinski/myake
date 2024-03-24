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
function(my_package)
    message(DEBUG "my_package(...)")

    # check for <generator> and COMMON
    set(ARGS ${ARGN})

    my_generator_identify(${ARGV0} GENERATOR)
    if(DEFINED GENERATOR)
        list(POP_FRONT ARGS)
    endif()

    list(GET ARGS 0 COMMON)
    if("${COMMON}" STREQUAL "COMMON")
        set(COMMON TRUE)
        list(POP_FRONT ARGS)
    else()
        set(COMMON FALSE)
    endif()

    # parse arguments
    if(NOT DEFINED GENERATOR)
        set(MY_PACK_COMMON ${ARGS} PARENT_SCOPE)
    elseif(COMMON)
        set(MY_PACK_${GENERATOR} ${ARGS} PARENT_SCOPE)
    else()
        my_generator(${GENERATOR} ${ARGS})
    endif()
endfunction()

