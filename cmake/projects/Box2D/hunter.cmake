# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Box2D
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/hunter-packages/Box2D/archive/v1.0.0-p0.tar.gz"
    SHA1
    6c00ce441ea1d78ec1ca2e3d5e43929babd9b4f4
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Box2D)
hunter_download(PACKAGE_NAME Box2D)
