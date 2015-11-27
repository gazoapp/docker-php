FROM php:5.6-apache

RUN a2enmod rewrite
RUN docker-php-ext-install pdo pdo_mysql

VOLUME /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
