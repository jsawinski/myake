my_package(DEB COMMON
    CATEGORY "devel"

    DEPENDS
        "cmake (>= ${MYAKE_MINIMUM_MAJOR_VERSION}.${MYAKE_MINIMUM_MINOR_VERSION})"
    ENHANCES
        "cmake"
)
