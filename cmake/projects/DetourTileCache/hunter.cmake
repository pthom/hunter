# Copyright (c) 2016, Ruslan Baratov, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    DetourTileCache
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/DetourTileCache/archive/v1.0.0.tar.gz"
    SHA1
    fa7997e79531ddc0ae21c988f47ce1bf258e2463
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(DetourTileCache)
hunter_download(PACKAGE_NAME DetourTileCache)
