# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    PugiXml
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/headupinclouds/PugiXml/archive/v1.0.0-p0.tar.gz"
    SHA1
    0beb7d1550020a06901d0a168c30cdb81c6f4f0e    
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(PugiXml)
hunter_download(PACKAGE_NAME PugiXml)
