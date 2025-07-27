FROM php:8.2-fpm

RUN apt-get update \
    && apt-get install -y \
        libpq-dev \
        git \
        zip \
        unzip \
        libzip-dev \
        curl \
    && docker-php-ext-install pdo pdo_pgsql

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www