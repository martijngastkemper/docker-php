FROM php:fpm

RUN docker-php-ext-install pdo pdo_mysql
RUN pecl install apcu-beta \
    && echo extension=apcu.so > /usr/local/etc/php/conf.d/apcu.ini