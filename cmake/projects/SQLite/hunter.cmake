# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    SQLite
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/SQLite/archive/v1.0.0.tar.gz"
    SHA1
    5b3a005b2836a97767b7cfeaf23cb15d20a0ce33    
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(SQLite)
hunter_download(PACKAGE_NAME SQLite)
