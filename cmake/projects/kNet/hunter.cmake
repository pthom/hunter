# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    kNet
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/hunter-packages/kNet/archive/v1.0.0-p0.tar.gz"
    SHA1
    8505ccf544b62edc6a9b67b791009119cd736213    
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(kNet)
hunter_download(PACKAGE_NAME kNet)
