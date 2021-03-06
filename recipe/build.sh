#!/bin/sh

autoreconf -vfi
./configure --prefix=${PREFIX} \
            --build=${BUILD} \
            --host=${HOST} \
            --with-hdf5=${PREFIX} \
            --with-zlib=${PREFIX}

make -j${CPU_COUNT}
make install
make check

pushd include
make install-includeHEADERS
popd
