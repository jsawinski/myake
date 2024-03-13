-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/rpm.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-rpm-generator",
        level = 1,
        text = "CPack RPM Generator",
        doc.paragraph:table {
            doc.string:table {
                text = "The"
            },
            doc.space:table {},
            doc.string:table {
                text = "built"
            },
            doc.space:table {},
            doc.string:table {
                text = "in"
            },
            doc.space:table {},
            doc.string:table {
                text = "(binary)"
            },
            doc.space:table {},
            doc.string:table {
                text = "CPack"
            },
            doc.space:table {},
            doc.string:table {
                text = "RPM"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "(Unix"
            },
            doc.space:table {},
            doc.string:table {
                text = "only)"
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-rpm-generator",
            level = 2,
            text = "Variables specific to CPack RPM generator",
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
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
                    text = "create"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
                },
                doc.space:table {},
                doc.string:table {
                    text = "using"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "module"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPack"
                },
                doc.string:table {
                    text = "."
                },
                doc.space:table {},
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "module"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "thus"
                },
                doc.space:table {},
                doc.string:table {
                    text = "it"
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
                doc.code:table {
                    attributes = {
                        role = "variable"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "!CPACK_XXX"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
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
                doc.code:table {
                    attributes = {
                        role = "module"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPack"
                },
                doc.string:table {
                    text = "."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "has"
                },
                doc.space:table {},
                doc.string:table {
                    text = "specific"
                },
                doc.space:table {},
                doc.string:table {
                    text = "features"
                },
                doc.space:table {},
                doc.string:table {
                    text = "which"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "controlled"
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
                    text = "specifics"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "variable"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "!CPACK_RPM_XXX"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables."
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
                    text = "!CPACK_RPM_<COMPONENT>_XXXX"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
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
                    text = "in"
                },
                doc.space:table {},
                doc.string:table {
                    text = "order"
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
                doc.emphasis:table {
                    style = "strong",
                    doc.string:table {
                        text = "component-specific"
                    }
                },
                doc.space:table {},
                doc.string:table {
                    text = "values."
                },
                doc.space:table {},
                doc.string:table {
                    text = "Note"
                },
                doc.space:table {},
                doc.string:table {
                    text = "however"
                },
                doc.space:table {},
                doc.string:table {
                    text = "that"
                },
                doc.space:table {},
                doc.code:table {
                    text = "<COMPONENT>"
                },
                doc.space:table {},
                doc.string:table {
                    text = "refers"
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
                doc.emphasis:table {
                    style = "strong",
                    doc.string:table {
                        text = "grouping"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    }
                },
                doc.space:table {},
                doc.string:table {
                    text = "written"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.string:table {
                    text = "upper"
                },
                doc.space:table {},
                doc.string:table {
                    text = "case."
                },
                doc.space:table {},
                doc.string:table {
                    text = "It"
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
                    text = "either"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "component"
                },
                doc.space:table {},
                doc.string:table {
                    text = "name"
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
                    text = "component"
                },
                doc.space:table {},
                doc.string:table {
                    text = "GROUP"
                },
                doc.space:table {},
                doc.string:table {
                    text = "name."
                },
                doc.space:table {},
                doc.string:table {
                    text = "Usually,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "those"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "correspond"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "spec"
                },
                doc.space:table {},
                doc.string:table {
                    text = "file"
                },
                doc.space:table {},
                doc.string:table {
                    text = "entities."
                },
                doc.space:table {},
                doc.string:table {
                    text = "One"
                },
                doc.space:table {},
                doc.string:table {
                    text = "may"
                },
                doc.space:table {},
                doc.string:table {
                    text = "find"
                },
                doc.space:table {},
                doc.string:table {
                    text = "information"
                },
                doc.space:table {},
                doc.string:table {
                    text = "about"
                },
                doc.space:table {},
                doc.string:table {
                    text = "spec"
                },
                doc.space:table {},
                doc.string:table {
                    text = "files"
                },
                doc.space:table {},
                doc.string:table {
                    text = "here"
                },
                doc.space:table {},
                doc.link:table {
                    target = "https://rpm.org/documentation",
                    doc.string:table {
                        text = "https://rpm.org/documentation"
                    }
                },
                doc.string:table {
                    text = "."
                }
            },
            doc.div:table {
                classes = {
                    "versionchanged"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "3.6"
                    }
                },
                doc.paragraph:table {
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "<COMPONENT>"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "part"
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
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "preferred"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upper"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "case"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "named"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "foo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_RPM_FOO_XXXX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_<COMPONENT>_XXXX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "purposes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "back"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compatibility"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(CMake/CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "3.5"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lower)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "support"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cased"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "fOo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "would"
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
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_RPM_fOo_XXXX"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "still"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "supported"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "defined"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "older"
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
                        text = "CMake/CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
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
                        text = "guaranteed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
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
                        text = "added"
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
                        text = "future."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "sake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "back"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compatibility"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cased"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upper"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cased"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "versions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "both"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "present."
                    }
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Here"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "some"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "wiki"
                },
                doc.space:table {},
                doc.string:table {
                    text = "resources"
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
                    text = "here"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "historic"
                },
                doc.space:table {},
                doc.string:table {
                    text = "reasons"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "no"
                },
                doc.space:table {},
                doc.string:table {
                    text = "longer"
                },
                doc.space:table {},
                doc.string:table {
                    text = "maintained"
                },
                doc.space:table {},
                doc.string:table {
                    text = "but"
                },
                doc.space:table {},
                doc.string:table {
                    text = "may"
                },
                doc.space:table {},
                doc.string:table {
                    text = "still"
                },
                doc.space:table {},
                doc.string:table {
                    text = "prove"
                },
                doc.space:table {},
                doc.string:table {
                    text = "useful:"
                }
            },
            doc.block:table {
                style = "quote",
                doc.list:table {
                    style = "bullet",
                    doc.item:table {
                        doc.plain:table {
                            doc.link:table {
                                target = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/Configuration",
                                doc.string:table {
                                    text = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/Configuration"
                                }
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.link:table {
                                target = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/PackageGenerators#rpm-unix-only",
                                doc.string:table {
                                    text = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/PackageGenerators#rpm-unix-only"
                                }
                            }
                        }
                    }
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "List"
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
                    text = "RPM"
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
                    text = "variables:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_COMPONENT_INSTALL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Enable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "OFF"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enabled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "ON"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "multiple"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "By"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "single"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "containing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
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
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_SUMMARY"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_SUMMARY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "summary."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
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
                            text = "3.2"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Per-component"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_RPM_<component>_PACKAGE_SUMMARY"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
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
                        text = "CPACK_RPM_PACKAGE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PACKAGE_NAME"
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
                            text = "3.5"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Per-component"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_RPM_<component>_PACKAGE_NAME"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
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
                        text = "CPACK_RPM_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_FILE_NAME"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "<CPACK_PACKAGE_FILE_NAME>[-<component>].rpm"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "with"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "spaces"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "replaced"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "by"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "\'-\'"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "RPM-DEFAULT"
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
                    doc.code:table {
                        text = "rpmbuild"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tool"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "itself."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Alternatively"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "end"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suffix."
                    }
                },
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
                            text = "By"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "using"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "user"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "provided"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "spec"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "rpm"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "macro"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "extensions"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "such"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generating"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "debuginfo"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "packages"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "simply"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "using"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "multiple"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "components"
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
                            text = "rpm"
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
                            text = "generated,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "either"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "from"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "single"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "spec"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "from"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "multiple"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "spec"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "files"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "(each"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "component"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "execution"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "produces"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "its"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "own"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "spec"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file)."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "In"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "such"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "cases"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "duplicate"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "names"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "may"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "occur"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "result"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
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
                            text = "setting"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "spec"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "content"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "structure."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Duplicate"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "files"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "get"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "overwritten"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
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
                            text = "up"
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
                            text = "packager"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
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
                            text = "variables"
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
                            text = "manner"
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
                            text = "prevent"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "such"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "errors."
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
                        text = "CPACK_RPM_MAIN_COMPONENT"
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
                        text = "Main"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
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
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suffix."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "group"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "group"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
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
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suffix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_EPOCH"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.10"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "epoch"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Optional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "number"
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
                        text = "incremented"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "changing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "versioning"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "schemas"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fixing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "mistakes"
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
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "numbers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "older"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_VERSION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PACKAGE_VERSION"
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
                        text = "CPACK_RPM_PACKAGE_ARCHITECTURE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_ARCHITECTURE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "architecture."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Native"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "architecture"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "output"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "by"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "uname -m"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "noarch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "know"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "building"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "noarch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
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
                            text = "Per-component"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_RPM_<component>_PACKAGE_ARCHITECTURE"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
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
                        text = "CPACK_RPM_PACKAGE_RELEASE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "release."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "1"
                            }
                        }
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
                        text = "numbering"
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
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "itself,"
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
                    doc.string:table {
                        text = "version"
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
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "content"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(see"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_PACKAGE_VERSION"
                    },
                    doc.string:table {
                        text = ")."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "One"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "change"
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
                        text = "value"
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
                        text = "previous"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "was"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "buggy"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and/or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "want"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "put"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "here"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fancy"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Linux"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "distro"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specific"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "numbering."
                    }
                }
            },
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
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "goes"
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
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Release:"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Some"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "distros"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Fedora,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CentOS)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "require"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "1%{?dist}"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "just"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "number."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%{?dist}"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "part"
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
                        text = "added"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "setting"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_PACKAGE_RELEASE_DIST"
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
                        text = "CPACK_RPM_PACKAGE_RELEASE_DIST"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dist"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tag"
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
                        text = "added"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Release:"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "OFF"
                            }
                        }
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
                        text = "reported"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%{dist}"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tag"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
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
                        text = "distribution"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "empty"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%{dist}"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "macro"
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
                        text = "set."
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
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Release:"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
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
                        text = "${CPACK_RPM_PACKAGE_RELEASE}%{?dist}"
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
                        text = "CPACK_RPM_PACKAGE_LICENSE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "policy."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "\"unknown\""
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
                        text = "CPACK_RPM_PACKAGE_GROUP"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_GROUP"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "group."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "\"unknown\""
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
                            text = "3.5"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Per-component"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_RPM_<component>_PACKAGE_GROUP"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
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
                        text = "CPACK_RPM_PACKAGE_VENDOR"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "vendor."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "CPACK_PACKAGE_VENDOR"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "if"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "set"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "\"unknown\""
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
                        text = "CPACK_RPM_PACKAGE_URL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_URL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "projects"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CMAKE_PROJECT_HOMEPAGE_URL"
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
                            text = "3.12"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CMAKE_PROJECT_HOMEPAGE_URL"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable."
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
                        text = "CPACK_RPM_PACKAGE_DESCRIPTION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_DESCRIPTION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_COMPONENT_<compName>_DESCRIPTION"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installers"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "only)"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "if"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set,"
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_PACKAGE_DESCRIPTION_FILE"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "if"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set,"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "or"
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    text = "no package description available"
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
                            text = "3.2"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Per-component"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_RPM_<component>_PACKAGE_DESCRIPTION"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
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
                        text = "CPACK_RPM_COMPRESSION_TYPE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "type."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "(system"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "default)"
                            }
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
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "type"
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
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "some"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Linux"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "distribution"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "now"
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
                        text = "lzma"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "xz"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "whereas"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "older"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cannot"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "such"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Using"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enforce"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "type"
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
                        text = "used."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Possible"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "values"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are:"
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "definition",
                        doc.item:table {
                            doc.code:table {
                                text = "lzma"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "Lempel–Ziv–Markov"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "chain"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "algorithm"
                                }
                            }
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "xz"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "XZ"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Utils"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "compression"
                                }
                            }
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "bzip2"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "bzip2"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Burrows–Wheeler"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "algorithm"
                                }
                            }
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "gzip"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "GNU"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Gzip"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "compression"
                                }
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
                        text = "CPACK_RPM_PACKAGE_AUTOREQ"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_AUTOREQ"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "autoreq"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "enable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "1"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "yes"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "disable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "0"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "no"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependency"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detection."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
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
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list."
                    }
                },
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
                            text = "By"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "automatic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "dependency"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "detection"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "enabled"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "rpm"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generator."
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
                        text = "CPACK_RPM_PACKAGE_AUTOPROV"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_AUTOPROV"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "autoprov"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "enable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "1"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "yes"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "disable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "0"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "no"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "listing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
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
                        text = "provided"
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
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
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
                        text = "provides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list."
                    }
                },
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
                            text = "By"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "automatic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "provides"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "detection"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "enabled"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "rpm"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generator."
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
                        text = "CPACK_RPM_PACKAGE_AUTOREQPROV"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_AUTOREQPROV"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "autoreqprov"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enables/disables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "autoreq"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "autoprov"
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
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "time."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_PACKAGE_AUTOREQ"
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
                        text = "CPACK_RPM_PACKAGE_AUTOPROV"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "more"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details."
                    }
                },
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
                            text = "By"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "automatic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "detection"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "enabled"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "rpm."
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
                        text = "CPACK_RPM_PACKAGE_REQUIRES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_REQUIRES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(requires)."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_PACKAGE_REQUIRES \"python >= 2.5.0, cmake >= 2.8\")"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "required"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
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
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "could"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "printed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "rpm -qp --requires file.rpm"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_CONFLICTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_CONFLICTS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "conflicts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "negative"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(conflicts)."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_PACKAGE_CONFLICTS \"libxml2\")"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "conflicting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
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
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "could"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "printed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "rpm -qp --conflicts file.rpm"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_REQUIRES_PRE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_REQUIRES_PRE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.2"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires(pre)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "preinstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(requires(pre))."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_PACKAGE_REQUIRES_PRE \"shadow-utils, initscripts\")"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_REQUIRES_POST"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_REQUIRES_POST"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.2"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires(post)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "postinstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(requires(post))."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_PACKAGE_REQUIRES_POST \"shadow-utils, initscripts\")"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_REQUIRES_POSTUN"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_REQUIRES_POSTUN"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.2"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires(postun)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "postuninstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(requires(postun))."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_PACKAGE_REQUIRES_POSTUN \"shadow-utils, initscripts\")"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_REQUIRES_PREUN"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_REQUIRES_PREUN"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.2"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires(preun)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "preuninstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(requires(preun))."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_PACKAGE_REQUIRES_PREUN \"shadow-utils, initscripts\")"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_SUGGESTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_SUGGESTS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suggest"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "weak"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(suggests)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "rpmbuild"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "doesn\'t"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "support"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Suggests"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tag,"
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
                        text = "emit"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "warning"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ignore"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_PROVIDES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_PROVIDES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(provides)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
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
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "could"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "printed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "rpm -qp --provides file.rpm"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_OBSOLETES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_PACKAGE_OBSOLETES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "obsoletes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
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
                        text = "obsoleted"
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
                        text = "one."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_RELOCATABLE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "CPACK_PACKAGE_RELOCATABLE"
                            }
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
                        text = "TRUE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ON,"
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
                        text = "RPM"
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
                        text = "try"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
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
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "using:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "rpm --prefix or --relocate"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "order"
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
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "alternate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "place"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "see"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm(8)."
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
                        text = "currently"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fail"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_SET_DESTDIR"
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
                        text = "ON"
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_SET_DESTDIR"
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "get"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "warning"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "message"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "there"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "absolute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you\'ll"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "get"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unexpected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "behavior."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_SPEC_INSTALL_POST"
                    }
                },
                doc.div:table {
                    classes = {
                        "deprecated"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "2.8.12"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Use"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_RPM_SPEC_MORE_DEFINE"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "instead."
                        }
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "__spec_install_post"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "section"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "within"
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
                        text = "spec"
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
                        text = "affects"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "step"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "creation,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "adding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "operations"
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
                        text = "performed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_POST_INSTALL_SCRIPT_FILE"
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
                        text = "CPACK_RPM_SPEC_MORE_DEFINE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extended"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "definitions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lines."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%define"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lines"
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
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "An"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prevent"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "stripping"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "note"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "disable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "post"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "processing):"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_SPEC_MORE_DEFINE \"%define __spec_install_post /bin/true\")"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_DEBUG"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Toggle"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "output."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "invoking"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cpack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "order"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "trace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "information"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "run."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "launch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "like"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "cpack -D CPACK_RPM_PACKAGE_DEBUG=1 -G RPM"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_USER_BINARY_SPECFILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<componentName>_USER_BINARY_SPECFILE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
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
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "order"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "USER"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
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
                        text = "be"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
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
                        text = "generating"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
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
                        text = "processed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configure_file("
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "@ONLY)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_GENERATE_USER_BINARY_SPECFILE_TEMPLATE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "template."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
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
                        text = "generate"
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
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "USER"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "stop"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "error."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "launch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "like"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "cpack -D CPACK_RPM_GENERATE_USER_BINARY_SPECFILE_TEMPLATE=1 -G RPM"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "order"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "hand-craft"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "own"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
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
                        text = "used"
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
                        text = "CPACK_RPM_USER_BINARY_SPECFILE"
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
                        text = "CPACK_RPM_PRE_INSTALL_SCRIPT_FILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_PRE_UNINSTALL_SCRIPT_FILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_PRE_TRANS_SCRIPT_FILE"
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
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "containing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pre"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install/uninstall/transaction"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "embed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pre"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation/uninstallation/transaction"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
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
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "referred"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "both)"
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
                        text = "read"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "put"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%pre"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%preun"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "section"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_COMPONENT_INSTALL"
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
                        text = "ON"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install/uninstall/transaction"
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
                        text = "each"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
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
                        text = "!CPACK_RPM_<COMPONENT>_PRE_INSTALL_SCRIPT_FILE"
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
                        text = "!CPACK_RPM_<COMPONENT>_PRE_UNINSTALL_SCRIPT_FILE"
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
                        text = "!CPACK_RPM_<COMPONENT>_PRE_TRANS_SCRIPT_FILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "One"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "verify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scriptlet"
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
                        text = "included"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "rpm -qp --scripts  package.rpm"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.18"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_RPM_PRE_TRANS_SCRIPT_FILE"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable."
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
                        text = "CPACK_RPM_POST_INSTALL_SCRIPT_FILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_POST_UNINSTALL_SCRIPT_FILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_POST_TRANS_SCRIPT_FILE"
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
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "containing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "post"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install/uninstall/transaction"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "embed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "post"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation/uninstallation/transaction"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
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
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "referred"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "both)"
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
                        text = "read"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "put"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%post"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%postun"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "section."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_COMPONENT_INSTALL"
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
                        text = "ON"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install/uninstall/transaction"
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
                        text = "each"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
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
                        text = "!CPACK_RPM_<COMPONENT>_POST_INSTALL_SCRIPT_FILE"
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
                        text = "!CPACK_RPM_<COMPONENT>_POST_UNINSTALL_SCRIPT_FILE"
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
                        text = "!CPACK_RPM_<COMPONENT>_POST_TRANS_SCRIPT_FILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "One"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "verify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scriptlet"
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
                        text = "included"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "rpm -qp --scripts  package.rpm"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.18"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_RPM_POST_TRANS_SCRIPT_FILE"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable."
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
                        text = "CPACK_RPM_USER_FILELIST"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<COMPONENT>_USER_FILELIST"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%(<directive>)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "line"
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
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Like"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%config(noreplace)"
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
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directive"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "section."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Since"
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
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generating"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
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
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_RPM_<COMPONENT>_USER_FILELIST"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
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
                        text = "removed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
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
                        text = "list."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "referring"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories"
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
                        text = "add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "trailing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "slash."
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.8"
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
                            text = "have"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "multiple"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "directives"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "per"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "line,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "%attr(600,root,root) %config(noreplace)"
                        },
                        doc.string:table {
                            text = "."
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
                        text = "CPACK_RPM_CHANGELOG_FILE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "changelog"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "embed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "changelog"
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
                        text = "spec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "referred"
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
                        text = "read"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "put"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "%changelog"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "section."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
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
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "excluded."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.list:table {
                            style = "definition",
                            doc.item:table {
                                doc.list:table {
                                    style = "bullet",
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/etc"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/etc/init.d"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/bin"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/include"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/lib"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/libx32"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/lib64"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/share"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/share/aclocal"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/share/doc"
                                            }
                                        }
                                    }
                                }
                            }
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
                        text = "exclude"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-generated"
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
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "discovered"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "reasonable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "values"
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
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                        text = "defined"
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
                        text = "user"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
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
                        text = "NOT"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
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
                        text = "path."
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
                        text = "want"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "some"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable."
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.10"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Added"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "/usr/share/aclocal"
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
                            text = "default"
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
                            text = "excludes."
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
                        text = "CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "additional"
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
                        text = "path"
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
                        text = "excluded."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "more"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "exclude"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "initial"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
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
                        text = "excluded"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST"
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
                        text = "CPACK_RPM_RELOCATION_PATHS"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.2"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "per"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contains"
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
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relative"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefixed"
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PACKAGING_INSTALL_PREFIX"
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
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
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
                        text = "provided."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Variable"
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
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "based"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "content"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "different"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dir"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "documentation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dir"
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
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "time."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Only"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefixes"
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
                        text = "required"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "certain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
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
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "-"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "least"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file/directory/symbolic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "link"
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
                        text = "CPACK_RPM_RELOCATION_PATHS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix"
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
                        text = "certain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocation"
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
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "added."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Package"
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
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "there"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files/directories/symbolic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "links"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
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
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "locations."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "either"
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
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files/directories/symbolic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "links"
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
                        text = "outside"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "print"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "out"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "command"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "AUTHOR_WARNING <message>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
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
                        text = "partially"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.2"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Per"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PACKAGING_INSTALL_PREFIX"
                            }
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "per"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PACKAGING_INSTALL_PREFIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_NO_INSTALL_PREFIX_RELOCATION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_NO_<COMPONENT>_INSTALL_PREFIX_RELOCATION"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.3"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Removal"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
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
                        text = "prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PACKAGING_INSTALL_PREFIX"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
                            },
                            doc.space:table {},
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "are"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "treated"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "as"
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
                                text = "relocation"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "paths"
                            }
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
                        text = "remove"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PACKAGING_INSTALL_PREFIX"
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
                        text = "CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_ADDITIONAL_MAN_DIRS"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.3"
                        }
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.list:table {
                            style = "definition",
                            doc.item:table {
                                doc.list:table {
                                    style = "bullet",
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/man/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/man/.*/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/info.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/share/man/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/share/man/.*/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/share/info.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/kerberos/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/X11R6/man/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/lib/perl5/man/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/share/doc/.*/man/man.*"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/lib/.*/man/man.*"
                                            }
                                        }
                                    }
                                }
                            }
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "man"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dirs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "could"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "potentially"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compressed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "brp-compress"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "macro."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "content"
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
                        text = "regular"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expressions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "point"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "containing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "man"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "man"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directly."
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "order"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compress"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "man"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pages"
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
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "present"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "brp-compress"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "brp-compress"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
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
                        text = "added"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration"
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
                        text = "operating"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "system."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEFAULT_USER"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<compName>_DEFAULT_USER"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ownership"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "content"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "root"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Value"
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
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UID."
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
                    doc.code:table {
                        text = "<compName>"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upper-case."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEFAULT_GROUP"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<compName>_DEFAULT_GROUP"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "group"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ownership"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "content"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "root"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Value"
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
                        text = "group"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GID."
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
                    doc.code:table {
                        text = "<compName>"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upper-case."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEFAULT_FILE_PERMISSIONS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<compName>_DEFAULT_FILE_PERMISSIONS"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
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
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "(system"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "default)"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Accepted"
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
                        text = "lists"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "PERMISSIONS."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Valid"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are:"
                    }
                },
                doc.list:table {
                    style = "bullet",
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "OWNER_READ"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "OWNER_WRITE"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "OWNER_EXECUTE"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "GROUP_READ"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "GROUP_WRITE"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "GROUP_EXECUTE"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "WORLD_READ"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "WORLD_WRITE"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.code:table {
                                text = "WORLD_EXECUTE"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Note"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<compName>"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upper-case."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEFAULT_DIR_PERMISSIONS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<compName>_DEFAULT_DIR_PERMISSIONS"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
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
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "(system"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "default)"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Accepted"
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
                        text = "lists"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "PERMISSIONS."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Valid"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
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
                        text = "CPACK_RPM_DEFAULT_FILE_PERMISSIONS"
                    },
                    doc.string:table {
                        text = "."
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
                    doc.code:table {
                        text = "<compName>"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upper-case."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_INSTALL_WITH_EXEC"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.11"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "force"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "programs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "(system"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "default)"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Force"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "owner,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "group"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "world"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "programs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
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
                        text = "creating"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "valid"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "systems"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "such"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
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
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    }
                }
            },
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
                        text = "Programs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "libraries"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ignored"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "separation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "symbols"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    }
                }
            }
        },
        doc.header:table {
            id = "packaging-of-symbolic-links",
            level = 2,
            text = "Packaging of Symbolic Links",
            doc.div:table {
                classes = {
                    "versionadded"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "3.3"
                    }
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "supports"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "symbolic"
                },
                doc.space:table {},
                doc.string:table {
                    text = "links:"
                }
            },
            doc.block:table {
                style = "code",
                doc.string:table {
                    text = [[
execute_process(COMMAND ${CMAKE_COMMAND}
  -E create_symlink <relative_path_location> <symlink_name>)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/<symlink_name>
  DESTINATION <symlink_location> COMPONENT libraries)
]]
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Symbolic"
                },
                doc.space:table {},
                doc.string:table {
                    text = "links"
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
                    text = "optimized"
                },
                doc.space:table {},
                doc.string:table {
                    text = "(paths"
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
                    text = "shortened"
                },
                doc.space:table {},
                doc.string:table {
                    text = "if"
                },
                doc.space:table {},
                doc.string:table {
                    text = "possible)"
                },
                doc.space:table {},
                doc.string:table {
                    text = "before"
                },
                doc.space:table {},
                doc.string:table {
                    text = "being"
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
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "if"
                },
                doc.space:table {},
                doc.string:table {
                    text = "multiple"
                },
                doc.space:table {},
                doc.string:table {
                    text = "relocation"
                },
                doc.space:table {},
                doc.string:table {
                    text = "paths"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "detected,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "post"
                },
                doc.space:table {},
                doc.string:table {
                    text = "install"
                },
                doc.space:table {},
                doc.string:table {
                    text = "symlink"
                },
                doc.space:table {},
                doc.string:table {
                    text = "relocation"
                },
                doc.space:table {},
                doc.string:table {
                    text = "script"
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
                    text = "generated."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Symbolic"
                },
                doc.space:table {},
                doc.string:table {
                    text = "links"
                },
                doc.space:table {},
                doc.string:table {
                    text = "may"
                },
                doc.space:table {},
                doc.string:table {
                    text = "point"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "locations"
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
                    text = "not"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaged"
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
                    text = "same"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "(either"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "different"
                },
                doc.space:table {},
                doc.string:table {
                    text = "component"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "even"
                },
                doc.space:table {},
                doc.string:table {
                    text = "not"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaged"
                },
                doc.space:table {},
                doc.string:table {
                    text = "at"
                },
                doc.space:table {},
                doc.string:table {
                    text = "all)"
                },
                doc.space:table {},
                doc.string:table {
                    text = "but"
                },
                doc.space:table {},
                doc.string:table {
                    text = "those"
                },
                doc.space:table {},
                doc.string:table {
                    text = "locations"
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
                    text = "treated"
                },
                doc.space:table {},
                doc.string:table {
                    text = "as"
                },
                doc.space:table {},
                doc.string:table {
                    text = "if"
                },
                doc.space:table {},
                doc.string:table {
                    text = "they"
                },
                doc.space:table {},
                doc.string:table {
                    text = "were"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "part"
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
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "while"
                },
                doc.space:table {},
                doc.string:table {
                    text = "determining"
                },
                doc.space:table {},
                doc.string:table {
                    text = "if"
                },
                doc.space:table {},
                doc.string:table {
                    text = "symlink"
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
                    text = "either"
                },
                doc.space:table {},
                doc.string:table {
                    text = "created"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "present"
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
                    text = "post"
                },
                doc.space:table {},
                doc.string:table {
                    text = "install"
                },
                doc.space:table {},
                doc.string:table {
                    text = "script"
                },
                doc.space:table {},
                doc.string:table {
                    text = "-"
                },
                doc.space:table {},
                doc.string:table {
                    text = "depending"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on"
                },
                doc.space:table {},
                doc.string:table {
                    text = "relocation"
                },
                doc.space:table {},
                doc.string:table {
                    text = "paths."
                }
            },
            doc.div:table {
                classes = {
                    "versionchanged"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "3.6"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Symbolic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "links"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "point"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "locations"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "outside"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "produce"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "warning"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "treated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "non"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relocatable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permanent"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "symbolic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "links."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Previous"
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
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "produced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "error"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "case."
                    }
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Currently"
                },
                doc.space:table {},
                doc.string:table {
                    text = "there"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "few"
                },
                doc.space:table {},
                doc.string:table {
                    text = "limitations"
                },
                doc.space:table {},
                doc.string:table {
                    text = "though:"
                }
            },
            doc.list:table {
                style = "bullet",
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "For"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "component"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "based"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "packaging"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "component"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "interdependency"
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
                            text = "checked"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "when"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "processing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "symbolic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "links."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Symbolic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "links"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "pointing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "content"
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
                            text = "different"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "component"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "are"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "treated"
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
                            text = "way"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "pointing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "location"
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
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "packaged."
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "Symbolic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "links"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "pointing"
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
                            text = "location"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "through"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "one"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "more"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "intermediate"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "symbolic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "links"
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
                            text = "handled"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "differently"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "-"
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
                            text = "intermediate"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "symbolic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "link(s)"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "also"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "on"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "relocatable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "relocating"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "it"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "during"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installation"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "may"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "cause"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "initial"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "symbolic"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "link"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "point"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "invalid"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "location."
                        }
                    }
                }
            }
        },
        doc.header:table {
            id = "packaging-of-debug-information",
            level = 2,
            text = "Packaging of debug information",
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
                    text = "Debuginfo"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
                },
                doc.space:table {},
                doc.string:table {
                    text = "contain"
                },
                doc.space:table {},
                doc.string:table {
                    text = "debug"
                },
                doc.space:table {},
                doc.string:table {
                    text = "symbols"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "sources"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "debugging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaged"
                },
                doc.space:table {},
                doc.string:table {
                    text = "binaries."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Debuginfo"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "has"
                },
                doc.space:table {},
                doc.string:table {
                    text = "its"
                },
                doc.space:table {},
                doc.string:table {
                    text = "own"
                },
                doc.space:table {},
                doc.string:table {
                    text = "set"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEBUGINFO_PACKAGE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_DEBUGINFO_PACKAGE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Enable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package(s)."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "OFF"
                            }
                        }
                    }
                }
            },
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
                        text = "Binaries"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "symbols"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "either"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "RelWithDebInfo"
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
                        text = "CMAKE_BUILD_TYPE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Additionally,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_STRIP_FILES"
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
                        text = "files"
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
                        text = "stripped"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "they"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "get"
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
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
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
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "symbols"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
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
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "get"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "built."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Do"
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
                        text = "CPACK_STRIP_FILES"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
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
                        text = "Packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "permissions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "symbols"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cause"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "termination."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_BUILD_SOURCE_DIRS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Provides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "locations"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
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
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binaries"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "built."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "if"
                            },
                            doc.space:table {},
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_RPM_DEBUGINFO_PACKAGE"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "set"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                }
            },
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
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_BUILD_SOURCE_DIRS"
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
                        text = "by"
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
                    doc.string:table {
                        text = "point"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CMAKE_SOURCE_DIR"
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
                        text = "CMAKE_BINARY_DIR"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths."
                    }
                }
            },
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
                        text = "Sources"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefixes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "fall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "under"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
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
                        text = "CPACK_BUILD_SOURCE_DIRS"
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
                        text = "present"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
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
                        text = "CPACK_RPM_BUILD_SOURCE_DIRS_PREFIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_BUILD_SOURCE_DIRS_PREFIX"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "sources"
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
                        text = "placed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "if"
                            },
                            doc.space:table {},
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_RPM_DEBUGINFO_PACKAGE"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "set"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "/usr/src/debug/${CPACK_PACKAGE_FILE_NAME}"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "and"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "for"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "component"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "packaging"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "/usr/src/debug/${CPACK_PACKAGE_FILE_NAME}-<component>"
                            }
                        }
                    }
                }
            },
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
                        text = "Each"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "additionally"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suffixed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "src_<index>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "index"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "index"
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
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_BUILD_SOURCE_DIRS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "produces"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "${CPACK_RPM_BUILD_SOURCE_DIRS_PREFIX}/src_<index>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "replacement"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Limitation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "replaced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "part"
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
                        text = "shorter"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "equal"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "length"
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
                        text = "length"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "replacement."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
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
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "case"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "either"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_BUILD_SOURCE_DIRS_PREFIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
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
                        text = "shorter"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories"
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
                        text = "placed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "longer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEBUGINFO_EXCLUDE_DIRS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "containing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "sources"
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
                        text = "excluded"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.list:table {
                            style = "definition",
                            doc.item:table {
                                doc.list:table {
                                    style = "bullet",
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/src"
                                            }
                                        }
                                    },
                                    doc.item:table {
                                        doc.plain:table {
                                            doc.code:table {
                                                text = "/usr/src/debug"
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Listed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "paths"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "owned"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "therefore"
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
                        text = "deleted"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uninstallation."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEBUGINFO_EXCLUDE_DIRS_ADDITION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Paths"
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
                        text = "appended"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_DEBUGINFO_EXCLUDE_DIRS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "exclusion."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "CPACK_RPM_DEBUGINFO_SINGLE_PACKAGE"
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
                        text = "Create"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "single"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "even"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "OFF"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "When"
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
                        text = "enabled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "produces"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "single"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "even"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enabled."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "using"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "combination"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "there"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
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
                        text = "component"
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
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_MAIN_COMPONENT"
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
                        text = "set."
                    }
                }
            },
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
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "none"
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
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_<component>_DEBUGINFO_PACKAGE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
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
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_DEBUGINFO_PACKAGE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
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
                        text = "ON"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_DEBUGINFO_SINGLE_PACKAGE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_DEBUGINFO_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_RPM_<component>_DEBUGINFO_FILE_NAME"
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
                        text = "Debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "rpmbuild"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "tool"
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
                                text = "file"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "name"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Alternatively"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debuginfo"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "end"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suffix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "differ"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "names"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "@cpack_component@"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "placeholder"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
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
                        text = "replaced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enabled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "otherwise"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "deletes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "placeholder."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Setting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                    doc.code:table {
                        text = "RPM-DEFAULT"
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
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default."
                    }
                }
            },
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
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "supports"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpmbuild"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tool"
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
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "-"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "disabled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
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
                        text = "enabled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "setting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                    doc.code:table {
                        text = "RPM-DEFAULT"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            }
        },
        doc.header:table {
            id = "packaging-of-sources-srpm",
            level = 2,
            text = "Packaging of sources (SRPM)",
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
                    text = "SRPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "enabled"
                },
                doc.space:table {},
                doc.string:table {
                    text = "by"
                },
                doc.space:table {},
                doc.string:table {
                    text = "setting"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "variable"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPACK_RPM_PACKAGE_SOURCES"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variable"
                },
                doc.space:table {},
                doc.string:table {
                    text = "while"
                },
                doc.space:table {},
                doc.string:table {
                    text = "usually"
                },
                doc.space:table {},
                doc.string:table {
                    text = "using"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "variable"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPACK_INSTALLED_DIRECTORIES"
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
                    text = "provide"
                },
                doc.space:table {},
                doc.string:table {
                    text = "directory"
                },
                doc.space:table {},
                doc.string:table {
                    text = "containing"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CMakeLists.txt"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
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
                    text = "For"
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
                    text = "SRPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "would"
                },
                doc.space:table {},
                doc.string:table {
                    text = "be"
                },
                doc.space:table {},
                doc.string:table {
                    text = "produced"
                },
                doc.space:table {},
                doc.string:table {
                    text = "by"
                },
                doc.space:table {},
                doc.string:table {
                    text = "executing:"
                }
            },
            doc.block:table {
                style = "code",
                doc.string:table {
                    text = "cpack -G RPM --config ./CPackSourceConfig.cmake"
                }
            },
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
                        text = "Produced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "SRPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expected"
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
                        text = "built"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "manual"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cmake(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "manual"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cpack(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMakeLists.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
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
                        text = "located"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
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
                        text = "able"
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
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executing"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "option"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cpack -G"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "two"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "well"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpmbuild"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "present"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generating"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "produced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "SRPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    }
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Once"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "SRPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package"
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
                    text = "it"
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
                    text = "generate"
                },
                doc.space:table {},
                doc.string:table {
                    text = "binary"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
                },
                doc.space:table {},
                doc.string:table {
                    text = "by"
                },
                doc.space:table {},
                doc.string:table {
                    text = "creating"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "directory"
                },
                doc.space:table {},
                doc.string:table {
                    text = "structure"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "rpm"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generation"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "executing"
                },
                doc.space:table {},
                doc.string:table {
                    text = "rpmbuild"
                },
                doc.space:table {},
                doc.string:table {
                    text = "tool:"
                }
            },
            doc.block:table {
                style = "code",
                doc.string:table {
                    text = [[
mkdir -p build_dir/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
rpmbuild --define "_topdir <path_to_build_dir>" --rebuild <SRPM_file_name>
]]
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Generated"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
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
                    text = "located"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.string:table {
                    text = "build_dir/RPMS"
                },
                doc.space:table {},
                doc.string:table {
                    text = "directory"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "its"
                },
                doc.space:table {},
                doc.string:table {
                    text = "sub"
                },
                doc.space:table {},
                doc.string:table {
                    text = "directories."
                }
            },
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
                        text = "SRPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "internally"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uses"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack/RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
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
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMakeScripts.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "decide"
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
                        text = "SRPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "step"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "what"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "content"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package(s)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "well"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "how"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "they"
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
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(monolithic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "decide"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "reading"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "environment"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "manager"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "starting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "process"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generating"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "way"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "single"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "SRPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
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
                        text = "produce"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "different"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "different"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "platforms"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "depending"
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
                        text = "platform\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rules."
                    }
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Source"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "has"
                },
                doc.space:table {},
                doc.string:table {
                    text = "its"
                },
                doc.space:table {},
                doc.string:table {
                    text = "own"
                },
                doc.space:table {},
                doc.string:table {
                    text = "set"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_PACKAGE_SOURCES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "content"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm)."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "OFF"
                            }
                        }
                    }
                }
            },
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
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cmake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "projects"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RPM_PACKAGE_SOURCES"
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
                        text = "OFF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPackConfig.cmake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "ON"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPackSourceConfig.cmake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_SOURCE_PKG_BUILD_PARAMS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command-line"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "parameters"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "manual"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cmake(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "CPACK_RPM_SOURCE_PKG_PACKAGING_INSTALL_PREFIX"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "would"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PACKAGING_INSTALL_PREFIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "producing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "/"
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
                        text = "CPACK_RPM_BUILDREQUIRES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "List"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rpm"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "RPM"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(BuildRequires)."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enclose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requirements"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "between"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_BUILDREQUIRES \"python >= 2.5.0, cmake >= 2.8\")"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RPM_REQUIRES_EXCLUDE_FROM"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.22"
                        }
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
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
                        text = "keep"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependency"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scanning"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specific"
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
                        text = "directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies."
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
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "regular"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "matches"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
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
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_RPM_REQUIRES_EXCLUDE_FROM \"bin/libqsqloci.*\\.so.*\")"
                    }
                }
            }
        }
    }
}
