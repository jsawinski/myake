include(Package/Debian/Common)

my_read_variables("/etc/lsb-release" DEBIAN)
set(DEBIAN_DISTRIB_COUNT 0)

my_package(DEB
    DISTRIBUTION "Ubuntu"
    MAINTAINER "Jürgen 'George' Sawinski <juergen.sawinski@gmail.com>"

    RELEASE ${DEBIAN_DISTRIB_COUNT}${DEBIAN_DISTRIB_ID}
)

