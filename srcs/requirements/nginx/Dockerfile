FROM debian:bullseye

RUN apt-get -y update && apt-get -y install nginx

COPY /conf/nginx.conf /etc/nginx/sites-available/default

EXPOSE 5000/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]