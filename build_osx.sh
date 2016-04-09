git clone https://github.com/assimp/assimp.git assimp_build
cd assimp_build
git checkout v3.2
cmake -D ASSIMP_BUILD_ASSIMP_TOOLS=OFF -D ASSIMP_BUILD_TESTS=OFF -D BUILD_SHARED_LIBS=OFF -D CMAKE_BUILD_TYPE=Release -D "LIBRARY_SUFFIX=" CMakeLists.txt
make
cd ..
mkdir -p assimp/v3.2/osx-32
cp assimp_build/lib/* assimp/v3.2/osx-32/
