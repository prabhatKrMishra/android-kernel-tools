#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "lldCommon" for configuration "Release"
set_property(TARGET lldCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldCommon PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldCommon.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldCommon "${_IMPORT_PREFIX}/lib64/liblldCommon.a" )

# Import target "lldCore" for configuration "Release"
set_property(TARGET lldCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldCore PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldCore.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldCore )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldCore "${_IMPORT_PREFIX}/lib64/liblldCore.a" )

# Import target "lldDriver" for configuration "Release"
set_property(TARGET lldDriver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldDriver PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldDriver.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldDriver )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldDriver "${_IMPORT_PREFIX}/lib64/liblldDriver.a" )

# Import target "lldMachO" for configuration "Release"
set_property(TARGET lldMachO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldMachO PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldMachO.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldMachO )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldMachO "${_IMPORT_PREFIX}/lib64/liblldMachO.a" )

# Import target "lldYAML" for configuration "Release"
set_property(TARGET lldYAML APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldYAML PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldYAML.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldYAML )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldYAML "${_IMPORT_PREFIX}/lib64/liblldYAML.a" )

# Import target "lldReaderWriter" for configuration "Release"
set_property(TARGET lldReaderWriter APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldReaderWriter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldReaderWriter.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldReaderWriter )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldReaderWriter "${_IMPORT_PREFIX}/lib64/liblldReaderWriter.a" )

# Import target "lld" for configuration "Release"
set_property(TARGET lld APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lld PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/lld"
  )

list(APPEND _IMPORT_CHECK_TARGETS lld )
list(APPEND _IMPORT_CHECK_FILES_FOR_lld "${_IMPORT_PREFIX}/bin/lld" )

# Import target "lldCOFF" for configuration "Release"
set_property(TARGET lldCOFF APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldCOFF PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldCOFF.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldCOFF )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldCOFF "${_IMPORT_PREFIX}/lib64/liblldCOFF.a" )

# Import target "lldELF" for configuration "Release"
set_property(TARGET lldELF APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldELF PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldELF.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldELF )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldELF "${_IMPORT_PREFIX}/lib64/liblldELF.a" )

# Import target "lldMachO2" for configuration "Release"
set_property(TARGET lldMachO2 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldMachO2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldMachO2.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldMachO2 )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldMachO2 "${_IMPORT_PREFIX}/lib64/liblldMachO2.a" )

# Import target "lldMinGW" for configuration "Release"
set_property(TARGET lldMinGW APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldMinGW PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldMinGW.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldMinGW )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldMinGW "${_IMPORT_PREFIX}/lib64/liblldMinGW.a" )

# Import target "lldWasm" for configuration "Release"
set_property(TARGET lldWasm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lldWasm PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/liblldWasm.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lldWasm )
list(APPEND _IMPORT_CHECK_FILES_FOR_lldWasm "${_IMPORT_PREFIX}/lib64/liblldWasm.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
