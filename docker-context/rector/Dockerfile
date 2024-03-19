FROM php:8.3-alpine

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- \
   --2.2 \
   --install-dir=/usr/local/bin

RUN mv /usr/local/bin/composer.phar /usr/local/bin/composer

# see https://getrector.com/documentation/how-to-run-on-php-53
RUN mkdir /rector-standalone
RUN cd /rector-standalone && composer require rector/rector --dev

WORKDIR /app


