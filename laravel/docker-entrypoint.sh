#!/bin/bash
set -e

# Wait for database connection to responsive
./scripts/wait-for-it.sh "${DB_HOST}:${DB_PORT}" --strict -- \
    php artisan migrate

exec "$@"
