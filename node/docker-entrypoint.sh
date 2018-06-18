#!/bin/sh

set -e

built_lock_file="/node/yarn.lock"
current_lock_file="/app/yarn.lock"

function cp_built_lock_file() {
    cp "${built_lock_file}" "${current_lock_file}"
}

# This avoids your app mount clobbering the "real" yarn.lock file that was
# created when building your dependencies using docker build.
if [ -f "${current_lock_file}" ]; then
    if [ diff "${built_lock_file}" "${current_lock_file}" != "" ]; then
        cp_built_lock_file
    fi
else
    cp_built_lock_file
fi

exec "$@"
