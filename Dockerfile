FROM composer:latest as composer

FROM php:8.0-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y \
    unzip vim

RUN pecl install xdebug && docker-php-ext-enable xdebug

COPY docker/php-fpm/xdebug.ini /usr/local/etc/php/conf.d/
COPY docker/php-fpm/fpm.conf /usr/local/etc/php-fpm.d/submodules-example.conf

WORKDIR /var/www/html