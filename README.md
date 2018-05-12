LLPE
====

LLPE is a highly-accurate partial evaluator targeting LLVM
intermediate representation, and therefore suitable for specialising
C, C++ and FORTRAN programs amongst other languages that are readily
compiled to IR.

For more information check out its [website](http://www.llpe.org/) or
the [llpe-dev forum](https://groups.google.com/forum/#!forum/llpe-dev)

This version compiles with LLVM 5.0

# Installation # 

## Cmake ## 

```
mkdir build
cd build
cmake -DLLVM_DIR=<LLVM_INSTALL>/lib/cmake/llvm -DCMAKE_INSTALL_PREFIX=<directory> ..
```

If no option `-DLLVM_DIR` is given cmake will install `LLVM 5.0`.

## Make ##

```
make all
make install INSTALL_DIR=<absolute path to a directory>
```

