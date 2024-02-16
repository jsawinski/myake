include(My/Bits/Structure)

my_structure_parse(TEMPLATE DATA 
    FLAG:-
    PARAMETER:
    GROUP:- {
        ID:="group"
        ENTRY: {
            ID:
            DISPLAY:-{
                TEXT:
                ICON:
            }
            PARENT:
        }
        NODE: {
            ID:
            DISPLAY:-{
                TEXT:
                ICON:
                SELECTED:
            }
            PARENT:

            @ENTRY->PARENT
            @NODE->PARENT
        }
    }
)

my_structure_parse(DATA TEMPLATE DATA
    FLAG
    PARAMETER "parameter"
    GROUP {
        NODE "root" {
            ID 1
            DISPLAY {
                TEXT "Root"
            } 

            NODE "child" {
                ID 2
                DISPLAY {
                    TEXT "Child"
                }

                NODE "grandchild" {
                    ENTRY "item" {
                        ID 4
                        DISPLAY {
                            TEXT "Item"
                        }
                    }

                    ID 3
                    DISPLAY {
                        TEXT "Grandchild"
                    }
                }

                ENTRY "another" {
                    ID 5
                    DISPLAY {
                        TEXT "Another"
                    }
                }
            }
        }
        NODE "sibling" {
            ID 6
            DISPLAY {
                TEXT "Sibling"
            }
        }
    }
)

get_cmake_property(varlist VARIABLES)
foreach(var ${varlist})
    if("${var}" MATCHES "^DATA_")
        message("AAA ${var}=${${var}}")
    endif()
endforeach()

my_structure_parse(DATA TEMPLATE DATA REPLACE
    PARAMETER "other"
)

get_cmake_property(varlist VARIABLES)
foreach(var ${varlist})
    if("${var}" MATCHES "^DATA_")
        message("BBB ${var}=${${var}}")
    endif()
endforeach()

my_structure_parse(DATA TEMPLATE DATA RESET
    PARAMETER "empty"
)

get_cmake_property(varlist VARIABLES)
foreach(var ${varlist})
    if("${var}" MATCHES "^DATA_")
        message("CCC ${var}=${${var}}")
    endif()
endforeach()
