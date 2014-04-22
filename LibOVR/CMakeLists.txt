include_directories(Include ovr ovr/Kernel ovr/Util)

set(SOURCE_FILES
    ovr/Kernel/OVR_Alg.cpp
    ovr/Kernel/OVR_Allocator.cpp
    ovr/Kernel/OVR_Atomic.cpp
    ovr/Kernel/OVR_File.cpp
    ovr/Kernel/OVR_FileFILE.cpp
    ovr/Kernel/OVR_Log.cpp
    ovr/Kernel/OVR_Math.cpp
    ovr/Kernel/OVR_RefCount.cpp
    ovr/Kernel/OVR_Std.cpp
    ovr/Kernel/OVR_String.cpp
    ovr/Kernel/OVR_String_FormatUtil.cpp
    ovr/Kernel/OVR_String_PathUtil.cpp
    ovr/Kernel/OVR_SysFile.cpp
    ovr/Kernel/OVR_System.cpp
    ovr/Kernel/OVR_Timer.cpp
    ovr/Kernel/OVR_UTF8Util.cpp
    ovr/OVR_DeviceHandle.cpp
    ovr/OVR_DeviceImpl.cpp
    ovr/OVR_JSON.cpp
    ovr/OVR_LatencyTestImpl.cpp
    ovr/OVR_Profile.cpp
    ovr/OVR_SensorFilter.cpp
    ovr/OVR_SensorFusion.cpp
    ovr/OVR_SensorImpl.cpp
    ovr/OVR_ThreadCommandQueue.cpp
    ovr/Util/Util_LatencyTest.cpp
    ovr/Util/Util_Render_Stereo.cpp
)

set(MAIN_HEADER_FILES
    Include/OVR.h
    Include/OVRVersion.h
)

set(HEADER_FILES
    ovr/Kernel/OVR_Alg.h
    ovr/Kernel/OVR_Allocator.h
    ovr/Kernel/OVR_Array.h
    ovr/Kernel/OVR_Atomic.h
    ovr/Kernel/OVR_Color.h
    ovr/Kernel/OVR_ContainerAllocator.h
    ovr/Kernel/OVR_File.h
    ovr/Kernel/OVR_Hash.h
    ovr/Kernel/OVR_KeyCodes.h
    ovr/Kernel/OVR_List.h
    ovr/Kernel/OVR_Log.h
    ovr/Kernel/OVR_Math.h
    ovr/Kernel/OVR_RefCount.h
    ovr/Kernel/OVR_Std.h
    ovr/Kernel/OVR_String.h
    ovr/Kernel/OVR_SysFile.h
    ovr/Kernel/OVR_System.h
    ovr/Kernel/OVR_Timer.h
    ovr/Kernel/OVR_Threads.h
    ovr/Kernel/OVR_Types.h
    ovr/Kernel/OVR_UTF8Util.h
    ovr/OVR_Device.h
    ovr/OVR_DeviceConstants.h
    ovr/OVR_DeviceHandle.h
    ovr/OVR_DeviceImpl.h
    ovr/OVR_DeviceMessages.h
    ovr/OVR_HIDDevice.h
    ovr/OVR_HIDDeviceBase.h
    ovr/OVR_HIDDeviceImpl.h
    ovr/OVR_JSON.h
    ovr/OVR_LatencyTestImpl.h
    ovr/OVR_Profile.h
    ovr/OVR_SensorFilter.h
    ovr/OVR_SensorFusion.h
    ovr/OVR_SensorImpl.h
    ovr/OVR_ThreadCommandQueue.h
    ovr/Util/Util_LatencyTest.h
    ovr/Util/Util_Render_Stereo.h
)

if(WIN32)
    list(APPEND SOURCE_FILES
        ovr/Kernel/OVR_ThreadsWinAPI.cpp
        ovr/OVR_Win32_DeviceManager.cpp
        ovr/OVR_Win32_DeviceStatus.cpp
        ovr/OVR_Win32_HIDDevice.cpp
        ovr/OVR_Win32_HMDDevice.cpp
        ovr/OVR_Win32_SensorDevice.cpp
    )
    list(APPEND HEADER_FILES
        ovr/OVR_Win32_DeviceManager.h
        ovr/OVR_Win32_DeviceStatus.h
        ovr/OVR_Win32_HIDDevice.h
        ovr/OVR_Win32_HMDDevice.h
        ovr/OVR_Win32_SensorDevice.h
    )
elseif(APPLE)
    list(APPEND SOURCE_FILES
        ovr/Kernel/OVR_ThreadsPthread.cpp
        ovr/OVR_OSX_DeviceManager.cpp
        ovr/OVR_OSX_HIDDevice.cpp
        ovr/OVR_OSX_HMDDevice.cpp
        ovr/OVR_OSX_SensorDevice.cpp
    )
    list(APPEND HEADER_FILES
        ovr/OVR_OSX_DeviceManager.h
        ovr/OVR_OSX_HIDDevice.h
        ovr/OVR_OSX_HMDDevice.h
    )
else()
    list(APPEND SOURCE_FILES
        ovr/Kernel/OVR_ThreadsPthread.cpp
        ovr/OVR_Linux_DeviceManager.cpp
        ovr/OVR_Linux_HIDDevice.cpp
        ovr/OVR_Linux_HMDDevice.cpp
        ovr/OVR_Linux_SensorDevice.cpp
    )
    list(APPEND HEADER_FILES
        ovr/OVR_Linux_DeviceManager.h
        ovr/OVR_Linux_HIDDevice.h
        ovr/OVR_Linux_HMDDevice.h
    )
    list(APPEND EXTRA_LIBS
        EDID
    )
    include_directories(${LIB_EDID_SOURCE_DIR})
endif()

if(WIN32)
    SET(OculusVR_EXTRA_LIBS setupapi winmm)
elseif(APPLE)
    # FIXME ???
else()
    # FIXME switch to pkg-config for this?
    SET(OculusVR_EXTRA_LIBS pthread udev X11 Xinerama)
endif()

add_library(OculusVR STATIC ${SOURCE_FILES} ${HEADER_FILES})
target_link_libraries(OculusVR ${OculusVR_EXTRA_LIBS})

#set_target_properties(OculusVR PROPERTIES SOVERSION ${OCULUS_MAJOR_VERSION} VERSION ${OCULUS_VERSION_FULL})
install (TARGETS OculusVR DESTINATION ${CMAKE_INSTALL_PREFIX}/lib COMPONENT shlib)

install(FILES ${MAIN_HEADER_FILES} DESTINATION ${CMAKE_INSTALL_PREFIX}/include/)
install(DIRECTORY ovr DESTINATION ${CMAKE_INSTALL_PREFIX}/include FILES_MATCHING PATTERN "*.h")


########################################
# Make the package config files
configure_file(
${CMAKE_SOURCE_DIR}/cmake/pkgconfig/OculusVR.in
${CMAKE_CURRENT_BINARY_DIR}/cmake/pkgconfig/OculusVR.pc @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/cmake/pkgconfig/OculusVR.pc
DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig
COMPONENT pkgconfig)
