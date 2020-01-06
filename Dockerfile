FROM php:7.4.1-fpm

ARG WITH_XDEBUG=true

RUN docker-php-ext-install mysqli; \
    if [ $WITH_XDEBUG = "true" ] ; then \
        pecl install xdebug-2.9.0; \
    fi ;
