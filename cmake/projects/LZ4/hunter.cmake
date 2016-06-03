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
    "1.0.0-p2"
    URL
    "https://github.com/headupinclouds/LZ4/archive/v1.0.0-p2.tar.gz"
    SHA1
    d39ef3e2365114e8ce1718b99899a25fd246f361
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(LZ4)
hunter_download(PACKAGE_NAME LZ4)
