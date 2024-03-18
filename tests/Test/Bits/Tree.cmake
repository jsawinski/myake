message("=== My/Bits/Tree ============================================================")

include(My/Bits/Tree)

set(TEMPLATE [
    NAME [ VALUE "${PROJECT_NAME}" ]
    VENDOR [ VALUE "${PROJECT_VENDOR}" ]
    VERSION [ VALUE "${PROJECT_VERSION}" ]

    DESCRIPTION [ GROUP ] [
        SUMMARY [ 1 ] 
        FULL [ 1 ] 
        FILE [ 1 ] 
    ]

    COMPONENTS [ GROUP ] [
        GROUP [ NAMED ] [
            DISPLAY [ VALUE ]

            PARENT_GROUP [ VALUE ]
            @GROUP->PARENT_GROUP
            @COMPONENT->GROUP
        ]

        COMPONENT [ NAMED ] [
            DISPLAY [ VALUE ]
            GROUP [ VALUE ]
        ]
    ]
])

my_tree_parse(TREE [] 
    NAME "ProjectName"
    VERSION "0.0.1"
    DESCRIPTION [
        SUMMARY "Summary."
    ]
    COMPONENTS [
        GROUP "common" [
            DISPLAY "Common"
        ]

        COMPONENT "header" [
            DISPLAY "Development headers."
            GROUP "common"
        ]
    ]
)
my_show(STATUS CACHE_VARIABLES TREE_)

my_tree_parse(TREE [ NODEFAULTS TEMPLATE ${TEMPLATE} ]
    NAME "ProjectName"
    VERSION "0.0.1"
    DESCRIPTION [
        SUMMARY "Summary."
    ]
    COMPONENTS [
        GROUP "common" [
            DISPLAY "Common"

            COMPONENT "header" [
                DISPLAY "Development headers."
            ]
        ]
    ]
)

# foreach(i RANGE 0 10)
#     message("i=${i}")
#     math(EXPR i "${i}+1")
# endforeach()

# set(i 0)
# while(i LESS_EQUAL 10)
#     message("i=${i}")
#     math(EXPR i "${i}+2")
# endwhile()
