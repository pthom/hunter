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
    "1.0.0"
    URL
    "https://github.com/headupinclouds/JO/archive/v1.0.0.tar.gz"
    SHA1
    047e8329fd2f397f479479c5495815cec1fa418f  
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(JO)
hunter_download(PACKAGE_NAME JO)
