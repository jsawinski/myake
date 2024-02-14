set(MYAKE_CONFIG_FILE ${Myake_BINARY_DIR}/share/myake/MyakeConfig.cmake)
configure_file(MyakeConfig.cmake.in ${MYAKE_CONFIG_FILE})

install(FILES
    ${MYAKE_CONFIG_FILE}
    DESTINATION ${CMAKE_INSTALL_DATADIR})

install(DIRECTORY
    My
    DESTINATION ${CMAKE_INSTALL_DATADIR}
    PATTERN *.cmake)
