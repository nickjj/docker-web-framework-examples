# Stage 1: Backend app
FROM composer:1.7 as vendor

LABEL maintainer="Niko Heikkilä <yo@nikoheikkila.fi>"

ENV COMPOSER_ALLOW_SUPERUSER=1

WORKDIR /app

COPY composer.json composer.lock ./
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --no-autoloader \
    --prefer-dist

COPY . .
RUN composer dump-autoload --optimize

# Stage 2: Frontend assets
FROM node:10.12-alpine as frontend

RUN mkdir -p /app/public

COPY package.json webpack.mix.js yarn.lock /app/
COPY resources/js/ /app/resources/js/
COPY resources/sass/ /app/resources/sass/

WORKDIR /app

RUN yarn install && yarn production

# Stage 3: Final Application
FROM php:7.2-cli-alpine

RUN apk add --update bash \
    && docker-php-ext-install \
    pdo \
    pdo_mysql

WORKDIR /app

# Copy assets from previous stages
COPY . .
COPY --from=vendor /app/vendor/ vendor/
COPY --from=frontend /app/public/js/ public/js/
COPY --from=frontend /app/public/css/ public/css/
COPY --from=frontend /app/mix-manifest.json .

RUN chmod +x scripts/wait-for-it.sh docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]

EXPOSE 8000
CMD ["php", "artisan", "serve", "--host", "0.0.0.0", "--port", "8000"]
