FROM debian:bullseye

# update
RUN apt update -y
RUN apt upgrade -y
# RUN apt autoremove --yes
# RUN apt clean autoclean

# mariadb
RUN apt install -y mariadb-server

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

# ARG SQL_DATABASE
# ARG SQL_USER
# ARG SQL_PASSWORD
# ARG SQL_ROOT_PASSWORD

COPY /configdatabase.sh /var/configdatabase.sh

RUN chmod +x /var/configdatabase.sh

EXPOSE 3306

CMD ["/bin/bash", "/var/configdatabase.sh"]
