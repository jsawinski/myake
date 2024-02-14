# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Platform/Utils/Unix

## Reference
#]=======================================================================]
include_guard(GLOBAL)

include(My/Bits/Auxiliary)

#[==[.md:
### my_unix_distribution_info(<distribution-variable> <version-variable> <codename-variable> <architecture-variable>)

Infer the distribution name, version, codename and architecture and assign these
to the respective output variables.

Copyright 2015 by Florian Franzen  
Published under GPL v2 as part of Neurosuite.  
#]==]
function(my_unix_distribution_info distrovar versionvar codenamevar architecturevar)
    # unset to allow if(DEFINED)
    unset(${distrovar})
    unset(${versionvar})
    unset(${codenamevar})
    unset(${architecturevar})

    if(UNIX AND NOT APPLE)
        # Read distribution, release, and, codename from /etc/lsb-release and /etc/os-release - if present.
        if(EXISTS /etc/lsb-release)
            my_read_variables(/etc/lsb-release _)
            set(${distrovar} "${__DISTRIB_ID}" PARENT_SCOPE)
            set(${versionvar} "${__DISTRIB_RELEASE}" PARENT_SCOPE)
            set(${codenamevar} "${__DISTRIB_CODENAME}" PARENT_SCOPE)
        else()
            message(WARNING "LSB-Release file not present - cannot detect distribution type.")
        endif()

        if(EXISTS /etc/os-release)
            # os-release is available on systemd based systems
            my_read_variables(/etc/os-release _)

            if (__ID_LIKE MATCHES "ubuntu")
                set(${distrovar} "Ubuntu" PARENT_SCOPE)
            endif()
        endif()

        # Infer architecture - use system tools if present.
        find_program(DPKG_CMD dpkg)
        if(DPKG_CMD)
            # ... then use it to determine architecture string
            execute_process(COMMAND ${DPKG_CMD} --print-architecture
                OUTPUT_VARIABLE ARCHITECTURE
                OUTPUT_STRIP_TRAILING_WHITESPACE)
            set(${architecturevar} ${ARCHITECTURE} PARENT_SCOPE)
        else()
            # ... else use uname -p (or whatever they do on Windows or OS X)
            set(${architecturevar} ${CMAKE_SYSTEM_PROCESSOR} PARENT_SCOPE)
        endif()
    endif()
endfunction()

