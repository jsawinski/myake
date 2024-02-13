# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

include_guard(GLOBAL)

set(__DEBIAN_SECION_NAMES
    _ admin ^admin
    _ cli-mono
    _ comm ^comm
    _ database
    _ debug
    _ devel ^develop
    _ doc ^document
    _ editors
    _ education
    _ electronics
    _ embedded
    _ fonts
    _ games
    _ gnome
    _ gnu-r
    _ gnustep
    _ graphics
    _ hamradio
    _ haskell
    _ httpd
    _ interpreters
    _ introspection
    _ java
    _ javascript
    _ kde
    _ kernel
    _ libdevel # FIXME
    _ libs
    _ lisp
    _ localization
    _ mail
    _ math
    _ metapackages # FIXME
    _ misc
    _ net
    _ news
    _ ocaml
    _ oldlibs
    _ otherosfs
    _ perl
    _ php
    _ python
    _ ruby
    _ rust
    _ science
    _ shells
    _ sound
    _ tasks
    _ tex
    _ text
    _ utils
    _ vcs
    _ video
    _ web
    _ x11
    _ xfce
    _ zope
)

#[==[.md:
### my_deb_section(OUTVAR NAME)

Try to find Debian package section from a string (such as the category).

#]==]
function(my_deb_section OUTVAR)
    string(TOLOWER "${ARGN}" name)

    foreach(s ${__DEBIAN_SECION_NAMES})
        if (${s} STREQUAL "_")
            set(section)
        elseif("${section}" STREQUAL "")
            set(section ${s})
            if("${section}" STREQUAL "${name}")
                set(${OUTVAR} "${section}" PARENT_SCOPE) 
                return()
            endif()
        else()
            if("${name}" MATCHES "${s}")
                set(${OUTVAR} "${section}" PARENT_SCOPE)
                return()
            endif()
        endif()
    endforeach()
endfunction()