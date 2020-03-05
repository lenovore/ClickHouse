# This strings autochanged from release_lib.sh:
set(VERSION_REVISION 54431)
set(VERSION_MAJOR 20)
set(VERSION_MINOR 1)
set(VERSION_PATCH 6)
set(VERSION_GITHASH beeb7188eeb1705e265bc18079571f8b81be8794)
set(VERSION_DESCRIBE v20.1.6.1-stable)
set(VERSION_STRING 20.1.6.1)
# end of autochange

set(VERSION_EXTRA "" CACHE STRING "")
set(VERSION_TWEAK "" CACHE STRING "")

if (VERSION_TWEAK)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_TWEAK})
endif ()

if (VERSION_EXTRA)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_EXTRA})
endif ()

set (VERSION_NAME "${PROJECT_NAME}")
set (VERSION_FULL "${VERSION_NAME} ${VERSION_STRING}")
set (VERSION_SO "${VERSION_STRING}")

math (EXPR VERSION_INTEGER "${VERSION_PATCH} + ${VERSION_MINOR}*1000 + ${VERSION_MAJOR}*1000000")

if(YANDEX_OFFICIAL_BUILD)
    set(VERSION_OFFICIAL " (official build)")
endif()
