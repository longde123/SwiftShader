# Install script for directory: C:/Users/nicolascapens/Development/SwiftShader/src/LLVM/lib

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/IR/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/IRReader/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/CodeGen/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Bitcode/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Transforms/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Linker/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Analysis/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/LTO/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/MC/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Object/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Option/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/DebugInfo/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/ExecutionEngine/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/Target/cmake_install.cmake")
  include("C:/Users/nicolascapens/Development/SwiftShader/build/VisualStudio2013/lib/AsmParser/cmake_install.cmake")

endif()

