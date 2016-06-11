# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    clipper
    VERSION
    "22.0.0-p0"
    URL
    "https://github.com/hunter-packages/clipper/archive/v22.0.0-p0.tar.gz"
    SHA1
    b7f4efcd1a914050a324b5f87bbfa6aa1801a00b
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(clipper)
hunter_download(PACKAGE_NAME clipper)
