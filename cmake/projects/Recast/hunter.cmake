# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Recast
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/Recast/archive/v1.0.0.tar.gz"
    SHA1
    be1701ee33d66f2a8f528a23f08b92b5b48f4e73
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Recast)
hunter_download(PACKAGE_NAME Recast)
