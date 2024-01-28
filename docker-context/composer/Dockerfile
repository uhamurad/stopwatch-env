FROM php:7.0-alpine

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- \
   --2.2 \
   --install-dir=/usr/local/bin

RUN mv /usr/local/bin/composer.phar /usr/local/bin/composer

WORKDIR /app


