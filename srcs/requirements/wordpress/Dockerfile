FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade \
    && apt-get -y install sudo \
    && apt-get -y install php-fpm php7.4 mariadb-client\
    && apt-get -y install wget php-mysql

COPY /conf/wp-config.php /var/www/wordpress/wp-config.php

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY /conf/wp.sh wp.sh

RUN chmod 777 wp.sh

EXPOSE 9000/tcp

ENTRYPOINT [ "bash" ]