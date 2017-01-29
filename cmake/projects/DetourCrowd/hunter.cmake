# Copyright (c) 2016, Ruslan Baratov, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    DetourCrowd
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/hunter-packages/DetourCrowd/archive/v1.0.0-p0.tar.gz"
    SHA1
    628a60a9652de12acd7b814d560a82eca0b5087e
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(DetourCrowd)
hunter_download(PACKAGE_NAME DetourCrowd)
