#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "zfp::cfp" for configuration "Release"
set_property(TARGET zfp::cfp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(zfp::cfp PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/cfp.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/cfp.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS zfp::cfp )
list(APPEND _IMPORT_CHECK_FILES_FOR_zfp::cfp "${_IMPORT_PREFIX}/lib/cfp.lib" "${_IMPORT_PREFIX}/bin/cfp.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
