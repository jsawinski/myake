# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Platform - Platform and operating system detection

This module is automatically loaded by `My/Init` and detects platform or 
operating system dependent settings (for a report, see [My/Config](Config.md)).

## Reference
### MY_PLATFORM_FOUND

This boolean variable is set to ``TRUE`` if the host platform is known to 
Myake, ``FALSE`` otherwise.

### MY_PLATFORM_HIERARCHY

This indicates the host platform's file-system hierarchy style. It is of
informational character, only. Unless specific standards apply, this will
be the host's name as known to CMake (``CMAKE_HOST_SYSTEM_NAME``).

**See**:
- [CMAKE_HOST_SYSTEM_NAME](https://cmake.org/cmake/help/latest/variable/CMAKE_HOST_SYSTEM_NAME.html)

### MY_USER_HOME

The user's home folder.

### MY_USER_PREFIX

The user's application and data directory.

### MY_USER_PATHS

The list of paths where to find local cmake files.

### MY_INSTALL_STYLE

The installation style is a system dependent setting. Common to all styles is
``Default`` (which refers to CMake's default CMAKE_INSTALL_PREFIX), and,
``User`` for installation for the current user's access after compilation.

The default can be seeded using ``MY_INSTALL_STYLE_INIT``.

### MY_INSTALL_STYLE_LIST

This variable contains the list of available options to [MY_INSTALL_STYLE](#markdown-header-MY_INSTALL_STYLE).

### MY_<style>_PREFIX

Installation path for <style> (upper-case).

### MY_PLATFORM_CMAKE_MODULES

Default CMake modules to load for a given platform.

## Includes

[My/Platform/Linux](Platform/Linux.md)  
[My/Platform/Unix](Platform/Unix.md)  
[My/Platform/FreeDesktop](Platform/FreeDesktop.md)  

[My/Platform/Common/Unix](Platform/Common/Unix.md)  

[My/Platform/Debian/Secion](Platform/Debian/Secion.md)  

#]=======================================================================]

include(My/Bits/Set)
include(My/Bits/Auxiliary)

# load platform settings (once)
if(NOT MY_PLATFORM_INIT_STAGE)
    set(MY_PLATFORM_INIT_STAGE TRUE)

    # set defaults
    my_set(MY_INSTALL_STYLE_INIT Default ONCE)

    set(MY_PLATFORM_FOUND FALSE)
    set(MY_PLATFORM_HIERARCHY "unknown")
    
    unset(MY_USER_HOME)
    unset(MY_USER_PREFIX)
    unset(MY_USER_PATHS)

    # load platform specific settings
    include(My/Platform/${CMAKE_HOST_SYSTEM_NAME} OPTIONAL)

    # system name
    string(TOUPPER ${CMAKE_HOST_SYSTEM_NAME} MY_SYSTEM_NAME)
    string(TOLOWER ${CMAKE_HOST_SYSTEM_NAME} my_system_name)

    my_report(My/Variables %{BR} %{50} "    MY_PLATFORM_FOUND = $<MY_PLATFORM_FOUND>")
    my_report(My/Variables %{BR} %{50} "    MY_PLATFORM_HIERARCHY = $<MY_PLATFORM_HIERARCHY>" "The platform's file-system hierarchy style.")
    my_report(My/Variables %{BR}
                           %{BR} %{50} "    MY_USER_HOME = $<MY_USER_HOME>" "User's home folder.")
    my_report(My/Variables %{BR} %{50} "    MY_USER_PATHS = $<MY_USER_PATHS>" "CMake module search paths.")

    # distribution
    if(MY_DISTRIBUTION_ID)
        my_report(My/Variables %{P}    "    MY_DISTRIBUTION_ID       = $<MY_DISTRIBUTION_ID>")
        my_report(My/Variables %{BR}   "    MY_DISTRIBUTION_RELEASE  = $<MY_DISTRIBUTION_RELEASE>")
        my_report(My/Variables %{BR}   "    MY_DISTRIBUTION_CODENAME = $<MY_DISTRIBUTION_CODENAME>")
        my_report(My/Variables %{BR}   "    MY_DISTRIBUTION_LIKE     = $<MY_DISTRIBUTION_LIKE>")
    endif()

    # architecture
    find_program(DPKG_CMD dpkg)
    if(DPKG_CMD)
        execute_process(COMMAND ${DPKG_CMD} --print-architecture
            OUTPUT_VARIABLE MY_ARCHITECTURE
            OUTPUT_STRIP_TRAILING_WHITESPACE)
    else()
        set(MY_ARCHITECTURE ${CMAKE_SYSTEM_PROCESSOR})
    endif()

    my_report(My/Variables %{P}        "    MY_ARCHITECTURE = $<MY_ARCHITECTURE>")

elseif(NOT MY_PLATFORM_CONFIG_STAGE)
    set(MY_PLATFORM_CONFIG_STAGE TRUE)

    foreach(module ${MY_PLATFORM_CMAKE_MODULES})
        if("${module}" STREQUAL "GNUInstallDirs")
            # silence author-warning when no languages are enabled
            get_property(_languages GLOBAL PROPERTY ENABLED_LANGUAGES)
            if("${_languages}" STREQUAL "NONE")
                set(CMAKE_INSTALL_LIBDIR invalid)
                include(${module})
                unset(CMAKE_INSTALL_LIBDIR)
                continue()
            endif()
        endif()

        include(${module})
    endforeach()

    if(MY_PLATFORM_FOUND)
        # nothing to be done (atm)
    endif()
else()
    # nothing to be done
endif()

