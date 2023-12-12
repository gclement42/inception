FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade \
    && apt-get -y install sudo \
    && apt-get -y install php-fpm \
    && apt-get -y install wget

RUN mkdir -p /var/www/html/example.com \
    && wget -P /var/www/html/example.com https://wordpress.org/latest.tar.gz

RUN tar -xzf /var/www/html/example.com/latest.tar.gz -C /var/www/html/example.com \
    && rm -rf /var/www/html/example.com/latest.tar.gz

COPY /conf/wp.php /var/www/html/example.com/wordpress/wp-config-sample.php

ENTRYPOINT [ "bash" ]