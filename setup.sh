
printf "Name: assimp\nDescription: assimp\nVersion: 3.2.0\nLibs: -L%s/assimp/v3.2/%s -lstdc++ -lassimp\n" $PXLP_DEPS_DIR $PXLP_TARGET > assimp.pc
