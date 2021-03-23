#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "zfp::zfp" for configuration "Release"
set_property(TARGET zfp::zfp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(zfp::zfp PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/zfp.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/zfp.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS zfp::zfp )
list(APPEND _IMPORT_CHECK_FILES_FOR_zfp::zfp "${_IMPORT_PREFIX}/lib/zfp.lib" "${_IMPORT_PREFIX}/bin/zfp.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
