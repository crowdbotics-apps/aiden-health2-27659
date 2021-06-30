FROM php:7.2-apache
COPY . /var/www/html/
RUN echo $PORT
COPY apache2.conf /etc/apache2/sites-available/000-default.conf
CMD sed -i "s/80/$PORT/g" /etc/apache2/sites-enabled/000-default.conf /etc/apache2/ports.conf && apache2 -D FOREGROUND


