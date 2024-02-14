include(My/Bits/Options)

my_options_parse(TEMPLATE __DATA__ 
    COMPONENT: {
        NAME:
        GROUP:
    }
    GROUP: {
        NAME:="undefined"
        CONFIG:*
        PARENT_GROUP:

        @GROUP->PARENT_GROUP
        @COMPONENT->GROUP
    }
)

my_options_parse(DATA TEMPLATE __DATA__
    COMPONENT "development" {
        
    }
)