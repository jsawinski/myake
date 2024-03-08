-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/wix.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-wix-generator",
        level = 1,
        text = "CPack WIX Generator",
        doc.paragraph:table {
            doc.string:table {
                text = "CPack"
            },
            doc.space:table {},
            doc.string:table {
                text = "WIX"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "specific"
            },
            doc.space:table {},
            doc.string:table {
                text = "options"
            }
        },
        doc.div:table {
            classes = {
                "versionadded"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "3.7"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Support"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "variable"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPACK_COMPONENT_<compName>_DISABLED"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variable."
                }
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-wix-generator",
            level = 2,
            text = "Variables specific to CPack WIX generator",
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "following"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "specific"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installers"
                },
                doc.space:table {},
                doc.string:table {
                    text = "built"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Windows"
                },
                doc.space:table {},
                doc.string:table {
                    text = "using"
                },
                doc.space:table {},
                doc.string:table {
                    text = "WiX."
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_UPGRADE_GUID"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Upgrade"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUID"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "Product/@UpgradeCode"
                    },
                    doc.string:table {
                        text = ")"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unless"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "It"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "constant"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "globally"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unique"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "identifier"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(GUID)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allow"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "replace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "existing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installations"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUID."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "You"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMakeLists.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "been"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "per"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "You"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUIDs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "did"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "yourself"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "belong"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "projects."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUID"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fixed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "length"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "syntax:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "(each"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "X"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "represents"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uppercase"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "hexadecimal"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "digit)"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_PRODUCT_GUID"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Product"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUID"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "Product/@Id"
                    },
                    doc.string:table {
                        text = ")"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unless"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Product"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Id"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "abort"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detects"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pre-existing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uses"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUID."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUID"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "syntax"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "described"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_WIX_UPGRADE_GUID."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_LICENSE_RTF"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RTF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "License"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "File"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RESOURCE_FILE_LICENSE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = ".rtf"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as-is."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RESOURCE_FILE_LICENSE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = ".txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "implicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "converted"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RTF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Generator."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "encoding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = ".txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UTF-8."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "With"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_WIX_LICENSE_RTF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "case"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RESOURCE_FILE_LICENSE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unsupported"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = ".txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "->"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = ".rtf"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "conversion"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "does"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "work"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expected."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_PRODUCT_ICON"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Icon"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shown"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "next"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "program"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Add/Remove"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "programs."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "icon"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "place"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "icon."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_UI_REF"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Id"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<UIRef>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "element"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "template."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "WixUI_InstallDir"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "case"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "been"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "defined"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "WixUI_FeatureTree"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "otherwise."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_UI_BANNER"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "bitmap"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "appear"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "top"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "than"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "welcome"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "completion"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dialogs."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "replace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "banner"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "493"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "58"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pixels."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_UI_DIALOG"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Background"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "bitmap"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "welcome"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "completion"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dialogs."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "replace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dialog"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "493"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "312"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pixels."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_PROGRAM_MENU_FOLDER"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Start"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "menu"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "folder"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "launcher."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "initialized"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_PACKAGE_NAME"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.16"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "If"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "this"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "."
                        },
                        doc.string:table {
                            text = ","
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "then"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "application"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "shortcuts"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "created"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "directly"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "start"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "menu"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "uninstaller"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "shortcut"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "omitted."
                        }
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_CULTURES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Language(s)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Languages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compiled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "into"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WixUI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "library."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "To"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "them,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "simply"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provide"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "culture."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "more"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "than"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "culture"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "identifier"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "comma"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "semicolon"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "delimited"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "first"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "found"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "You"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "find"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "supported"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "languages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at:"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://wixtoolset.org/docs/v3/wixui/wixui_localization/",
                        doc.string:table {
                            text = "https://wixtoolset.org/docs/v3/wixui/wixui_localization/"
                        }
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_TEMPLATE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Template"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generation"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "template"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "wxs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "further"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "customization"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "output"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "required."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "MSI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "template"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "included"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_PATCH_FILE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Optional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fragments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "inserted"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "into"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "sources."
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.5"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Support"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "listing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "multiple"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "patch"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "files."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "optional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "inject"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fragments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "into"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Patch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "understood"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "roughly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "follow"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RELAX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NG"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compact"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "schema:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = [[
start = CPackWiXPatch

CPackWiXPatch = element CPackWiXPatch { CPackWiXFragment* }

CPackWiXFragment = element CPackWiXFragment
{
    attribute Id { string },
    fragmentContent*
}

fragmentContent = element * - CPackWiXFragment
{
    (attribute * { text } | text | fragmentContent)*
}
]]
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Currently"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fragments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "injected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "into"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "most"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Component,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "File,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Feature"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "elements."
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.3"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "following"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "additional"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "special"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Ids"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "can"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "used:"
                        }
                    },
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    text = "#PRODUCT"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "the"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    text = "<Product>"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "element."
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    text = "#PRODUCTFEATURE"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "the"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "root"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    text = "<Feature>"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "element."
                                }
                            }
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.7"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Support"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "patching"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "arbitrary"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "<Feature>"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "elements."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.9"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Allow"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "setting"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "additional"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "attributes."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "illustrates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "how"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "works."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "creates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "element:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "<Component Id=\"CM_CP_applications.bin.my_libapp.exe\" Guid=\"*\"/>"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "patch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "inject"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Environment"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "element"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "into"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = [[
<CPackWiXPatch>
  <CPackWiXFragment Id="CM_CP_applications.bin.my_libapp.exe">
    <Environment Id="MyEnvironment" Action="set"
      Name="MyVariableName" Value="MyVariableValue"/>
  </CPackWiXFragment>
</CPackWiXPatch>
]]
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_EXTRA_SOURCES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "optional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(.wxs)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compiled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "linked."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "full"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "required."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_EXTRA_OBJECTS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "object"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "optional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "object"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(.wixobj)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and/or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "library"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(.wixlib)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "full"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "objects"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "required."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_EXTENSIONS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extensions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tools"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "light"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "candle."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_<TOOL>_EXTENSIONS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tool"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specific"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_WIX_EXTENSIONS."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<TOOL>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "either"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "LIGHT"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CANDLE."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_<TOOL>_EXTRA_FLAGS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pass"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "flags"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tool"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<TOOL>"
                    },
                    doc.string:table {
                        text = "."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "own"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "risk."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Future"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "versions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "flags"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "conflict"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "own"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "flags."
                    }
                },
                doc.paragraph:table {
                    doc.code:table {
                        text = "<TOOL>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "either"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "LIGHT"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CANDLE."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_CMAKE_PACKAGE_REGISTRY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "create"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "entry"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "windows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "registry"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "key"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "HKEY_LOCAL_MACHINE\Software\Kitware\CMake\Packages\<PackageName>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<PackageName>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Assuming"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allow"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "projects"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "find"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "command"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "find_package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_PROPERTY_<PROPERTY>"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.1"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provide"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Windows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "property"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<PROPERTY>"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contains"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "some"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "properties"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "customize"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "information"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "under"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"Programs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Features\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "known"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"Add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Remove"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Programs\")"
                    }
                },
                doc.list:table {
                    style = "bullet",
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "ARPCOMMENTS"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "-"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Comments"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "ARPHELPLINK"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "-"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Help"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "and"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "support"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "information"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "URL"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "ARPURLINFOABOUT"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "-"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "General"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "information"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "URL"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "ARPURLUPDATEINFO"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "-"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Update"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "information"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "URL"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "ARPHELPTELEPHONE"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "-"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Help"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "and"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "support"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "telephone"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "number"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "ARPSIZE"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "-"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Size"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "(in"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "kilobytes)"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "of"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "application"
                            }
                        }
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_ROOT_FEATURE_TITLE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.7"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Sets"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "feature"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "",
                        doc.string:table {
                            text = "CPACK_COMPONENT"
                        }
                    },
                    doc.string:table {
                        text = "<compName>_DISPLAY_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_ROOT_FEATURE_DESCRIPTION"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.7"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Sets"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "feature"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "",
                        doc.string:table {
                            text = "CPACK_COMPONENT"
                        }
                    },
                    doc.string:table {
                        text = "<compName>_DESCRIPTION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_SKIP_PROGRAM_FOLDER"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.7"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "true,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_PACKAGE_INSTALL_DIRECTORY"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directly."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "located"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relatively"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "below"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ProgramFiles"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ProgramFiles64."
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.div:table {
                        classes = {
                            "note"
                        },
                        doc.div:table {
                            classes = {
                                "title"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "Note"
                                }
                            }
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Installers"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "created"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "with"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "this"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "feature"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "do"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "not"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "take"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "differences"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "between"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "system"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "on"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "which"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "installer"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "created"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "and"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "system"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "on"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "which"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "installer"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "might"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "be"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "used"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "into"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "account."
                            }
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "It"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "therefore"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "possible"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "that"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "installer"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "e.g."
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "might"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "try"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "to"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "install"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "onto"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "a"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "drive"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "that"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "unavailable"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "unintended"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "a"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "path"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "that"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "does"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "not"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "follow"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "localization"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "convention"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "of"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "system"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "on"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "which"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "installation"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "performed."
                            }
                        }
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_ROOT_FOLDER_ID"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.9"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specification"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "custom"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "folder"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ID."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specific"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<64>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "token"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "folder"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "IDs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "come"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "32-bit"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "64-bit"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variants."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "In"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "32-bit"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "builds"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "token"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expand"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "empty"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "while"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "64-bit"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "builds"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expand"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "64"
                    },
                    doc.string:table {
                        text = "."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unset"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "ProgramFiles<64>Folder"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_ROOT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "optionally"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "custom"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Toolset"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unspecified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "try"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "locate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Toolset"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "via"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "environment"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "instead."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_CUSTOM_XMLNS"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.19"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "custom"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "namespace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declarations"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "necessary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "using"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extensions."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Each"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declaration"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "form"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name=url,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "plain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "namespace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "usual"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "xmlns:"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "url"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unquoted"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "namespace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "url."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "commonly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "known"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "schemata"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "found"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "here:"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://wixtoolset.org/docs/v3/xsd/",
                        doc.string:table {
                            text = "https://wixtoolset.org/docs/v3/xsd/"
                        }
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_SKIP_WIX_UI_EXTENSION"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.23"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "inclusion"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WixUIExtensions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "skipped,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "i.e."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "-ext \"WixUIExtension\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "line"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "included"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execution"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WiX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "light"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tool."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_WIX_ARCHITECTURE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.24"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "optionally"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "target"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "architecture"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "May"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "x64"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "arm64"
                    },
                    doc.string:table {
                        text = "."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unspecified,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "x64"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "x86"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            }
        }
    }
}
