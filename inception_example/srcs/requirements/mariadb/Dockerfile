FROM    debian:buster

RUN     apt-get update -y && \
        apt-get upgrade -y && \
        apt-get install -y mariadb-server

COPY    tools/mariadb_setting.sh /mariadb_setting.sh
COPY    tools/wp_backup.sql /wp_backup.sql
COPY    ./conf/my.cnf /etc/mysql/my.cnf

EXPOSE  3306

ENTRYPOINT     ["sh", "./mariadb_setting.sh"]