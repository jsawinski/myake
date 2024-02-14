include(My/Bits/Toplevel)
include(My/External)

install(DIRECTORY
    My/
    DESTINATION ${CMAKE_INSTALL_DOCDIR}/md)

# pandoc ~/git/private/myake/README.md --output=index.html --to=html5 --standalone --css=https://jsawinski.github.io/tufte.css --metadata pagetitle="Myake"

# my_external(
#     SITE myake-public-docs
#         USE jsawinski.github.io OPTIONAL
#         SUBDIRECTORY ${PROJECT_UUID}
#         TAINTED warn-only
# )

