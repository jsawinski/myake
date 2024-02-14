# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

include_guard(GLOBAL)

if(NOT MY_PLATFORM_FOUND AND DEFINED ENV{XDG_DATA_DIRS})
    # MY_PLATFORM_FOUND
    set(MY_PLATFORM_FOUND TRUE)

    # MY_PLATFORM_HIERARCHY
    set(MY_PLATFORM_HIERARCHY "FreeDesktop")

    # MY_USER_PREFIX
    set(MY_USER_PREFIX "$ENV{HOME}/.local" CACHE PATH "User-local system installation prefix.")
    set(MY_USER_PATHS "${MY_USER_PREFIX}/share/cmake" CACHE PATH "CMake module search path.")

    # MY_PLATFORM_USES
    list(APPEND MY_PLATFORM_CMAKE_MODULES GNUInstallDirs)

    # report
    my_report(My/Platform %{BR} "Loaded platform specific settings: 'FreeDesktop'.")
endif()