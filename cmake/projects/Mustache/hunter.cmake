# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Mustache
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/Mustache/archive/v1.0.0.tar.gz"
    SHA1
    8be63031056affcaf92a2ceb03f626f1028f5b46
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Mustache)
hunter_download(PACKAGE_NAME Mustache)
