-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/nuget.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-nuget-generator",
        level = 1,
        text = "CPack NuGet Generator",
        doc.div:table {
            classes = {
                "versionadded"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "3.12"
                }
            }
        },
        doc.paragraph:table {
            doc.string:table {
                text = "When"
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
                text = "NuGet"
            },
            doc.space:table {},
            doc.string:table {
                text = "package"
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
                text = "no"
            },
            doc.space:table {},
            doc.string:table {
                text = "direct"
            },
            doc.space:table {},
            doc.string:table {
                text = "way"
            },
            doc.space:table {},
            doc.string:table {
                text = "to"
            },
            doc.space:table {},
            doc.string:table {
                text = "control"
            },
            doc.space:table {},
            doc.string:table {
                text = "an"
            },
            doc.space:table {},
            doc.string:table {
                text = "output"
            },
            doc.space:table {},
            doc.string:table {
                text = "filename"
            },
            doc.space:table {},
            doc.string:table {
                text = "due"
            },
            doc.space:table {},
            doc.string:table {
                text = "a"
            },
            doc.space:table {},
            doc.string:table {
                text = "lack"
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
                text = "corresponding"
            },
            doc.space:table {},
            doc.string:table {
                text = "CLI"
            },
            doc.space:table {},
            doc.string:table {
                text = "option"
            },
            doc.space:table {},
            doc.string:table {
                text = "of"
            },
            doc.space:table {},
            doc.string:table {
                text = "NuGet,"
            },
            doc.space:table {},
            doc.string:table {
                text = "so"
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
                text = "no"
            },
            doc.space:table {},
            doc.code:table {
                attributes = {
                    role = "variable"
                },
                classes = {
                    "interpreted-text"
                },
                text = "!CPACK_NUGET_PACKAGE_FILE_NAME"
            },
            doc.space:table {},
            doc.string:table {
                text = "variable."
            },
            doc.space:table {},
            doc.string:table {
                text = "To"
            },
            doc.space:table {},
            doc.string:table {
                text = "form"
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
                text = "filename"
            },
            doc.space:table {},
            doc.string:table {
                text = "NuGet"
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
                text = "package"
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
                text = "the"
            },
            doc.space:table {},
            doc.string:table {
                text = "version"
            },
            doc.space:table {},
            doc.string:table {
                text = "according"
            },
            doc.space:table {},
            doc.string:table {
                text = "to"
            },
            doc.space:table {},
            doc.string:table {
                text = "its"
            },
            doc.space:table {},
            doc.string:table {
                text = "built-in"
            },
            doc.space:table {},
            doc.string:table {
                text = "rules."
            }
        },
        doc.paragraph:table {
            doc.string:table {
                text = "Also,"
            },
            doc.space:table {},
            doc.string:table {
                text = "be"
            },
            doc.space:table {},
            doc.string:table {
                text = "aware"
            },
            doc.space:table {},
            doc.string:table {
                text = "that"
            },
            doc.space:table {},
            doc.string:table {
                text = "including"
            },
            doc.space:table {},
            doc.string:table {
                text = "a"
            },
            doc.space:table {},
            doc.string:table {
                text = "top"
            },
            doc.space:table {},
            doc.string:table {
                text = "level"
            },
            doc.space:table {},
            doc.string:table {
                text = "directory"
            },
            doc.space:table {},
            doc.string:table {
                text = "("
            },
            doc.code:table {
                attributes = {
                    role = "variable"
                },
                classes = {
                    "interpreted-text"
                },
                text = "CPACK_INCLUDE_TOPLEVEL_DIRECTORY"
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
                text = "ignored"
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
                text = "generator."
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-nuget-generator",
            level = 2,
            text = "Variables specific to CPack NuGet generator",
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
                    text = "NuGet"
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
                    text = "NuGet"
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
                    text = "NuGet"
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
                    text = "NuGet"
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
                    text = "!CPACK_NUGET_XXX"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables."
                },
                doc.space:table {},
                doc.string:table {
                    text = "In"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "\"one"
                },
                doc.space:table {},
                doc.string:table {
                    text = "per"
                },
                doc.space:table {},
                doc.string:table {
                    text = "group\""
                },
                doc.space:table {},
                doc.string:table {
                    text = "mode"
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
                    text = "CPACK_COMPONENTS_GROUPING"
                },
                doc.string:table {
                    text = "),"
                },
                doc.space:table {},
                doc.code:table {
                    text = "<compName>"
                },
                doc.space:table {},
                doc.string:table {
                    text = "placeholder"
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
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "below"
                },
                doc.space:table {},
                doc.string:table {
                    text = "would"
                },
                doc.space:table {},
                doc.string:table {
                    text = "contain"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
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
                    text = "(uppercased"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "turned"
                },
                doc.space:table {},
                doc.string:table {
                    text = "into"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "\"C\""
                },
                doc.space:table {},
                doc.string:table {
                    text = "identifier)."
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
                    text = "NuGet"
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
                        text = "CPACK_NUGET_COMPONENT_INSTALL"
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
                        text = "NuGet"
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
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NUGET_PACKAGE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NUGET"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_NUGET_PACKAGE_NAME"
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
                    doc.code:table {
                        text = "id"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
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
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NUGET_PACKAGE_VERSION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_VERSION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NuGet"
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
                        text = "CPACK_NUGET_PACKAGE_DESCRIPTION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_DESCRIPTION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "long"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display."
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
                                doc.string:table {
                                    text = ","
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
                                    text = "!CPACK_COMPONENT_GROUP_<groupName>_DESCRIPTION"
                                },
                                doc.string:table {
                                    text = ","
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
                                    text = "CPACK_PACKAGE_DESCRIPTION"
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
                        text = "CPACK_NUGET_PACKAGE_AUTHORS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_AUTHORS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "comma-separated"
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
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "authors,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "matching"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "profile"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "names"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
                        }
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "These"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "displayed"
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
                        text = "NuGet"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Gallery"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
                        }
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
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cross-reference"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "authors."
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
                                text = "CPACK_PACKAGE_VENDOR"
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
                        text = "CPACK_NUGET_PACKAGE_TITLE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_TITLE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "human-friendly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "title"
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
                        text = "package,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "typically"
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
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "displays"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
                        }
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
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Manager"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Visual"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Studio."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified,"
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
                        text = "ID"
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
                                    text = "CPACK_COMPONENT_<compName>_DISPLAY_NAME"
                                },
                                doc.string:table {
                                    text = ","
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
                                    text = "!CPACK_COMPONENT_GROUP_<groupName>_DISPLAY_NAME"
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
                        text = "CPACK_NUGET_PACKAGE_OWNERS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_OWNERS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "comma-separated"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "creators"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "using"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "profile"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "names"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
                        }
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
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "often"
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
                        text = "list"
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
                    doc.string:table {
                        text = "authors,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ignored"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uploading"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
                        }
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
                        text = "CPACK_NUGET_PACKAGE_HOMEPAGE_URL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_HOMEPAGE_URL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "An"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL"
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
                        text = "package\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "home"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "often"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shown"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "displays"
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
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
                        }
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
                        doc.paragraph:table {
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PACKAGE_HOMEPAGE_URL"
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
                        text = "CPACK_NUGET_PACKAGE_LICENSEURL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_LICENSEURL"
                    }
                },
                doc.div:table {
                    classes = {
                        "deprecated"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.20"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Use"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "local"
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
                            text = "("
                        },
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME"
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
                            text = "a"
                        },
                        doc.space:table {},
                        doc.link:table {
                            target = "https://spdx.org/licenses",
                            doc.string:table {
                                text = "SPDX"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "license"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "identifier"
                            }
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION"
                        },
                        doc.string:table {
                            text = ")"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "instead."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "An"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL"
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
                        text = "package\'s"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "often"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shown"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "displays"
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
                        text = "on"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://www.nuget.org",
                        doc.string:table {
                            text = "nuget.org"
                        }
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
                        text = "CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_LICENSE_EXPRESSION"
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
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Software"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Data"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Exchange"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://spdx.org/licenses",
                        doc.string:table {
                            text = "SPDX"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "license"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "identifier"
                        }
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
                    doc.code:table {
                        text = "MIT"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "BSD-3-Clause"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "LGPL-3.0-or-later"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "case"
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
                        text = "choice"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "licenses"
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
                        text = "complex"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "restrictions,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compound"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expressions"
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
                        text = "formed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "using"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "boolean"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "operators,"
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
                    doc.code:table {
                        text = "MIT OR BSD-3-Clause"
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://spdx.github.io/spdx-spec/v2.3/SPDX-license-expressions",
                        doc.string:table {
                            text = "SPDX"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "specification"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "guidance"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "forming"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "complex"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expressions."
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
                        text = "CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ignored."
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
                        text = "CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_LICENSE_FILE_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package\'s"
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
                        text = "in"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "file"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = ".txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "file"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = ".md"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format."
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
                        text = "!CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ignored."
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
                        text = "CPACK_NUGET_PACKAGE_ICONURL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_ICONURL"
                    }
                },
                doc.div:table {
                    classes = {
                        "deprecated"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.20"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Use"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "local"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "icon"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_NUGET_PACKAGE_ICON"
                        },
                        doc.string:table {
                            text = ")"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "instead."
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "An"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL"
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
                        text = "64x64"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "transparency"
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
                        text = "use"
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
                        text = "icon"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display."
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
                        text = "CPACK_NUGET_PACKAGE_REQUIRE_LICENSE_ACCEPTANCE"
                    }
                },
                doc.paragraph:table {
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "true"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value,"
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
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prompted"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "accept"
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
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                        text = "CPACK_NUGET_PACKAGE_ICON"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_ICON"
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
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename"
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
                        text = "64x64"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "transparency"
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
                        text = "use"
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
                        text = "icon"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display."
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
                        text = "CPACK_NUGET_PACKAGE_DESCRIPTION_SUMMARY"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_DESCRIPTION_SUMMARY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "short"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "omitted,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "truncated"
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
                        text = "description"
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
                                text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
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
                        text = "CPACK_NUGET_PACKAGE_RELEASE_NOTES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_RELEASE_NOTES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
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
                        text = "changes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "made"
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
                        text = "release"
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
                        text = "package,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "often"
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
                        text = "UI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "like"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Updates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tab"
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
                        text = "Visual"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Studio"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Manager"
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
                        text = "CPACK_NUGET_PACKAGE_COPYRIGHT"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_COPYRIGHT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Copyright"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
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
                        text = "CPACK_NUGET_PACKAGE_LANGUAGE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_LANGUAGE"
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
                        text = "Locale"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specifier"
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
                        text = "package,"
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
                    doc.code:table {
                        text = "en_CA"
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
                        text = "CPACK_NUGET_PACKAGE_TAGS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_TAGS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "space-delimited"
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
                        text = "tags"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "keywords"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "describe"
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
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "aid"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "discoverability"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "through"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "search"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filtering."
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
                        text = "CPACK_NUGET_PACKAGE_DEPENDENCIES"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_PACKAGE_DEPENDENCIES"
                    }
                },
                doc.paragraph:table {
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
                        text = "package"
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
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NUGET_PACKAGE_DEPENDENCIES_<dependency>_VERSION"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_NUGET_<compName>_"
                    },
                    doc.string:table {
                        text = "PACKAGE_DEPENDENCIES_<dependency>_VERSION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.link:table {
                        target = "https://learn.microsoft.com/en-us/nuget/concepts/package-versioning#version-ranges",
                        doc.string:table {
                            text = "version"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "specification"
                        }
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
                        text = "particular"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependency,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<dependency>"
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
                        text = "item"
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
                        text = "dependency"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(see"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "above)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "transformed"
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
                        text = "string(MAKE_C_IDENTIFIER)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command."
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
                        text = "CPACK_NUGET_PACKAGE_DEBUG"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Enable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "debug"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "messages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "while"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NuGet"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator."
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
            }
        }
    }
}
