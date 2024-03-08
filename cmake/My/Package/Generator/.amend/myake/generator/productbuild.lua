-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/productbuild.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-productbuild-generator",
        level = 1,
        text = "CPack productbuild Generator",
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
                text = "productbuild"
            },
            doc.space:table {},
            doc.string:table {
                text = "CPack"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "(macOS)."
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-productbuild-generator",
            level = 2,
            text = "Variables specific to CPack productbuild generator",
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
                    text = "variable"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
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
                    text = "Mac"
                },
                doc.space:table {},
                doc.string:table {
                    text = "macOS"
                },
                doc.space:table {},
                doc.string:table {
                    text = "using"
                },
                doc.space:table {},
                doc.string:table {
                    text = "ProductBuild:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_COMMAND_PRODUCTBUILD"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Path"
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
                    doc.code:table {
                        text = "productbuild(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "product"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "archive"
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
                        text = "macOS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Mac"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "App"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Store."
                    },
                    doc.space:table {},
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
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-detection"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fails"
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
                        text = "it)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PRODUCTBUILD_IDENTIFIER"
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
                        text = "Set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unique"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(non-localized)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "product"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "identifier"
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
                        text = "associated"
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
                    doc.string:table {
                        text = "product"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(i.e.,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "com.kitware.cmake"
                    },
                    doc.string:table {
                        text = ")."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "product"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "names"
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
                        text = "appended"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PRODUCTBUILD_IDENTITY_NAME"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.8"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Adds"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "digital"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "signature"
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
                        text = "resulting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PRODUCTBUILD_KEYCHAIN_PATH"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.8"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specific"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "keychain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "search"
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
                        text = "signing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "identity."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_COMMAND_PKGBUILD"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Path"
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
                    doc.code:table {
                        text = "pkgbuild(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "macOS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "macOS."
                    },
                    doc.space:table {},
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
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-detection"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fails"
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
                        text = "it)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PKGBUILD_IDENTITY_NAME"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.8"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Adds"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "digital"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "signature"
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
                        text = "resulting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PKGBUILD_KEYCHAIN_PATH"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.8"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specific"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "keychain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "search"
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
                        text = "signing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "identity."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PREFLIGHT_<COMP>_SCRIPT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Full"
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
                        text = "a"
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
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "preinstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
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
                        text = "named"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<COMP>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<COMP>"
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
                        text = "uppercased"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "No"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "preinstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "added"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
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
                        text = "defined"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_POSTFLIGHT_<COMP>_SCRIPT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Full"
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
                        text = "a"
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
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "postinstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
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
                        text = "named"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<COMP>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<COMP>"
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
                        text = "uppercased"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "No"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "postinstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "added"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
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
                        text = "defined"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PRODUCTBUILD_RESOURCES_DIR"
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
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "productbuild"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "copies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(including"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "subdirectories)"
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
                    doc.code:table {
                        text = "Resources"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "done"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RESOURCE_FILE_WELCOME"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RESOURCE_FILE_README"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RESOURCE_FILE_LICENSE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "copied."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PRODUCTBUILD_DOMAINS"
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
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "option"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "more"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "granular"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "over"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "product"
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
                        text = "installed."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "domains"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "element"
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
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "form"
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
                        text = "added"
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
                        text = "productbuild"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Distribution"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "<domains enable_anywhere=\"true\" enable_currentUserHome=\"false\" enable_localSystem=\"true\"/>"
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
                        text = "values"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shown"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "above,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
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
                        text = "overridden"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PRODUCTBUILD_DOMAINS_ANYWHERE"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PRODUCTBUILD_DOMAINS_USER"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PRODUCTBUILD_DOMAINS_ROOT"
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
                        text = "CPACK_PRODUCTBUILD_DOMAINS_ANYWHERE"
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
                        text = "May"
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
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "enable_anywhere"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "attribute"
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
                    doc.code:table {
                        text = "domains"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "element"
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
                        text = "Distribution"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
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
                        text = "product"
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
                        text = "installed"
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
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "volume,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "including"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "non-system"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "volumes."
                    }
                },
                doc.paragraph:table {
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PRODUCTBUILD_DOMAINS"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "true"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "effect."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PRODUCTBUILD_DOMAINS_USER"
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
                        text = "May"
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
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "enable_currentUserHome"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "attribute"
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
                    doc.code:table {
                        text = "domains"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "element"
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
                        text = "Distribution"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
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
                        text = "product"
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
                        text = "installed"
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
                        text = "current"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "home"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Note"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installing"
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
                        text = "user\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "home"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory,"
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
                        text = "additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requirements"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "apply:"
                    }
                },
                doc.list:table {
                    style = "bullet",
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "The"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "installer"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "may"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "not"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "write"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "outside"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "user\'s"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "home"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "directory."
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "The"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "install"
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
                                text = "performed"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "as"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "current"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "user"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "rather"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "than"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "as"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "root"
                            },
                            doc.string:table {
                                text = "."
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "This"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "may"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "have"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "ramifications"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "for"
                            },
                            doc.space:table {},
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PREFLIGHT_<COMP>_SCRIPT"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "and"
                            },
                            doc.space:table {},
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_POSTFLIGHT_<COMP>_SCRIPT"
                            },
                            doc.string:table {
                                text = "."
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "Administrative"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "privileges"
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
                                text = "needed"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "to"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "perform"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "install."
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PRODUCTBUILD_DOMAINS"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "true"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "effect."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PRODUCTBUILD_DOMAINS_ROOT"
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
                        text = "May"
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
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "enable_localSystem"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "attribute"
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
                    doc.code:table {
                        text = "domains"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "element"
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
                        text = "Distribution"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "XML."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
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
                        text = "product"
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
                        text = "installed"
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
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory."
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
                        text = "normally"
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
                        text = "true"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unless"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "product"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "only"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed"
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
                        text = "user\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "home"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory."
                    }
                },
                doc.paragraph:table {
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PRODUCTBUILD_DOMAINS"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "true"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "effect."
                    }
                }
            },
            doc.header:table {
                id = "background-image",
                level = 3,
                text = "Background Image",
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "group"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "controls"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "background"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
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
                        text = "installer."
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Adds"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "background"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Distribution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "XML"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "specified."
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
                            text = "contains"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
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
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "Resources"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "directory."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_ALIGNMENT"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Adds"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "alignment"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "attribute"
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
                            text = "background"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Distribution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "XML."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Refer"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Apple"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "documentation"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "valid"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "values."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_SCALING"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Adds"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "scaling"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "attribute"
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
                            text = "background"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Distribution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "XML."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Refer"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Apple"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "documentation"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "valid"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "values."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_MIME_TYPE"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Adds"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "mime-type"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "attribute"
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
                            text = "background"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Distribution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "XML."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "contains"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "MIME"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "type"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_UTI"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Adds"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "uti"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "attribute"
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
                            text = "background"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Distribution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "XML."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "contains"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "UTI"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "type"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Adds"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "background"
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
                            text = "Dark"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Aqua"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "theme"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Distribution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "XML"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "specified."
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
                            text = "contains"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
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
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "Resources"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "directory."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_ALIGNMENT"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Does"
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
                            text = "as"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_ALIGNMENT"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
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
                            text = "dark"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "theme."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_SCALING"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Does"
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
                            text = "as"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_SCALING"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
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
                            text = "dark"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "theme."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_MIME_TYPE"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Does"
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
                            text = "as"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_MIME_TYPE"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
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
                            text = "dark"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "theme."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_UTI"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Does"
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
                            text = "as"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_PRODUCTBUILD_BACKGROUND_UTI"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
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
                            text = "dark"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "theme."
                        }
                    }
                },
                doc.header:table {
                    id = "distribution-xml-template",
                    level = 2,
                    text = "Distribution XML Template",
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPack"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "uses"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "template"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
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
                        doc.code:table {
                            text = "distribution.dist"
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
                            text = "internally"
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
                            text = "package"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generator."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Ordinarily,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "CMake"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "provides"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "template"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "projects"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "may"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "supply"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "their"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "own"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "placing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "called"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "CPack.distribution.dist.in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "one"
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
                            text = "directories"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "listed"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CMAKE_MODULE_PATH"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable."
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
                            text = "then"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "pick"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "up"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "project\'s"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "template"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "instead"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "using"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "its"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "own."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "distribution.dist"
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
                            text = "generated"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "performing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "substitutions"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "similar"
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
                        doc.code:table {
                            attributes = {
                                role = "command"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "configure_file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "command."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Any"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "when"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "CPack"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "runs"
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
                            text = "available"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "substitution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "using"
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
                        doc.code:table {
                            text = "@...@"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "form."
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
                            text = "variables"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "are"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "also"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "internally"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "made"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "available"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "substitution:"
                        }
                    },
                    doc.list:table {
                        style = "definition",
                        doc.item:table {
                            doc.code:table {
                                text = "CPACK_RESOURCE_FILE_LICENSE_NOPATH"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "Same"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "as"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_RESOURCE_FILE_LICENSE"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "except"
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
                                    text = "path."
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "The"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "named"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "file"
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
                                    text = "available"
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
                                    text = "same"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "directory"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "as"
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
                                doc.code:table {
                                    text = "distribution.dist"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "file."
                                }
                            }
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "CPACK_RESOURCE_FILE_README_NOPATH"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "Same"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "as"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_RESOURCE_FILE_README"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "except"
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
                                    text = "path."
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "The"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "named"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "file"
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
                                    text = "available"
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
                                    text = "same"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "directory"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "as"
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
                                doc.code:table {
                                    text = "distribution.dist"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "file."
                                }
                            }
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "CPACK_RESOURCE_FILE_WELCOME_NOPATH"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "Same"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "as"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_RESOURCE_FILE_WELCOME"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "except"
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
                                    text = "path."
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "The"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "named"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "file"
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
                                    text = "available"
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
                                    text = "same"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "directory"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "as"
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
                                doc.code:table {
                                    text = "distribution.dist"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "file."
                                }
                            }
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "CPACK_APPLE_PKG_INSTALLER_CONTENT"
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
                                    text = "This"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "contains"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "all"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "the"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "XML"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "elements"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "that"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "specify"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installer-wide"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "options"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(including"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "domain"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "details),"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "default"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "backgrounds"
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
                                    text = "choices"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "outline."
                                }
                            }
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "CPACK_PACKAGEMAKER_CHOICES"
                            },
                            doc.div:table {
                                classes = {
                                    "deprecated"
                                },
                                doc.paragraph:table {
                                    doc.string:table {
                                        text = "3.23"
                                    }
                                }
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "This"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "contains"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "only"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "the"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "XML"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "elements"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "that"
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
                                    text = "default"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "backgrounds"
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
                                    text = "choices"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "outline."
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "It"
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
                                    text = "include"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "the"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installer-wide"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "options"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "or"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "any"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "domain"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "details."
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Use"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    text = "CPACK_APPLE_PKG_INSTALLER_CONTENT"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "instead."
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
