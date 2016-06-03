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
    "1.0.0-p0"
    URL
    "https://github.com/headupinclouds/LZ4/archive/v1.0.0-p0.tar.gz"
    SHA1
    bb813ee90c535148c4eecbed562f59dfa751063e
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(LZ4)
hunter_download(PACKAGE_NAME LZ4)
