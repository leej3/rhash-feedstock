#!/bin/sh

set -x

./configure --prefix=${PREFIX} --extra-cflags="${CFLAGS}" --extra-ldflags="${LDFLAGS}"
make -j${CPU_COUNT}
make install
make -C librhash install-headers
