FROM php:8.2-cli

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

COPY ./xdebug/conf.d /usr/local/etc/php/conf.d

WORKDIR /app
