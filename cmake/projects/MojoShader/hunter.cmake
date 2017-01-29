# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    MojoShader
    VERSION
    "1.0.0"
    URL
    "https://github.com/headupinclouds/PugiXml/archive/v1.0.0.tar.gz"
    SHA1
    395371581a5d2cdb4bdfcbdcf51871156d54956f
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(MojoShader)
hunter_download(PACKAGE_NAME MojoShader)
