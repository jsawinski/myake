# Sources #####################################################################

my_package(Archive
    GENERATOR ZIP TXZ
    SOURCE {
        GENERATOR ZIP TXZ
    }
)

# Debian common ###############################################################

my_package(DEB COMMON
    SECTION "devel"

    DEPENDS
        "cmake (>= ${MYAKE_MINIMUM_MAJOR_VERSION}.${MYAKE_MINIMUM_MINOR_VERSION})"
    ENHANCES
        "cmake"
)

# Ubuntu ######################################################################

set(DEBIAN_DISTRIB_COUNT 0)

my_package(DEB
    DISTRIBUTION "Ubuntu"
    DERIVATIVE Yes
    MAINTAINER "Jürgen 'George' Sawinski <juergen.sawinski@gmail.com>"
    

    RELEASE ${DEBIAN_DISTRIB_COUNT}ubuntu
)

