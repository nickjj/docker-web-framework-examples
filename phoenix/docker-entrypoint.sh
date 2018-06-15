#!/bin/sh

set -e

built_lock_file="/elixir/mix.lock"
current_lock_file="/app/mix.lock"

function cp_built_lock_file() {
    cp "${built_lock_file}" "${current_lock_file}"
}

# This avoids your app mount clobbering the "real" mix.lock file that was
# created when building your dependencies using docker build.
#
# See: https://github.com/nickjj/docker-web-framework-examples/issues/1
if [ -f "${current_lock_file}" ]; then
    if [ diff "${built_lock_file}" "${current_lock_file}" != "" ]; then
        cp_built_lock_file
    fi
else
    cp_built_lock_file
fi

exec "$@"
