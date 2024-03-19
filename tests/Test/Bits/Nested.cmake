message("=== My/Bits/Nested ==========================================================")

include(My/Bits/Nested)

message("=== nested")

set(A_LIST [ 1 2 [ 3 [ 4 ] ] ])
# my_nested_show(STATUS ${A_LIST})

my_nested_is(A_LIST is_a_list)
EXPECT(is_a_list)

my_nested_unpack(A_LIST is_a_list)
EXPECT(is_a_list)
list(LENGTH A_LIST a_list_len)
EXPECT(${a_list_len} EQUAL 3)

message("=== table")

my_table_parse(RESULT
    INTEGER 1
    STRING "string"
    NODE [
        ITEM "item"
    ]
    EMPTY []
)

EXPECT(RESULT_INTEGER EQUAL 1)
EXPECT(RESULT_STRING STREQUAL "string")
# FIXME EXPECT(RESULT_NODE)
EXPECT(RESULT_NODE_ITEM STREQUAL "item")
EXPECT(NOT DEFINED RESULT_EMPTY)

macro(display_kv k)
    message("callback(${k} ${ARGN})")
endmacro()

my_table_parse(@display_kv
    INTEGER 1
    STRING "string"
    NODE [
        ITEM "item"
    ]
    EMPTY []
)

message("=== tree")
my_tree_template(TREE 
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

message("--- flat")
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

message("--- hierarchical")
my_reset(VARIABLES "^TREE_")
my_tree_parse(TREE [ ]
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

                COMPONENT "header" [
                    DISPLAY "Development headers."
                ]
            ]
        ]
    ]
)
my_show(STATUS VARIABLES TREE_)
