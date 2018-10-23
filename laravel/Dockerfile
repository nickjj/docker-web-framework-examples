FROM php:7.2-fpm-alpine

ENV COMPOSER_ALLOW_SUPERUSER=1
WORKDIR /app

RUN apk add --update bash curl \
    && docker-php-ext-install \
    pdo_mysql

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

RUN chmod +x scripts/wait-for-it.sh docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]

EXPOSE 9000
HEALTHCHECK CMD wget -q -O /dev/null http://localhost:9000/healthy || exit 1
LABEL maintainer="Niko Heikkilä <yo@nikoheikkila.fi>"

CMD ["php", "artisan", "serve", "--host", "0.0.0.0", "--port", "9000"]
