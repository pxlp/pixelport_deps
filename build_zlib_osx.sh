rm -rf zlib_build
git clone https://github.com/madler/zlib.git zlib_build
cd zlib_build
git checkout v1.2.8
mkdir build
cd build
cmake ..
cmake --build .
cd ../..
mkdir -p zlib/v1.2.8/x86_64-apple-darwin
cp zlib_build/build/libz.a zlib/v1.2.8/x86_64-apple-darwin/libz.a
