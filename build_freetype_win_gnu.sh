rm -rf freetype_build
git clone http://git.sv.nongnu.org/r/freetype/freetype2.git freetype_build
cd freetype_build
git checkout VER-2-6-3
mkdir build
cd build
cmake -G "Unix Makefiles" -DWITH_PNG=OFF -DWITH_ZLIB=ON -DWITH_HarfBuzz=OFF -DWITH_BZip2=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS=-m64 -DCMAKE_CXX_FLAGS=-m64  ..
cmake --build .
cd ../..
mkdir -p freetype/v2.6.3/x86_64-pc-windows-gnu
cp freetype_build/build/libfreetype.a freetype/v2.6.3/x86_64-pc-windows-gnu/libfreetype.a
