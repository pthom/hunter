# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    LibCpuId
    VERSION
    "1.0.0"
    URL
    "https://github.com/headupinclouds/LibCpuId/archive/v1.0.0.tar.gz"
    SHA1
    21f502a12eb3ffbcf63635897d20d7773ca03de1
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(LibCpuId)
hunter_download(PACKAGE_NAME LibCpuId)
