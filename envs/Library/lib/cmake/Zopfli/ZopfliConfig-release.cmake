#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Zopfli::libzopfli" for configuration "Release"
set_property(TARGET Zopfli::libzopfli APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Zopfli::libzopfli PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/zopfli.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/zopfli.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Zopfli::libzopfli )
list(APPEND _IMPORT_CHECK_FILES_FOR_Zopfli::libzopfli "${_IMPORT_PREFIX}/lib/zopfli.lib" "${_IMPORT_PREFIX}/bin/zopfli.dll" )

# Import target "Zopfli::libzopflipng" for configuration "Release"
set_property(TARGET Zopfli::libzopflipng APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Zopfli::libzopflipng PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/zopflipng.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "Zopfli::libzopfli"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/zopflipng.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Zopfli::libzopflipng )
list(APPEND _IMPORT_CHECK_FILES_FOR_Zopfli::libzopflipng "${_IMPORT_PREFIX}/lib/zopflipng.lib" "${_IMPORT_PREFIX}/bin/zopflipng.dll" )

# Import target "Zopfli::zopfli" for configuration "Release"
set_property(TARGET Zopfli::zopfli APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Zopfli::zopfli PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/zopfli.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS Zopfli::zopfli )
list(APPEND _IMPORT_CHECK_FILES_FOR_Zopfli::zopfli "${_IMPORT_PREFIX}/bin/zopfli.exe" )

# Import target "Zopfli::zopflipng" for configuration "Release"
set_property(TARGET Zopfli::zopflipng APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Zopfli::zopflipng PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/zopflipng.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS Zopfli::zopflipng )
list(APPEND _IMPORT_CHECK_FILES_FOR_Zopfli::zopflipng "${_IMPORT_PREFIX}/bin/zopflipng.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
