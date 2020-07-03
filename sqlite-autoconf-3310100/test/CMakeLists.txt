cmake_minimum_required (VERSION 3.5)

SET(CMAKE_SYSTEM_NAME Linux)

#SET(TOOLSCHAIN_PATH "/home/hp/toolschain/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/")
#SET(TOOLSCHAIN_PATH "/home/hp/toolschain/gcc-linaro-aarch64-linux-gnu-4.9-2014.07_linux/")
SET(TOOLSCHAIN_PATH "/home/hp/toolschain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/")
SET(TOOLCHAIN_HOST "${TOOLSCHAIN_PATH}bin/aarch64-linux-gnu")

SET(CMAKE_C_COMPILER "${TOOLCHAIN_HOST}-gcc")
SET(CMAKE_CXX_COMPILER "${TOOLCHAIN_HOST}-g++")

SET(CMAEK_C_FLAGS "-lsqlapi -ldl -lpthread")
MESSAGE(STATUS "CMAEK_C_FLAGS :  ${CMAEK_C_FLAGS}")

project (sqlite_test)
###############################################

# 3. set include path
include_directories(${PROJECT_SOURCE_DIR}/../)
MESSAGE(STATUS "PROJECT SOURCE : (${PROJECT_SOURCE_DIR})")

# 4. set  source code path
set(SRC_LIST query.c)
#aux_source_directory(./ DIR_SRCS)

# 5. set lib path
#find_library(my_lib
#				NAMES  sqlite3
#				PATHS ${PROJECT_SOURCE_DIR}/../.libs)
#find_library(my_lib2
#				NAMES  pthread
#				PATHS "/home/hp/toolschain/gcc-linaro-aarch64-linux-gnu-4.9-2014.07_linux/aarch64-linux-gnu/libc")
link_directories(${PROJECT_SOURCE_DIR}/../.libs)
link_directories("/home/hp/toolschain/gcc-linaro-aarch64-linux-gnu-4.9-2014.07_linux/aarch64-linux-gnu/libc")
#link_directories("/home/hp/toolschain/gcc-linaro-aarch64-linux-gnu-4.9-2014.07_linux/aarch64-linux-gnu/libc/usr/lib")
#link_directories("/home/hp/toolschain/gcc-linaro-aarch64-linux-gnu-4.9-2014.07_linux/aarch64-linux-gnu/libc/usr/lib/aarch64-linux-gnu")
#link_directories("/home/hp/code/mysql/sqlite-autoconf-3310100/.libs/libsqlite3.a")

# 6. set output: elf or lib
SET(TARGET_BIN query_arm_6.4)
add_executable(${TARGET_BIN} ${SRC_LIST})
target_link_libraries(${TARGET_BIN} libsqlite3.so libpthread.a)


