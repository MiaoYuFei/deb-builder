#!/bin/bash

set -e

if /usr/bin/find "/docker-entrypoint.d/" -mindepth 1 -maxdepth 1 -type f -print -quit 2>/dev/null | read v; then
    find "/docker-entrypoint.d/" -follow -type f -print | sort -V | while read -r f; do
        if [ -x "$f" ]; then
            "$f"
        fi
    done
fi

exec "$@"
