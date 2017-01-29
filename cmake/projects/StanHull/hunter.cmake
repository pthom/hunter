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
    "1.0.0-p0"
    URL
    "https://github.com/headupinclouds/StanHull/archive/v1.0.0-p0.tar.gz"
    SHA1
    1496eed8b265333d0b3a9b657f20c7fcc289b53e
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(StanHull)
hunter_download(PACKAGE_NAME StanHull)
