# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)


hunter_add_version(
    PACKAGE_NAME
    magnum
    VERSION
    hunter_rc3
    URL
    "https://github.com/pthom/magnum/archive/hunter_rc3.tar.gz"
    SHA1
    990c49b8bb085c395eebe8a46686552767cffb3f
)

hunter_add_version(
    PACKAGE_NAME
    magnum
    VERSION
    magnum_hunter_rc2
    URL
    "https://github.com/pthom/magnum/archive/magnum_hunter_rc2.tar.gz"
    SHA1
    69e0a68a8a8b0b329909cf99c9a8367f73556f27
)


# CMAKE_SYSTEM_NAME dependant default options below

# Take all the plugins
set(MAGNUM_CMAKE_ARGS
    WITH_ANYIMAGECONVERTER=ON
    WITH_ANYIMAGEIMPORTER=ON
    WITH_ANYSCENEIMPORTER=ON
    WITH_MAGNUMFONT=ON
    WITH_MAGNUMFONTCONVERTER=ON
    WITH_OBJIMPORTER=ON
    WITH_TGAIMAGECONVERTER=ON
    WITH_TGAIMPORTER=ON)

# Default application implementation
if(ANDROID)
    list(APPEND MAGNUM_CMAKE_ARGS WITH_ANDROIDAPPLICATION=ON)
elseif(NOT IOS)
    # TODO: There's no SDL2 for iOS?
    list(APPEND MAGNUM_CMAKE_ARGS WITH_SDL2APPLICATION=ON)
endif()

# Command-line utilities for desktop platforms
if(WIN32 OR UNIX)
    list(APPEND MAGNUM_CMAKE_ARGS
        WITH_GL_INFO=ON
        WITH_DISTANCEFIELDCONVERTER=ON
        WITH_FONTCONVERTER=ON
        WITH_IMAGECONVERTER=ON
        WITH_OPENGLTESTER=ON)
endif()

# Windows-specific
if(WIN32)
    list(APPEND MAGNUM_CMAKE_ARGS
        WITH_WINDOWLESSWGLAPPLICATION=ON
        WITH_WGLCONTEXT=ON)
endif()

# Linux-specific
if(UNIX AND NOT APPLE)
    list(APPEND MAGNUM_CMAKE_ARGS
        WITH_WINDOWLESSGLXAPPLICATION=ON
        WITH_GLXCONTEXT=ON)
endif()

# macOS-specific
if(APPLE AND NOT IOS)
    list(APPEND MAGNUM_CMAKE_ARGS
        WITH_WINDOWLESSCGLAPPLICATION=ON
        WITH_CGLCONTEXT=ON)
endif()

# iOS-specific
if(IOS)
    list(APPEND MAGNUM_CMAKE_ARGS
        WITH_WINDOWLESSIOSAPPLICATION=ON
        WITH_EGLCONTEXT=ON)
endif()

# Emscripten-specific. No EglContext here.
if(EMSCRIPTEN)
    list(APPEND MAGNUM_CMAKE_ARGS
        WITH_WINDOWLESSEGLAPPLICATION=ON)
endif()

# Audio, where supported.
# - Linux and macOS has it
# - OpenAL hunter package fails to build under windows
#   See https://ci.appveyor.com/project/pthom/hunter/builds/20697140/job/03xop04ea11c47vf
#   CMake Error at C:/projects/hunter/_ci/cmake/share/cmake-3.13/Modules/CheckIncludeFiles.cmake:63 (message):
#   Unknown arguments:
#   -D_WIN32_WINNT=0x0502
# - Audio / OpenAL not ported to Android yet
# TODO: There's no OpenAL package on iOS?
if((UNIX OR EMSCRIPTEN) AND NOT IOS)
    list(APPEND MAGNUM_CMAKE_ARGS
        WITH_AUDIO=ON
        WITH_WAVAUDIOIMPORTER=ON
        WITH_ANYAUDIOIMPORTER=ON)

    # Also the magnum-al-info for desktop platforms
    if(UNIX)
        list(APPEND MAGNUM_CMAKE_ARGS WITH_AL_INFO=ON)
    endif()
endif()

hunter_cmake_args(
    magnum
    CMAKE_ARGS
    ${MAGNUM_CMAKE_ARGS}
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(magnum)
hunter_download(PACKAGE_NAME magnum)
