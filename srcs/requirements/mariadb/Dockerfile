FROM    debian:bullseye

RUN     apt-get update
RUN     apt-get upgrade -y
RUN     apt-get install -y mariadb-server
RUN     mkdir -p /var/run/mysqld

COPY    /conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY    /configdatabase.sh /var/configdatabase.sh

EXPOSE  3306

ENTRYPOINT ["bash", "/var/configdatabase.sh"]