# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

include_guard(GLOBAL)

if(NOT MY_PLATFORM_FOUND)
    # MY_PLATFORM_FOUND
    set(MY_PLATFORM_FOUND TRUE)

    # MY_PLATFORM_HIERARCHY
    set(MY_PLATFORM_HIERARCHY "Unix")

    # MY_USER_PREFIX
    set(MY_USER_PREFIX "$ENV{HOME}" CACHE PATH "User-local system installation prefix.")
    set(MY_USER_PATHS "${MY_USER_PREFIX}/share/cmake" CACHE PATH "CMake module search path.")

    # report
    my_report(My/Platform %{BR} "Loaded platform settings: 'Unix'.")
endif()