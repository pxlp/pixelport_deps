rm -rf assimp_build
git clone https://github.com/assimp/assimp.git assimp_build
cd assimp_build
git checkout v3.2
mkdir build
cd build
cmake -DASSIMP_BUILD_ASSIMP_TOOLS=OFF -DASSIMP_BUILD_TESTS=OFF -DBUILD_SHARED_LIBS=OFF -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
cd ../..
mkdir -p assimp/v3.2/x86_64-apple-darwin
cp assimp_build/build/code/libassimp.a assimp/v3.2/x86_64-apple-darwin/libassimp.a
