# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    gflags
    VERSION
    2.1.2-p0
    URL
    "https://github.com/hunter-packages/gflags/archive/v2.1.2-p0.tar.gz"
    SHA1
    113255cba87b6af61663014f446e2d69d0d2bc3a
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(gflags)
hunter_download(PACKAGE_NAME gflags)
