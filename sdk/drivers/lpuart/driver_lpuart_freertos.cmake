#Description: LPUART Freertos Driver; user_visible: True
include_guard(GLOBAL)
message("driver_lpuart_freertos component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/fsl_lpuart_freertos.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/.
)

#OR Logic component
if(${MCUX_DEVICE} STREQUAL "MK22F51212")
    include(middleware_freertos-kernel_MK22F51212)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1062")
    include(middleware_freertos-kernel_MIMXRT1062)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1042")
    include(middleware_freertos-kernel_MIMXRT1042)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1176_cm4")
    include(middleware_freertos-kernel_MIMXRT1176_cm4)
endif()
if(${MCUX_DEVICE} STREQUAL "MIMXRT1176_cm7")
    include(middleware_freertos-kernel_MIMXRT1176_cm7)
endif()

include(driver_lpuart)