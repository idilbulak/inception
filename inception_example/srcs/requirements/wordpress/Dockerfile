FROM    debian:buster

RUN     apt-get update -y && \
        apt-get upgrade -y && \
        apt-get install -y wget curl bash php php-fpm php-mysql tar && \
        wget https://wordpress.org/latest.tar.gz && \
        tar xzvf latest.tar.gz && \
        rm latest.tar.gz && \
        mv -f wordpress /var/www && \
   -->  chown -R <user>:<group> /var/www/wordpress && \
        rm -rf /var/www/wordpress/wp-config-sample.php && \

COPY    ./conf/wp-config.php /var/www/wordpress
COPY    ./conf/www.conf <path of php conf, www.conf inside php>

EXPOSE  9000

ENTRYPOINT     ["php-fpm7.3", "-F"]