#!/bin/bash

set -e

if [ ! -d "/build/src/debian" ]; then
    echo "Error: source code is not complete."
    exit -1
fi

cd /build/src

mk-build-deps --install --remove --tool 'apt-get -y --no-install-recommends'
debuild -b -uc -us

mkdir -p /build/output
mv /build/*.deb /build/output/
mv /build/*.ddeb /build/output/

exit 0
