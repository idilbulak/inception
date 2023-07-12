FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools .

RUN chmod +x create_db.sql && \
    service mysql start && \
    mysql < ./create_db.sql && \
    rm -f ./create_db.sql

EXPOSE 3306

CMD ["mysqld"]
