message("=== My/Bits/Tree ============================================================")

include(My/Bits/Tree)

message("Checking TREE...")
my_tree_parse(TREE [ ] 
    NAME "ProjectName"
    VERSION "0.0.1"
    DESCRIPTION [
        SUMMARY "Summary."
    ]
    COMPONENTS [
        GROUP "common" [
            DISPLAY "Common"
        ]

        GROUP "files" [
            DISPLAY "Files"
            PARENT_GROUP "common"
        ]

        COMPONENT "header" [
            DISPLAY "Development headers."
            GROUP "files"
        ]
    ]
)
my_show(STATUS VARIABLES TREE_)

message("Checking template TTREE...")
my_tree_template(TTREE 
    NAME [ VALUE "${PROJECT_NAME}" ]
    VENDOR [ VALUE "${PROJECT_VENDOR}" ]
    VERSION [ VALUE "${PROJECT_VERSION}" ]

    DESCRIPTION [ GROUP ] [
        SUMMARY [ VALUE ] 
        FULL [ VALUE ] 
        FILE [ VALUE ] 
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
)

message("Checking TTREE...")
my_tree_parse(TTREE [ NODEFAULTS TEMPLATE TTREE ]
    NAME "ProjectName"
    VERSION "0.0.1"
    DESCRIPTION [
        SUMMARY "Summary."
    ]
    COMPONENTS [
        GROUP "common" [
            DISPLAY "Common"

            GROUP "files" [
                DISPLAY "Files"

        #         COMPONENT "header" [
        #             DISPLAY "Development headers."
        #         ]
            ]
        ]
    ]
)

my_show(STATUS VARIABLES TTREE_)

# foreach(i RANGE 0 10)
#     message("i=${i}")
#     math(EXPR i "${i}+1")
# endforeach()

# set(i 0)
# while(i LESS_EQUAL 10)
#     message("i=${i}")
#     math(EXPR i "${i}+2")
# endwhile()
