include(My/Bits/Options)

my_options_parse(TEMPLATE DATA 
    FLAG:-
    PARAMETER:
    GROUP:- {
        PARAMETER:
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

my_options_parse(DATA TEMPLATE DATA
    FLAG
    PARAMETER "parameter"
    GROUP {
        PARAMETER "value"
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