rm -rf assimp_build
git clone https://github.com/assimp/assimp.git assimp_build
cd assimp_build
git checkout v3.2
mkdir build
cd build
cmake -D ASSIMP_BUILD_ASSIMP_TOOLS=OFF -D ASSIMP_BUILD_TESTS=OFF -D BUILD_SHARED_LIBS=OFF -D CMAKE_BUILD_TYPE=Release ..
cmake --build .
cd ../..
mkdir -p assimp/v3.2/x86_64-apple-darwin
cp assimp_build/build/code/libassimp.a assimp/v3.2/x86_64-apple-darwin/libassimp.a
