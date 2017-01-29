# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Bullet
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/hunter-packages/Bullet/archive/v1.0.0-p0.tar.gz"
    SHA1
    b407635627ed2692c05e13f8290a32615c8f016a
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Bullet)
hunter_download(PACKAGE_NAME Bullet)
