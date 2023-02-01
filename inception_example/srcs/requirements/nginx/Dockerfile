FROM    debian:buster

RUN     apt-get update -y && \
        apt-get upgrade -y && \
        apt-get install -y nginx openssl

COPY    conf/nginx.conf /

RUN     mv nginx.conf path_to_default_conf

RUN     sed -i 's/ssl_protocols.*/ssl_protocols TLSv1.2 TLSv1.3;/' /etc/nginx/nginx.conf

RUN     openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/ibulak.key -out /etc/nginx/ssl/ibulak.crt -subj "/C=NL/ST=None/L=Ams/O=42 Inc/CN=ibulak.42.fr"

EXPOSE  443

ENTRYPOINT     ["nginx", "-g", "daemon off;"]