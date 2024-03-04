#!/bin/sh

rm -r ./build
mkdir -p build
cmake -S ../serieseco_sw  \
    -B ./build \
    -DCMAKE_C_COMPILER:FILEPATH="$PWD"/RISC-V_Embedded_GCC/bin/riscv-none-embed-gcc\
    -DCMAKE_BUILD_TYPE:STRING=MinSizeRel

cmake   --build ./build --target all 
