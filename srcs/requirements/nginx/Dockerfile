FROM debian:bullseye

RUN apt-get -y update \
    && apt-get -y install nginx \
    && apt-get -y install openssl

RUN mkdir -p /etc/nginx/ssl

RUN mkdir -p /run/nginx

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \ 
    -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"

COPY /conf/nginx.conf /etc/nginx/sites-available/default

EXPOSE 5000/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]