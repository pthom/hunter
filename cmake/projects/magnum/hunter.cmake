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

if (WIN32)
    # windows (cf magnum/package/ci/appveyor-desktop.bat)
    set(MAGNUM_CMAKE_ARGS

    # WITH_AUDIO=OFF because OpenAL hunter package
    # fails to build under windows
    # See https://ci.appveyor.com/project/pthom/hunter/builds/20697140/job/03xop04ea11c47vf
    # CMake Error at C:/projects/hunter/_ci/cmake/share/cmake-3.13/Modules/CheckIncludeFiles.cmake:63 (message):
    # Unknown arguments:
    # -D_WIN32_WINNT=0x0502
    WITH_AUDIO=OFF
    WITH_ANYAUDIOIMPORTER=OFF
    WITH_WAVAUDIOIMPORTER=OFF
    WITH_AL_INFO=OFF

    WITH_SHAPES=ON
    WITH_SDL2APPLICATION=ON
    WITH_GLFWAPPLICATION=ON
    WITH_WINDOWLESSWGLAPPLICATION=ON
    WITH_WGLCONTEXT=ON
    WITH_OPENGLTESTER=ON
    WITH_ANYIMAGECONVERTER=ON
    WITH_ANYIMAGEIMPORTER=ON
    WITH_ANYSCENEIMPORTER=ON
    WITH_MAGNUMFONT=ON
    WITH_MAGNUMFONTCONVERTER=ON
    WITH_OBJIMPORTER=ON
    WITH_DISTANCEFIELDCONVERTER=ON
    WITH_FONTCONVERTER=ON
    WITH_IMAGECONVERTER=ON
    WITH_GL_INFO=ON

    WITH_TGAIMAGECONVERTER=ON
    WITH_TGAIMPORTER=ON

    BUILD_TESTS=OFF
    BUILD_GL_TESTS=OFF
    )
endif()

if (UNIX)
    # Linux (cf magnum/package/debian/rules)
    set(MAGNUM_CMAKE_ARGS
    WITH_AUDIO=ON
    WITH_GLXAPPLICATION=ON
    WITH_GLFWAPPLICATION=OFF
    WITH_SDL2APPLICATION=ON
    WITH_WINDOWLESSGLXAPPLICATION=ON
    WITH_GLXCONTEXT=ON
    WITH_OPENGLTESTER=ON
    WITH_ANYAUDIOIMPORTER=ON
    WITH_ANYIMAGECONVERTER=ON
    WITH_ANYIMAGEIMPORTER=ON
    WITH_ANYSCENEIMPORTER=ON
    WITH_MAGNUMFONT=ON
    WITH_MAGNUMFONTCONVERTER=ON
    WITH_OBJIMPORTER=ON
    WITH_TGAIMAGECONVERTER=ON
    WITH_TGAIMPORTER=ON
    WITH_WAVAUDIOIMPORTER=ON
    WITH_DISTANCEFIELDCONVERTER=ON
    WITH_IMAGECONVERTER=ON
    WITH_FONTCONVERTER=ON
    WITH_GL_INFO=ON
    WITH_AL_INFO=ON
    )
endif()

if (ANDROID)
    # cf magnum/package/ci/travis-android-arm.sh
    set(MAGNUM_CMAKE_ARGS
    TARGET_GLES2=OFF

    WITH_AUDIO=OFF
    WITH_SHAPES=ON
    WITH_VK=OFF
    WITH_ANDROIDAPPLICATION=ON
    WITH_EGLCONTEXT=ON
    WITH_ANYAUDIOIMPORTER=OFF
    WITH_ANYIMAGECONVERTER=ON
    WITH_ANYIMAGEIMPORTER=ON
    WITH_ANYSCENEIMPORTER=ON
    WITH_MAGNUMFONT=ON
    WITH_MAGNUMFONTCONVERTER=ON
    WITH_OBJIMPORTER=ON
    WITH_TGAIMAGECONVERTER=ON
    WITH_TGAIMPORTER=ON
    WITH_WAVAUDIOIMPORTER=OFF
    WITH_GL_INFO=ON

    BUILD_TESTS=OFF
    BUILD_GL_TESTS=OFF
)
endif()

if (APPLE AND NOT IOS)
    # MACOS / OSX ( cf magnum/package/homebrew/magnum.rb)
    set(MAGNUM_CMAKE_ARGS
    WITH_AUDIO=ON
    WITH_GLFWAPPLICATION=OFF
    WITH_SDL2APPLICATION=ON
    WITH_WINDOWLESSCGLAPPLICATION=ON
    WITH_CGLCONTEXT=ON
    WITH_OPENGLTESTER=ON
    WITH_ANYAUDIOIMPORTER=ON
    WITH_ANYIMAGECONVERTER=ON
    WITH_ANYIMAGEIMPORTER=ON
    WITH_ANYSCENEIMPORTER=ON
    WITH_MAGNUMFONT=ON
    WITH_MAGNUMFONTCONVERTER=ON
    WITH_OBJIMPORTER=ON
    WITH_TGAIMAGECONVERTER=ON
    WITH_TGAIMPORTER=ON
    WITH_WAVAUDIOIMPORTER=ON
    WITH_DISTANCEFIELDCONVERTER=ON
    WITH_FONTCONVERTER=ON
    WITH_IMAGECONVERTER=ON
    WITH_GL_INFO=ON
    WITH_AL_INFO=ON
    )
endif()

if (IOS)
    # cf magnum/package/ci/travis-ios-simulator.sh
    set(MAGNUM_CMAKE_ARGS
    TARGET_GLES2=ON

    # FIXME: those components fail under iOS
    WITH_SDL2APPLICATION=OFF
    WITH_AUDIO=OFF
    WITH_WAVAUDIOIMPORTER=OFF
    WITH_ANYAUDIOIMPORTER=OFF

    WITH_EGLCONTEXT=ON
    WITH_OPENGLTESTER=ON

    WITH_SHAPES=ON
    WITH_VK=OFF
    WITH_WINDOWLESSIOSAPPLICATION=ON
    WITH_ANYIMAGECONVERTER=ON
    WITH_ANYIMAGEIMPORTER=ON
    WITH_ANYSCENEIMPORTER=ON
    WITH_MAGNUMFONT=ON
    WITH_MAGNUMFONTCONVERTER=ON
    WITH_OBJIMPORTER=ON
    WITH_TGAIMAGECONVERTER=ON
    WITH_TGAIMPORTER=ON
    BUILD_STATIC=ON

    BUILD_TESTS=OFF
    BUILD_GL_TESTS=OFF
    )
endif()

if (EMSCRIPTEN)
    # cf magnum/package/archlinux/PKGBUILD-emscripten-webgl2
    set(MAGNUM_CMAKE_ARGS
    TARGET_GLES2=OFF
    WITH_AUDIO=ON
    WITH_SHAPES=ON
    WITH_SDL2APPLICATION=ON
    WITH_WINDOWLESSEGLAPPLICATION=ON
    WITH_ANYAUDIOIMPORTER=ON
    WITH_ANYIMAGECONVERTER=ON
    WITH_ANYIMAGEIMPORTER=ON
    WITH_ANYSCENEIMPORTER=ON
    WITH_MAGNUMFONT=ON
    WITH_OBJIMPORTER=ON
    WITH_TGAIMAGECONVERTER=ON
    WITH_TGAIMPORTER=ON
    WITH_WAVAUDIOIMPORTER=ON
    WITH_GL_INFO=ON
    WITH_AL_INFO=ON

    BUILD_TESTS=OFF
    BUILD_GL_TESTS=OFF
    )
endif()


hunter_cmake_args(
    magnum
    CMAKE_ARGS
    ${MAGNUM_CMAKE_ARGS}
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(magnum)
hunter_download(PACKAGE_NAME magnum)
