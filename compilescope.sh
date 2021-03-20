#!/bin/bash

#Assumes you are in the directory

git clone https://github.com/Z3Prover/z3
cd z3

# https://clang-analyzer.llvm.org
mkdir build
pushd build
cmake ../
scan-build make;
cd ..

# https://clang.llvm.org/docs/MemorySanitizer.html
mkdir build_msan
cd build_msan
# clang -fsanitize=memory -fsanitize-memory-track-origins=2 -fno-omit-frame-pointer -g -O2
cmake ../
make -j
cd ..

# https://clang.llvm.org/docs/AddressSanitizer.html
# https://clang.llvm.org/docs/LeakSanitizer.html
mkdir build_asan
cd build_asan
# clang -fsanitize=address -fsanitize=leak -fno-optimize-sibling-calls -fno-omit-frame-pointer -g -O1
cmake ../
make -j
cd ..

#https://clang.llvm.org/docs/ThreadSanitizer.html
#-fsanitize=thread -g -O1 

#https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html
#-fsanitize=undefined

# https://gcc.gnu.org/onlinedocs/gcc-10.2.0/gcc/Instrumentation-Options.html#Instrumentation-Options

# https://developers.redhat.com/blog/2020/03/26/static-analysis-in-gcc-10/
# gcc-10 -fanalyzer
#-fsanitize=address -fsanitize=pointer-subtract -fsanitize=pointer-compare

#-fsanitize=thread
#-fsanitize=leak
#-fsanitize=undefined
#-fsanitize-address-use-after-scope



