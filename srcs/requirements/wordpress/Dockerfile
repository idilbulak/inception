FROM debian:buster

RUN apt-get update && \
    apt-get -y install php7.3 php-mysqli php-fpm wget sendmail

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools /var/www/

RUN chmod +x /var/www/wordpress.sh

EXPOSE 9000

ENTRYPOINT [ "/var/www/wordpress.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
