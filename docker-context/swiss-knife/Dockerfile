FROM php:8.3-alpine

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- \
   --2.2 \
   --install-dir=/usr/local/bin

RUN mv /usr/local/bin/composer.phar /usr/local/bin/composer

# it is need for swiss-knife, otherwise will be occured error PHP Fatal error: Uncaught Error: Class 'Normalizer' not found in /usr/share/php/Symfony/Component/Console/Helper/Helper.php
# see https://stackoverflow.com/questions/71209866/php-fatal-error-uncaught-error-class-normalizer-not-found-in-usr-share-php
RUN apk add icu-dev
RUN docker-php-ext-configure intl && docker-php-ext-install intl

# see https://tomasvotruba.com/blog/finalize-classes-automated-and-safe
RUN mkdir /swiss-knife && cd /swiss-knife && composer require rector/swiss-knife --dev

WORKDIR /add


