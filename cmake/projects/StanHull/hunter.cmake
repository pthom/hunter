# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    StanHull
    VERSION
    "1.0.0"
    URL
    "https://github.com/headupinclouds/StanHull/archive/v1.0.0.tar.gz"
    SHA1
    d999f019e12d8ba8a4979f25c41896bcee0e2d6e
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(StanHull)
hunter_download(PACKAGE_NAME StanHull)
