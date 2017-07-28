FROM php:7.1-fpm

RUN apt-get update && apt-get install -y \
    git \
    zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql zip

RUN pecl install xdebug-2.5.0
