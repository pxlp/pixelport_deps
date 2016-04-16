rm -rf zlib_build
git clone https://github.com/madler/zlib.git zlib_build
cd zlib_build
git checkout v1.2.8
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_C_FLAGS=-m64 -DCMAKE_CXX_FLAGS=-m64 ..
cmake --build .
cd ../..
mkdir -p zlib/v1.2.8/x86_64-pc-windows-gnu
cp zlib_build/build/libzlibstatic.a zlib/v1.2.8/x86_64-pc-windows-gnu/libz.a
