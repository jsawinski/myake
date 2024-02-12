my_package(DEB COMMON
	MAINTAINER "Jürgen 'George' Sawinski <juergen.sawinski@gmail.com>"
	CATEGORY "devel"

	DEPENDS
    	"cmake (>= ${MYAKE_MINIMUM_MAJOR_VERSION}.${MYAKE_MINIMUM_MINOR_VERSION})"
    ENHANCES
    	"cmake"
)
