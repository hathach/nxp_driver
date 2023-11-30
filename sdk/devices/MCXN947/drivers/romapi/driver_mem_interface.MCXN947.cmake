# Add set(CONFIG_USE_driver_mem_interface true) in config.cmake to use this component

include_guard(GLOBAL)
message("${CMAKE_CURRENT_LIST_FILE} component is included.")

if(CONFIG_USE_driver_common)

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/mem_interface/src/fsl_mem_interface.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/mem_interface
  ${CMAKE_CURRENT_LIST_DIR}/flash
  ${CMAKE_CURRENT_LIST_DIR}/nboot
)

else()

message(SEND_ERROR "driver_mem_interface.MCXN947 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()
