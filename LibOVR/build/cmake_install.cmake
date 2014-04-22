# Install script for directory: /home/caguero/workspace/OculusSDK/LibOVR

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/caguero/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "shlib")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/caguero/local/lib/libOculusVR.a")
FILE(INSTALL DESTINATION "/home/caguero/local/lib" TYPE STATIC_LIBRARY FILES "/home/caguero/workspace/OculusSDK/LibOVR/build/libOculusVR.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "shlib")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/caguero/local/include/OVR.h;/home/caguero/local/include/OVRVersion.h")
FILE(INSTALL DESTINATION "/home/caguero/local/include" TYPE FILE FILES
    "/home/caguero/workspace/OculusSDK/LibOVR/Include/OVR.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Include/OVRVersion.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/caguero/local/include/ovr/OVR_Alg.h;/home/caguero/local/include/ovr/OVR_Allocator.h;/home/caguero/local/include/ovr/OVR_Array.h;/home/caguero/local/include/ovr/OVR_Atomic.h;/home/caguero/local/include/ovr/OVR_Color.h;/home/caguero/local/include/ovr/OVR_ContainerAllocator.h;/home/caguero/local/include/ovr/OVR_File.h;/home/caguero/local/include/ovr/OVR_Hash.h;/home/caguero/local/include/ovr/OVR_KeyCodes.h;/home/caguero/local/include/ovr/OVR_List.h;/home/caguero/local/include/ovr/OVR_Log.h;/home/caguero/local/include/ovr/OVR_Math.h;/home/caguero/local/include/ovr/OVR_RefCount.h;/home/caguero/local/include/ovr/OVR_Std.h;/home/caguero/local/include/ovr/OVR_String.h;/home/caguero/local/include/ovr/OVR_SysFile.h;/home/caguero/local/include/ovr/OVR_System.h;/home/caguero/local/include/ovr/OVR_Timer.h;/home/caguero/local/include/ovr/OVR_Threads.h;/home/caguero/local/include/ovr/OVR_Types.h;/home/caguero/local/include/ovr/OVR_UTF8Util.h;/home/caguero/local/include/ovr/OVR_Device.h;/home/caguero/local/include/ovr/OVR_DeviceConstants.h;/home/caguero/local/include/ovr/OVR_DeviceHandle.h;/home/caguero/local/include/ovr/OVR_DeviceImpl.h;/home/caguero/local/include/ovr/OVR_DeviceMessages.h;/home/caguero/local/include/ovr/OVR_HIDDevice.h;/home/caguero/local/include/ovr/OVR_HIDDeviceBase.h;/home/caguero/local/include/ovr/OVR_HIDDeviceImpl.h;/home/caguero/local/include/ovr/OVR_JSON.h;/home/caguero/local/include/ovr/OVR_LatencyTestImpl.h;/home/caguero/local/include/ovr/OVR_Profile.h;/home/caguero/local/include/ovr/OVR_SensorFilter.h;/home/caguero/local/include/ovr/OVR_SensorFusion.h;/home/caguero/local/include/ovr/OVR_SensorImpl.h;/home/caguero/local/include/ovr/OVR_ThreadCommandQueue.h;/home/caguero/local/include/ovr/Util_LatencyTest.h;/home/caguero/local/include/ovr/Util_Render_Stereo.h;/home/caguero/local/include/ovr/OVR_Linux_DeviceManager.h;/home/caguero/local/include/ovr/OVR_Linux_HIDDevice.h;/home/caguero/local/include/ovr/OVR_Linux_HMDDevice.h")
FILE(INSTALL DESTINATION "/home/caguero/local/include/ovr" TYPE FILE FILES
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Alg.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Allocator.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Array.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Atomic.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Color.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_ContainerAllocator.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_File.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Hash.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_KeyCodes.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_List.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Log.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Math.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_RefCount.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Std.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_String.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_SysFile.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_System.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Timer.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Threads.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_Types.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Kernel/OVR_UTF8Util.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_Device.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_DeviceConstants.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_DeviceHandle.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_DeviceImpl.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_DeviceMessages.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_HIDDevice.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_HIDDeviceBase.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_HIDDeviceImpl.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_JSON.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_LatencyTestImpl.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_Profile.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_SensorFilter.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_SensorFusion.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_SensorImpl.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_ThreadCommandQueue.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Util/Util_LatencyTest.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/Util/Util_Render_Stereo.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_Linux_DeviceManager.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_Linux_HIDDevice.h"
    "/home/caguero/workspace/OculusSDK/LibOVR/Src/OVR_Linux_HMDDevice.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/caguero/workspace/OculusSDK/LibOVR/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/caguero/workspace/OculusSDK/LibOVR/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
