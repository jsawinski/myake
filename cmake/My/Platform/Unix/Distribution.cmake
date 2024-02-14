# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Platform/Unix/Distribution

Detect distribution.

**See**:  
[My/Platform](../../Platform.md)  

## Reference
### MY_DISTRIBUTION_ID

The distribution name, such as "Ubuntu".

### MY_DISTRIBUTION_ID_LOWER

The distribution name (MY_DISTRIBUTION_ID) in lower case.

### MY_DISTRIBUTION_RELEASE

The release version of the distribution (e.g. "22.04" on Ubuntu).

### MY_DISTRIBUTION_CODENAME

The distribution codename (such as "jammy" on Ubuntu).

### MY_DISTRIBUTION_LIKE

Simliar distributions (from which this derives).

#]=======================================================================]

include_guard(GLOBAL)

if(EXISTS /etc/os-release)
    # check /etc/os-release (systemd)
    my_read_variables(/etc/os-release SYSTEMD)
    my_titlecase(SYSTEMD_ID "${SYSTEMD_ID}")
    my_set(MY_DISTRIBUTION_ID ${SYSTEMD_ID})
    my_set(MY_DISTRIBUTION_RELEASE ${SYSTEMD_VERSION_ID})
    my_set(MY_DISTRIBUTION_CODENAME ${SYSTEMD_VERSION_CODENAME})
    my_titlecase(SYSTEMD_ID_LIKE "${SYSTEMD_ID_LIKE}")
    string(REPLACE " " ";" SYSTEMD_ID_LIKE "${SYSTEMD_ID_LIKE}")
    my_set(MY_DISTRIBUTION_LIKE ${SYSTEMD_ID_LIKE})
elseif(EXISTS /etc/lsb-release)
    # check linux standard base config
    my_read_variables(/etc/lsb-release LSB)
    my_titlecase(LSB_DISTRIB_ID "${LSB_DISTRIB_ID}")
    my_set(MY_DISTRIBUTION_ID ${LSB_DISTRIB_ID})
    my_set(MY_DISTRIBUTION_RELEASE ${LSB_DISTRIB_RELEASE})
    my_set(MY_DISTRIBUTION_CODENAME ${LSB_DISTRIB_CODENAME})
endif()

if(MY_DISTRIBUTION_ID)
    string(TOLOWER MY_DISTRIBUTION_ID_LOWER ${MY_DISTRIBUTION_ID})

    include(My/Platform/Unix/Distribution/${MY_DISTRIBUTION_ID})
endif()