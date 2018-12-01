# Build native corrade-rc
cd ~
git clone https://github.com/mosra/corrade.git corrade-rc-build
cd corrade-rc-build
mkdir build && cd build
cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DWITH_INTERCONNECT=OFF \
    -DWITH_PLUGINMANAGER=OFF \
    -DWITH_TESTSUITE=OFF \
    -DWITH_UTILITY=OFF
make
mkdir ~/corrade-rc-bin
cp src/Corrade/Utility/corrade-rc ~/corrade-rc-bin/corrade-rc
