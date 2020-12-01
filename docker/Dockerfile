FROM php:8.0-fpm

ARG WITH_XDEBUG=true

RUN docker-php-ext-install mysqli; \
    if [ $WITH_XDEBUG = "true" ] ; then \
        pecl install xdebug; \
    fi ;
