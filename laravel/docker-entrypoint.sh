#!/bin/bash
set -e

ROOT=$(dirname "$0")
DATABASE="db:3306"

source "${ROOT}/.env"

[[ -z "${APP_KEY}" ]] && php artisan key:generate && source "${ROOT}/.env"

bash scripts/wait-for-it.sh "${DATABASE}" --strict -- php artisan migrate

exec "$@"
