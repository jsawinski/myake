# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

include_guard(GLOBAL)

include(My/Bits/Auxiliary)
include(My/Bits/String)

# MY_USER_HOME
set(MY_USER_HOME "$ENV{HOME}" CACHE PATH "User's home folder.")

set(MY_INSTALL_STYLE_LIST
    System
    Package
    Provider
    User
    Local
)

# style prefixes
set(MY_SYSTEM_PREFIX "/usr" CACHE INTERNAL "Standard system installation prefix.")
set(MY_PACKAGE_PREFIX "/opt/$<PROJECT_NAME>" CACHE INTERNAL "Package style installation prefix.")
set(MY_PROVIDER_PREFIX "/opt/${PROJECT_VENDOR}/$<PROJECT_NAME>" CACHE INTERNAL "Provider or vendor style installation prefix.")
set(MY_LOCAL_PREFIX "/usr/local" CACHE INTERNAL "Local system installation prefix.")

if(DEFINED MY_PROVIDER_PREFIX)
    if(NOT DEFINED PROJECT_VENDOR)
        unset(MY_PROVIDER_PREFIX CACHE)
        my_list(MODIFY MY_INSTALL_STYLE_LIST REMOVE "Provider")
    endif()
endif()

# report
my_report(My/Platform %{BR} "Loaded common platform settings: 'Unix'.")
