# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Civetweb
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/Civetweb/archive/v1.0.0.tar.gz"
    SHA1
    e5fb2255b43eea67a31b3cd55aaaa46de73108c3
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Civetweb)
hunter_download(PACKAGE_NAME Civetweb)
