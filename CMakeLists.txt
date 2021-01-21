cmake_minimum_required(VERSION 3.10)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER avr-gcc)
set(CMAKE_CXX_COMPILER avr-g++)
set(CMAKE_ASM_COMPILER avr-gcc)

project(KCH06TC LANGUAGES C CXX VERSION 1.0)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(MCU atmega88pa)
set(F_CPU 8000000UL)
set(PROG_TYPE usbasp)
set(PROG_MCU m88p)
set(OPT_FLAG -O3)

add_definitions(
    -DF_CPU=${F_CPU}
    -DPROJECT_NAME=${PROJECT_NAME}
    -DPROJECT_VERSION=${PROJECT_VERSION}
    -DLC_INCLUDE=\"lc-addrlabels.h\"
    -DNDEBUG
)

add_compile_options(
    ${OPT_FLAG}
    -mmcu=${MCU}
    -Wall
    -Wstrict-prototypes
    -funsigned-char
    -funsigned-bitfields
    -fpack-struct
    -fshort-enums
    -flto
    -pipe
)

add_link_options(
    ${OPT_FLAG}
    -Wall
    -mmcu=${MCU}
    -flto
)

include_directories(
    lib/
    lib/YCMOS/include/
)

file(GLOB SRC_FILES "src/*.cpp")

add_executable(${PROJECT_NAME} ${SRC_FILES})

set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME ${PROJECT_NAME}.elf)
add_custom_target(strip ALL avr-strip ${PROJECT_NAME}.elf DEPENDS ${PROJECT_NAME})
add_custom_target(hex ALL avr-objcopy -R .eeprom -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.hex DEPENDS strip)
add_custom_target(eeprom avr-objcopy -j .eeprom  --set-section-flags=.eeprom="alloc,load"  --change-section-lma .eeprom=0 -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.eep DEPENDS strip)
add_custom_target(upload avrdude -c ${PROG_TYPE} -p ${PROG_MCU} -U flash:w:${PROJECT_NAME}.hex DEPENDS hex)
add_custom_target(upload_eeprom avrdude -c ${PROG_TYPE} -p ${PROG_MCU} -U eeprom:w:${PROJECT_NAME}.eep DEPENDS eeprom)
add_custom_target(erase avrdude -c ${PROG_TYPE} -p ${PROG_MCU} -e)
set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES "${PROJECT_NAME}.hex;${PROJECT_NAME}.eeprom;${PROJECT_NAME}.lst")
add_custom_target(size ALL avr-objdump -Pmem-usage ${PROJECT_NAME}.elf DEPENDS strip)
