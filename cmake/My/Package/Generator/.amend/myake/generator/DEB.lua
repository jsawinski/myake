-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/deb.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-deb-generator",
        level = 1,
        text = "CPack DEB Generator",
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
                text = "DEB"
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
            id = "variables-specific-to-cpack-debian-deb-generator",
            level = 2,
            text = "Variables specific to CPack Debian (DEB) generator",
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
                    text = "DEB"
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
                    text = "DEB"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package"
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
                    text = "DEB"
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
                    text = "DEB"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "should"
                },
                doc.space:table {},
                doc.string:table {
                    text = "work"
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
                    text = "Linux"
                },
                doc.space:table {},
                doc.string:table {
                    text = "host"
                },
                doc.space:table {},
                doc.string:table {
                    text = "but"
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
                    text = "produce"
                },
                doc.space:table {},
                doc.string:table {
                    text = "better"
                },
                doc.space:table {},
                doc.string:table {
                    text = "deb"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "when"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Debian"
                },
                doc.space:table {},
                doc.string:table {
                    text = "specific"
                },
                doc.space:table {},
                doc.string:table {
                    text = "tools"
                },
                doc.space:table {},
                doc.code:table {
                    text = "dpkg-xxx"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "usable"
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
                    text = "build"
                },
                doc.space:table {},
                doc.string:table {
                    text = "system."
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
                    text = "DEB"
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
                    text = "!CPACK_DEBIAN_XXX"
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
                    text = "!CPACK_DEBIAN_<COMPONENT>_XXXX"
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
                        text = "component"
                    }
                },
                doc.space:table {},
                doc.string:table {
                    text = "specific"
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
                    text = "DEB"
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
                                target = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/PackageGenerators#deb-unix-only",
                                doc.string:table {
                                    text = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/PackageGenerators#deb-unix-only"
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
                    text = "DEB"
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
                        text = "CPACK_DEB_COMPONENT_INSTALL"
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
                        text = "CPackDEB"
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
                        text = "CPACK_DEBIAN_PACKAGE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(variable"
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
                        text = "transformed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lower"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "case)."
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
                                    text = "CPACK_PACKAGE_NAME"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_NAME"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "suffixed"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "with"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    text = "-<COMPONENT>"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_NAME"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-source",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-source"
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
                        text = "CPACK_DEBIAN_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_FILE_NAME"
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
                                text = "<CPACK_PACKAGE_FILE_NAME>[-<component>].deb"
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
                        text = "DEB-DEFAULT"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "DEB"
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
                        text = "itself"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "deb"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "<PackageName>_<VersionNumber>-<DebianRevisionNumber>_<DebianArchitecture>.deb"
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
                    doc.string:table {
                        text = "either"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".deb"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".ipk"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suffix."
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
                        doc.code:table {
                            text = ".ipk"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "suffix"
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
                            text = "OPKG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "packaging"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "system."
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
                            text = "Preferred"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "setting"
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
                            text = "is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "DEB-DEFAULT"
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
                            text = "backward"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compatibility"
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
                            text = "CPack"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "DEB"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generator"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "CMake"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "prior"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "version"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "3.6"
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
                            text = "is"
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
                        doc.string:table {
                            text = "By"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "using"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "non"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "filenames"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "duplicate"
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
                            text = "occur."
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
                        text = "CPACK_DEBIAN_PACKAGE_EPOCH"
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
                        text = "Debian"
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
                        doc.paragraph:table {
                            doc.string:table {
                                text = "None"
                            }
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
                        text = "CPACK_DEBIAN_PACKAGE_VERSION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
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
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "only"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "alphanumerics"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(A-Za-z0-9)"
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
                        text = "characters"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "+"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "-"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "~"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(full"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "stop,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "plus,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "hyphen,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tilde)"
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
                        text = "start"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "digit."
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
                        text = "CPACK_DEBIAN_PACKAGE_RELEASE"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "hyphens"
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
                        text = "allowed."
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
                            text = "backward"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compatibility"
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
                            text = "3.9"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "lower"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "failed"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "test"
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
                            text = "variable\'s"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "content"
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
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "hard"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "error"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "when"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "both"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_DEBIAN_PACKAGE_RELEASE"
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
                            text = "CPACK_DEBIAN_PACKAGE_EPOCH"
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
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "An"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "author"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "warning"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "reported"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "instead."
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
                        text = "CPACK_DEBIAN_PACKAGE_RELEASE"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "release"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "-"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "revision"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "number."
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
                                text = "None"
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
                        text = "DEB"
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
                        text = "CPACK_DEBIAN_PACKAGE_VERSION"
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
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DEBIAN_PACKAGE_ARCHITECTURE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_ARCHITECTURE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "architecture"
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
                                text = "Output"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "of"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "dpkg --print-architecture"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "(or"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "i386"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "if"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "dpkg"
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
                                text = "found)"
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
                            text = "3.6"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_ARCHITECTURE"
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
                        text = "CPACK_DEBIAN_PACKAGE_DEPENDS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
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
                        text = "package."
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_DEPENDS"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_DEBIAN_PACKAGE_SHLIBDEPS"
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
                            text = "specifically"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_SHLIBDEPS"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "this"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "component,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "discovered"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "dependencies"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_DEBIAN_PACKAGE_DEPENDS"
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
                            text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS"
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
                            text = "empty"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "string,"
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
                            text = "automatically"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "discovered"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "dependencies"
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
                            text = "set"
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
                            text = "component."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_DEBIAN_PACKAGE_DEPENDS \"libc6 (>= 2.3.1-6), libc6 (< 2.4)\")"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DEBIAN_ENABLE_COMPONENT_DEPENDS"
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
                        text = "Sets"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "inter-component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "listed"
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
                        text = "CPACK_COMPONENT_<compName>_DEPENDS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables."
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
                                text = "None"
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
                        text = "CPACK_DEBIAN_PACKAGE_MAINTAINER"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "maintainer"
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
                                text = "!CPACK_PACKAGE_CONTACT"
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
                        text = "CPACK_DEBIAN_PACKAGE_DESCRIPTION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_DESCRIPTION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description"
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
                                    text = "CPACK_DEBIAN_<COMPONENT>_DESCRIPTION"
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
                                    text = "CPACK_DEBIAN_PACKAGE_DESCRIPTION"
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
                                    text = "CPACK_PACKAGE_DESCRIPTION"
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
                                doc.string:table {
                                    text = "content"
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
                                    text = "file"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "specified"
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
                                    text = "CPACK_PACKAGE_DESCRIPTION_FILE"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "if"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set"
                                }
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
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description"
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
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "going"
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
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Otherwise,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
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
                        text = "as"
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
                        text = "line"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
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
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-controlfields.html#description",
                        doc.string:table {
                            text = "Debian"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Policy"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Manual"
                        }
                    },
                    doc.string:table {
                        text = "."
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
                            text = "!CPACK_COMPONENT_<compName>_DESCRIPTION"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_DESCRIPTION"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
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
                            text = "!CPACK_PACKAGE_DESCRIPTION_FILE"
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
                        text = "CPACK_DEBIAN_PACKAGE_SECTION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_SECTION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Section"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "admin,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "devel,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "doc,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "..."
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
                                text = "devel"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_SECTION"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-archive.html#s-subsections",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-archive.html#s-subsections"
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
                        text = "CPACK_DEBIAN_ARCHIVE_TYPE"
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
                doc.div:table {
                    classes = {
                        "deprecated"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.14"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "archive"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
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
                                text = "gnutar"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Possible"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is:"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "gnutar"
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
                            text = "variable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "previously"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "defaulted"
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
                            text = "paxr"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "value,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "dpkg"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "has"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "never"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "supported"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "that"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "tar"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "For"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "backwards"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compatibility"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "paxr"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "value"
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
                            text = "mapped"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "gnutar"
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
                            text = "deprecation"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "message"
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
                            text = "emitted."
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
                        text = "CPACK_DEBIAN_COMPRESSION_TYPE"
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
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
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
                                text = "gzip"
                            }
                        }
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
                        },
                        doc.item:table {
                            doc.code:table {
                                text = "zstd"
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
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "Zstandard"
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
                        text = "CPACK_DEBIAN_PACKAGE_PRIORITY"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_PRIORITY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Priority"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "required,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "important,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "standard,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "optional,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extra"
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
                                text = "optional"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_PRIORITY"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-archive.html#s-priorities",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-archive.html#s-priorities"
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
                        text = "CPACK_DEBIAN_PACKAGE_HOMEPAGE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL"
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
                        text = "web"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "site"
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
                        text = "package,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "preferably"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "applicable)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "site"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "original"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
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
                        text = "obtained"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upstream"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "documentation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "information"
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
                        text = "found."
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
                            text = "The"
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
                            text = "this"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "field"
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
                        doc.string:table {
                            text = "simple"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "URL"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "without"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "any"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "surrounding"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "characters"
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
                            text = "<>."
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
                        text = "CPACK_DEBIAN_PACKAGE_SHLIBDEPS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_SHLIBDEPS"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ON"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "dpkg-shlibdeps"
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
                        text = "better"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependency"
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
                                    text = "CPACK_DEBIAN_PACKAGE_SHLIBDEPS"
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
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
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
                            text = "You"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "may"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "need"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CMAKE_INSTALL_RPATH"
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
                            text = "appropriate"
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
                            text = "you"
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
                            text = "feature,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "because"
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
                            text = "don\'t"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "dpkg-shlibdeps"
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
                            text = "own"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "shared"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "libs."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "See"
                        },
                        doc.space:table {},
                        doc.link:table {
                            target = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/RPATH-handling",
                            doc.string:table {
                                text = "https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/RPATH-handling"
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
                            text = "You"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "can"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_DEBIAN_PACKAGE_SHLIBDEPS_PRIVATE_DIRS"
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
                            text = "appropriate"
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
                            text = "you"
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
                            text = "feature,"
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
                            text = "please"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "dpkg-shlibdeps"
                        },
                        doc.string:table {
                            text = "."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "However,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "you"
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
                            text = "do"
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
                            text = "private"
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
                            text = "could"
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
                            text = "resolved"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "otherwise."
                        }
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_SHLIBDEPS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Correct"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "handling"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "$ORIGIN"
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
                            text = "CMAKE_INSTALL_RPATH"
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
                        text = "CPACK_DEBIAN_PACKAGE_SHLIBDEPS_PRIVATE_DIRS"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.20"
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
                        text = "to"
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
                        text = "directories"
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
                        text = "given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "dpkg-shlibdeps"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "via"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "-l"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "option."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "These"
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
                        text = "searched"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "dpkg-shlibdeps"
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
                        text = "find"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "private"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shared"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "library"
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
                        doc.paragraph:table {
                            doc.string:table {
                                text = "None"
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
                            text = "You"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "should"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "prefer"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CMAKE_INSTALL_RPATH"
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
                            text = "appropriate"
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
                            text = "you"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "use"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "dpkg-shlibdeps"
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
                            text = "current"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "really"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "only"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "needed"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "private"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "shared"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "library"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "dependencies."
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
                        text = "CPACK_DEBIAN_PACKAGE_DEBUG"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "DEB"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "run."
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
                                text = "None"
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
                        text = "CPACK_DEBIAN_PACKAGE_PREDEPENDS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_PREDEPENDS"
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
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Pre-Depends"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Like"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "Depends <CPACK_DEBIAN_PACKAGE_DEPENDS>"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "except"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "forces"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "dpkg"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complete"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation"
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
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "named"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "even"
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
                        text = "installation"
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
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declares"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pre-dependency."
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_PREDEPENDS"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_PREDEPENDS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps"
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
                        text = "CPACK_DEBIAN_PACKAGE_ENHANCES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_ENHANCES"
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
                    doc.code:table {
                        text = "Enhances"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Similar"
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
                        text = "Suggests <CPACK_DEBIAN_PACKAGE_SUGGESTS>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "works"
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
                        text = "opposite"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "direction:"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declares"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
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
                        text = "enhance"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "functionality"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "another"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_ENHANCES"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_ENHANCES"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps"
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
                        text = "CPACK_DEBIAN_PACKAGE_BREAKS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_BREAKS"
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
                    doc.code:table {
                        text = "Breaks"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(P)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declares"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "breaks"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(B),"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "dpkg"
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
                        text = "allow"
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
                        text = "(P)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declares"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Breaks"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.emphasis:table {
                        style = "strong",
                        doc.string:table {
                            text = "unpacked"
                        }
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
                        text = "packages"
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
                        text = "broken"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(B)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "deconfigured"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "first."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "As"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "long"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(P)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configured,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "previously"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "deconfigured"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(B)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cannot"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "reconfigured"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "again."
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_BREAKS"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_BREAKS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-breaks",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-breaks"
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
                        text = "CPACK_DEBIAN_PACKAGE_CONFLICTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONFLICTS"
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
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Conflicts"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declares"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
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
                        text = "another"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "using"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Conflicts"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "dpkg"
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
                        text = "allow"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "them"
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
                        text = "unpacked"
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
                        text = "system"
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_CONFLICTS"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONFLICTS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-conflicts",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-conflicts"
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
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "stronger"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "restriction"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "than"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "Breaks <CPACK_DEBIAN_PACKAGE_BREAKS>"
                        },
                        doc.string:table {
                            text = ","
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "which"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "prevents"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "broken"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "from"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "being"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "configured"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "while"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "breaking"
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
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "\"Unpacked\""
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "state"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "allows"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "both"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "packages"
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
                            text = "unpacked"
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
                        text = "CPACK_DEBIAN_PACKAGE_PROVIDES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_PROVIDES"
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
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Provides"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
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
                        text = "virtual"
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
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "appears"
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
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Provides"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "another"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_PROVIDES"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_PROVIDES"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-virtual",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-virtual"
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
                        text = "CPACK_DEBIAN_PACKAGE_REPLACES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_REPLACES"
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
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Replaces"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declare"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "their"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
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
                        text = "they"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "overwrite"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "certain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "completely"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "replace"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
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
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_REPLACES"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_REPLACES"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps"
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
                        text = "CPACK_DEBIAN_PACKAGE_RECOMMENDS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_RECOMMENDS"
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
                    doc.code:table {
                        text = "Recommends"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Allows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declare"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "strong,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "absolute,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependency"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
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
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_RECOMMENDS"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_RECOMMENDS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps"
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
                        text = "CPACK_DEBIAN_PACKAGE_SUGGESTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_SUGGESTS"
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
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Suggests"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Allows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declare"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "suggested"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "grouping."
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_SUGGESTS"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
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
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_SUGGESTS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps"
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
                        text = "CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS"
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
                        text = "Allows"
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
                        text = "shlibs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Compatibility"
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
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS_POLICY"
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
                            text = "Libraries"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "are"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "only"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "considered"
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
                            text = "have"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "both"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "library"
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
                            text = "version"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set."
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
                            text = "done"
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
                            text = "SOVERSION"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "property"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "with"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "command"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "set_target_properties"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "command."
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
                        text = "CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS_POLICY"
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
                        text = "Compatibility"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "policy"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shlibs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
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
                        doc.paragraph:table {
                            doc.code:table {
                                text = "="
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Defines"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compatibility"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "policy"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shlibs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Possible"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "values:"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "="
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ">="
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-sharedlibs.html#s-sharedlibs-shlibdeps",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-sharedlibs.html#s-sharedlibs-shlibdeps"
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
                        text = "CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONTROL_EXTRA"
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
                        text = "allow"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "advanced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
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
                        text = "custom"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
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
                        text = "control.tar.gz."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Typical"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "usage"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "conffiles,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "postinst,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "postrm,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prerm."
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
                                text = "None"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Usage:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = [[
set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
    "${CMAKE_CURRENT_SOURCE_DIR}/prerm;${CMAKE_CURRENT_SOURCE_DIR}/postrm")
]]
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.4"
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
                            text = "!CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONTROL_EXTRA"
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
                        text = "CPACK_DEBIAN_PACKAGE_CONTROL_STRICT_PERMISSION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONTROL_STRICT_PERMISSION"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.4"
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
                        text = "indicates"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "policy"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
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
                        text = "strictly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "followed."
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
                                text = "FALSE"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Usage:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "set(CPACK_DEBIAN_PACKAGE_CONTROL_STRICT_PERMISSION TRUE)"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "overrides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "original"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "rules"
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
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "policy"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-files.html#s-permissions-owners",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-files.html#s-permissions-owners"
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
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "original"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "permissions"
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
                            text = "used"
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
                            text = "final"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "unless"
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
                            text = "TRUE"
                        },
                        doc.string:table {
                            text = "."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "In"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "particular,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "scripts"
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
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "proper"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "executable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "flag"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "prior"
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
                            text = "generation"
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
                            text = "package."
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
                        text = "CPACK_DEBIAN_PACKAGE_SOURCE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_DEBIAN_<COMPONENT>_PACKAGE_SOURCE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.5"
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
                    doc.code:table {
                        text = "Source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "field"
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
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
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
                        text = "package"
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
                        text = "not"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "particular"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "several"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components/binaries"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
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
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
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
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "indicated"
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
                        text = "field"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Source"
                    },
                    doc.string:table {
                        text = "."
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
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "An"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "empty"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "string"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "non-component"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations"
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
                                    text = "CPACK_DEBIAN_PACKAGE_SOURCE"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "component-based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "installations."
                                }
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-source",
                        doc.string:table {
                            text = "https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-source"
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
                            text = "value"
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
                            text = "interpreted."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "It"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "possible"
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
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "optional"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "revision"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "number"
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
                            text = "referenced"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "source"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "well."
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
                            text = "3.13"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Dbgsym"
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
                        text = "Dbgsym"
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
                            text = "CPACK_DEBIAN_DEBUGINFO_PACKAGE"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "CPACK_DEBIAN_<component>_DEBUGINFO_PACKAGE"
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
                            text = "dbgsym"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = ".ddeb"
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
                            text = "Setting"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "this"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "also"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "strips"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "ELF"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "files"
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
                            text = "generated"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "non-dbgsym"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "which"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "results"
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
                            text = "only"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "being"
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
                            text = "dbgsym"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package."
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
                            text = "DEB"
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
                            text = "dbgsym"
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
                doc.header:table {
                    id = "building-debian-packages-on-windows",
                    level = 2,
                    text = "Building Debian packages on Windows",
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
                            text = "To"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "communicate"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "UNIX"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "permissions"
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
                            text = "install"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "stage"
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
                            text = "CPack"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "DEB"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generator"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "cmake_mode_t"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "NTFS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "alternate"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "data"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "stream"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "(ADT)"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "used."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "When"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "filesystem"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "without"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "ADT"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "support"
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
                            text = "only"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "owner"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "read/write"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "permissions"
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
                            text = "preserved."
                        }
                    },
                    doc.header:table {
                        id = "reproducible-packages",
                        level = 2,
                        text = "Reproducible packages",
                        doc.div:table {
                            classes = {
                                "versionadded"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "3.13"
                                }
                            }
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "The"
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
                            doc.code:table {
                                attributes = {
                                    role = "envvar"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "!SOURCE_DATE_EPOCH"
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
                            doc.string:table {
                                text = "a"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "UNIX"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "timestamp,"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "defined"
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
                                text = "number"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "of"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "seconds,"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "excluding"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "leap"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "seconds,"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "since"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "01"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Jan"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "1970"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "00:00:00"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "UTC."
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "If"
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
                                text = "CPack"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "DEB"
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
                                text = "its"
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
                                text = "timestamps"
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
                                text = "package."
                            }
                        }
                    }
                }
            }
        }
    }
}
