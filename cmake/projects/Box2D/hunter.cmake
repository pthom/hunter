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
    "1.0.0"
    URL
    "https://github.com/headupinclouds/Box2D/archive/v1.0.0.tar.gz"
    SHA1
    7edcf84ad29d02f2fe627e1455cc1df7fc647e50
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Box2D)
hunter_download(PACKAGE_NAME Box2D)
