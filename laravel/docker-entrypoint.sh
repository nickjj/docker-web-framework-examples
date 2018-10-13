#!/bin/bash
set -e

ROOT=$(dirname "$0")
DATABASE="db:3306"

[[ ! -f .env ]] && envsubst < .env.example > .env

source "${ROOT}/.env"

[[ -z "${APP_KEY}" ]] && php artisan key:generate

bash scripts/wait-for-it.sh "${DATABASE}" --strict -- php artisan migrate

exec "$@"
