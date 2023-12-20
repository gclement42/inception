FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install -y wget

RUN apt install -y php7.4 \
			php-fpm \
			php-mysql \
			mariadb-client

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN wget https://github.com/wp-cli/wp-cli-bundle/releases/download/v2.7.1/wp-cli-2.7.1.phar
RUN mv wp-cli-2.7.1.phar /usr/local/bin/wp
RUN	chmod +x /usr/local/bin/wp

COPY ./conf/auto_config.sh /var/

RUN chmod +x /var/auto_config.sh

CMD ["bash", "/var/auto_config.sh"]

EXPOSE 9000