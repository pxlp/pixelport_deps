rm -rf assimp_build
git clone https://github.com/assimp/assimp.git assimp_build
cd assimp_build
git checkout v3.2
mkdir build
cd build
cmake -G "Unix Makefiles" -DASSIMP_BUILD_ASSIMP_TOOLS=OFF -DASSIMP_BUILD_TESTS=OFF -DBUILD_SHARED_LIBS=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS="-m64" -DCMAKE_CXX_FLAGS="-m64 -D_GLIBCXX_USE_CXX11_ABI=0" -DCMAKE_DISABLE_FIND_PACKAGE_ZLIB=ON -DPKG_CONFIG_EXECUTABLE="" ..
cmake --build .
mkdir -p ../../assimp/v3.2/x86_64-pc-windows-gnu
cp code/libassimp.a ../../assimp/v3.2/x86_64-pc-windows-gnu/libassimp.a
cp contrib/zlib/libzlibstatic.a ../../zlib/v1.2.8/x86_64-pc-windows-gnu/libz.a
