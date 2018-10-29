FROM php:7.2-fpm-alpine
LABEL maintainer="Niko Heikkilä <yo@nikoheikkila.fi>"

RUN apk add --update bash curl \
    && docker-php-ext-install \
    pdo_mysql

ENV COMPOSER_ALLOW_SUPERUSER=1

WORKDIR /app

RUN curl -sSL https://getcomposer.org/composer.phar -o /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer

COPY composer.json composer.lock ./
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --no-autoloader \
    --prefer-dist

COPY . .
RUN composer dump-autoload --optimize \
    && php artisan key:generate

EXPOSE 8000
HEALTHCHECK CMD wget -q -O /dev/null http://localhost:8000/healthy || exit 1

CMD ["php", "artisan", "serve", "--host", "0.0.0.0", "--port", "8000"]
