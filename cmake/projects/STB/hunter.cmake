# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    STB
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/headupinclouds/STB/archive/v1.0.0-p0.tar.gz"
    SHA1
    d52635dff8644783423250d1f43c1015524ac033
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(STB)
hunter_download(PACKAGE_NAME STB)
