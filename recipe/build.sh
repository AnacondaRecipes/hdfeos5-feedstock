#!/bin/sh

# export CC=${PREFIX}/bin/h5cc
# export CXX=${PREFIX}/bin/h5c++
# export DYLD_FALLBACK_LIBRARY_PATH=${PREFIX}/lib
# export CFLAGS="-fPIC"

# export HDF5_LDFLAGS="-L ${PREFIX}/lib"

./configure --prefix=${PREFIX} \
            --build=${BUILD} \
            --host=${HOST} \
            --with-hdf5=${PREFIX} \
            --with-zlib=${PREFIX} \
            --enable-shared=yes \
            --enable-static=no

make
make check
make install

pushd include
make install-includeHEADERS
popd
