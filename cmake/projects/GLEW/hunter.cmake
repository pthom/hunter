# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    GLEW
    VERSION
    "1.0.0"
    URL
    "https://github.com/headupinclouds/GLEW/archive/v1.0.0.tar.gz"
    SHA1
    8179fa9c015de071557fc3a1775c458dc23e82d1
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(GLEW)
hunter_download(PACKAGE_NAME GLEW)
