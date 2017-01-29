# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    AngelScript
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/AngelScript/archive/v1.0.0.tar.gz"
    SHA1
    b34e7a087513b579368927642e576722cbe067e8
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(AngelScript)
hunter_download(PACKAGE_NAME AngelScript)
