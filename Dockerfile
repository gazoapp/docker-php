FROM php:5.6-apache

RUN rm -rf /data/www/public && mkdir -p /data/www/public && chown -R www-data:www-data /data/www/public

COPY config/application.conf /etc/apache2/conf-enabled/application.conf

RUN a2enmod rewrite

RUN mkdir -p /data
VOLUME /data

EXPOSE 80

CMD ["apache2-foreground"]
