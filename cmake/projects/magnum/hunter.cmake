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
    magnum_hunter_v21
    URL
    "https://github.com/pthom/magnum/archive/magnum_hunter_v21.tar.gz"
    SHA1
    cce195976ab1ae721d990406479320d8d277b1c2
)



hunter_cmake_args(
    magnum
    CMAKE_ARGS
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
        WITH_ANYAUDIOIMPORTER=ON
        # Build AnyImageConverter plugin
        WITH_ANYIMAGECONVERTER=ON
        # Build AnyImageImporter plugin
        WITH_ANYIMAGEIMPORTER=ON
        # Build AnySceneImporter plugin
        WITH_ANYSCENEIMPORTER=ON
        # Build Audio library
        WITH_AUDIO=ON
        # Build CglContext library
        WITH_CGLCONTEXT=ON
        # Build DebugTools library
        WITH_DEBUGTOOLS=ON
        # Build magnum-distancefieldconverter utility
        WITH_DISTANCEFIELDCONVERTER=ON
        # Build EglContext library
        WITH_EGLCONTEXT=OFF
        # Build magnum-fontconverter utility
        WITH_FONTCONVERTER=ON
        # Build GlfwApplication library
        WITH_GLFWAPPLICATION=OFF
        # Build GlutApplication library
        WITH_GLUTAPPLICATION=OFF
        # Build magnum-gl-info utility
        WITH_GL_INFO=ON
        # Build magnum-imageconverter utility
        WITH_IMAGECONVERTER=ON
        # Build MagnumFont plugin
        WITH_MAGNUMFONT=ON
        # Build MagnumFontConverter plugin
        WITH_MAGNUMFONTCONVERTER=ON
        # Build MeshTools library
        WITH_MESHTOOLS=ON
        # Build ObjImporter plugin
        WITH_OBJIMPORTER=ON
        # Build OpenGLTester library
        WITH_OPENGLTESTER=ON
        # Builf Primitives library
        WITH_PRIMITIVES=ON
        # Build SceneGraph library
        WITH_SCENEGRAPH=ON
        # Build Sdl2Application library
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
        WITH_WINDOWLESSCGLAPPLICATION=ON
        # Build WindowlessEglApplication library
        WITH_WINDOWLESSEGLAPPLICATION=OFF
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(magnum)
hunter_download(PACKAGE_NAME magnum)
