rm -rf freetype_build
git clone http://git.sv.nongnu.org/r/freetype/freetype2.git freetype_build
cd freetype_build
git checkout VER-2-6-3
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D WITH_PNG=OFF -D WITH_ZLIB=ON -D WITH_BZip2=ON ..
cmake --build .
cd ../..
mkdir -p freetype/v2.6.3/x86_64-apple-darwin
cp freetype_build/build/libfreetype.a freetype/v2.6.3/x86_64-apple-darwin/libfreetype.a