#!/bin/bash

set -e

if [ ! -d "/build/src/debian" ]; then
    echo "Error: source code is not complete."
    exit -1
fi

cd /build/src

mk-build-deps --install --remove
debuild -b -uc -us

mkdir -p /build/output
mv /build/*.deb /build/*.ddeb /build/*.build /build/*.buildinfo /build/*.changes /build/output/

exit 0
