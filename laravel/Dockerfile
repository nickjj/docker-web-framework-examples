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
FROM php:7.2-apache

ENV APACHE_DOCUMENT_ROOT /var/www/html/public
COPY apache/ /etc/apache2/sites-available/
WORKDIR /var/www/html

COPY . .
COPY --from=vendor /app/vendor/ vendor/
COPY --from=frontend /app/public/js/ public/js/
COPY --from=frontend /app/public/css/ public/css/
COPY --from=frontend /app/mix-manifest.json .

# Fix permissions so both app and Apache can use files
RUN a2enmod rewrite \
    && chgrp -R www-data storage bootstrap/cache \
    && chmod -R ug+rwx storage bootstrap/cache

CMD ["apache2-foreground"]
