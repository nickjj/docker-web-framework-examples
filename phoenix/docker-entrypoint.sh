#!/bin/sh

set -e

# Generate a mix.lock file if it doesn't exist. This should only happen on
# brand new projects where mix deps.get was never ran before.
#
# This avoids having to ever run mix deps.get manually.
if [ ! -f "/app/mix.lock" ]; then
    mix deps.get
fi

exec "$@"
