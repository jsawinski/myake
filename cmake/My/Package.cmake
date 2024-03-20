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
endmacro()

