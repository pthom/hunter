# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    JO
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/headupinclouds/JO/archive/v1.0.0-p0.tar.gz"
    SHA1
    fbcf2199314eeec8d713c29ceff68b1fc17d7932
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(JO)
hunter_download(PACKAGE_NAME JO)
