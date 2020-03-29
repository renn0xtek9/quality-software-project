# This macro removes all files under the build directory from the list example:
# SET (MYLIST "/home/foo/bar.cpp;/home/foo/build/bar.cpp") REMOVEFILEUNDERBUILD
# (MYLIST)
MACRO (removefilesunderbuild _list)
  FOREACH (_file ${${_list}})
    STRING (FIND ${_file} ${CMAKE_BINARY_DIR} EXCLUDE_DIR_FOUND)
    IF (NOT ${EXCLUDE_DIR_FOUND} EQUAL -1)
      LIST (REMOVE_ITEM ${_list} ${_file})
    ENDIF ()
  ENDFOREACH (_file)
ENDMACRO ()
