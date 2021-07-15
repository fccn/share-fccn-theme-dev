FROM php:7.4-apache

RUN apt-get update && apt-get install -y zip gzip tar && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer create-project picocms/pico-composer pico

EXPOSE 80

ADD ./apache/000-default.conf /etc/apache2/sites-available
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]