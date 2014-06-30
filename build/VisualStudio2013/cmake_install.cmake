# Install script for directory: C:/Users/nicolascapens/Development/SwiftShader/src/LLVM

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/LLVM")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/nicolascapens/Development/SwiftShader/src/LLVM/include/" FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.td$" REGEX "/[^/]*\\.inc$" REGEX "/license\\.txt$" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/include/" FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.gen$" REGEX "/[^/]*\\.inc$" REGEX "/cmakefiles$" EXCLUDE REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Support/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/TableGen/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/utils/TableGen/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/include/llvm/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/utils/FileCheck/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/utils/FileUpdate/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/utils/count/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/utils/not/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/utils/llvm-lit/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/utils/yaml-bench/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/projects/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/cmake/modules/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
