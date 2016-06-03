# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)


hunter_add_version(
    PACKAGE_NAME
    LZ4
    VERSION
    "1.0.0"
    URL
    "https://github.com/headupinclouds/LZ4/archive/v1.0.0.tar.gz"
    SHA1
    c4b54ccbec55574caaef2dbad1999be137ba65b7
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(LZ4)
hunter_download(PACKAGE_NAME LZ4)
