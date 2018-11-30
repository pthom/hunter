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
    magnum_hunter_v6
    URL
    "https://github.com/pthom/magnum/archive/magnum_hunter_v6.tar.gz"
    SHA1
    5cfdf0c5c73b3122b96a71c96e3ca661d49f4adb
)
  
hunter_add_version(
    PACKAGE_NAME
    magnum
    VERSION
    hunter-v2018.10-fix2
    URL
    "https://github.com/pthom/magnum/archive/hunter-v2018.10-fix2.tar.gz"
    SHA1
    e979ef0d28134a5944b7933023d68ef9531cdbf3
)

hunter_cmake_args(
    magnum
    CMAKE_ARGS
        #
        # This is a copy of the default magnum cmake options
        # except WITH_SDL2APPLICATION=ON
        # (which is required to build the example app in hunter's CI)
        #

        # Include deprecated API in the build
        BUILD_DEPRECATED=ON
        # Build in a way that makes it possible to use multiple thread-local
        # Magnum contexts
        BUILD_MULTITHREADED=ON
        # Build static plugins (default are dynamic)
        BUILD_PLUGINS_STATIC=OFF
        # Build static libraries (default are shared)
        BUILD_STATIC=OFF
        # Build static libraries and plugins with position-independent code
        BUILD_STATIC_PIC=ON
        # Build unit tests
        BUILD_TESTS=OFF

        # Build AnyAudioImporter plugin
        WITH_ANYAUDIOIMPORTER=OFF
        # Build AnyImageConverter plugin
        WITH_ANYIMAGECONVERTER=OFF
        # Build AnyImageImporter plugin
        WITH_ANYIMAGEIMPORTER=OFF
        # Build AnySceneImporter plugin
        WITH_ANYSCENEIMPORTER=OFF
        # Build Audio library
        WITH_AUDIO=OFF
        # Build CglContext library
        WITH_CGLCONTEXT=OFF
        # Build DebugTools library
        WITH_DEBUGTOOLS=ON
        # Build magnum-distancefieldconverter utility
        WITH_DISTANCEFIELDCONVERTER=OFF
        # Build EglContext library
        WITH_EGLCONTEXT=OFF
        # Build magnum-fontconverter utility
        WITH_FONTCONVERTER=OFF
        # Build GlfwApplication library
        WITH_GLFWAPPLICATION=OFF
        # Build GlutApplication library
        WITH_GLUTAPPLICATION=OFF
        # Build magnum-gl-info utility
        WITH_GL_INFO=OFF
        # Build magnum-imageconverter utility
        WITH_IMAGECONVERTER=OFF
        # Build MagnumFont plugin
        WITH_MAGNUMFONT=OFF
        # Build MagnumFontConverter plugin
        WITH_MAGNUMFONTCONVERTER=OFF
        # Build MeshTools library
        WITH_MESHTOOLS=ON
        # Build ObjImporter plugin
        WITH_OBJIMPORTER=OFF
        # Build OpenGLTester library
        WITH_OPENGLTESTER=OFF
        # Builf Primitives library
        WITH_PRIMITIVES=ON
        # Build SceneGraph library
        WITH_SCENEGRAPH=ON
        # Build Sdl2Application library
        # this is the only difference with the default args (required for the example app)
        WITH_SDL2APPLICATION=ON
        # Build Shaders library
        WITH_SHADERS=ON
        # Build Shapes library
        WITH_SHAPES=OFF
        # Build Text library
        WITH_TEXT=ON
        # Build TgaImageConverter plugin
        WITH_TGAIMAGECONVERTER=OFF
        # Build TgaImporter plugin
        WITH_TGAIMPORTER=OFF
        # Build Vk library
        WITH_VK=OFF
        # Build WavAudioImporter plugin
        WITH_WAVAUDIOIMPORTER=OFF
        # Build WindowlessCglApplication library
        WITH_WINDOWLESSCGLAPPLICATION=OFF
        # Build WindowlessEglApplication library
        WITH_WINDOWLESSEGLAPPLICATION=OFF
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(magnum)
hunter_download(PACKAGE_NAME magnum)
