# This Dockerfile is used to build a Docker image that contains an installation of Nginx web server.
# It sets up an Nginx web server with SSL support in a Docker container. When the Docker
# image built using this Dockerfile is run, it will start an Nginx server that listens for HTTPS connections on
# port 443.
# The image is based on the Debian Buster operating system.

FROM debian:buster

RUN     apt-get update -y && apt-get upgrade -y && apt-get install -y nginx openssl

COPY    conf/nginx.conf /

RUN     mv nginx.conf path_to_default_conf

RUN     sed -i 's/ssl_protocols.*/ssl_protocols TLSv1.2 TLSv1.3;/' /etc/nginx/nginx.conf

RUN     openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/ibulak.key -out /etc/nginx/ssl/ibulak.crt -subj "/C=NL/ST=None/L=Ams/O=42 Inc/CN=ibulak.42.fr"

EXPOSE 443

ENTRYPOINT     ["nginx", "-g", "daemon off;"]

# https://www.nginx.com/resources/wiki/start/topics/tutorials/commandline/
# https://www.namecheap.com/support/knowledgebase/article.aspx/9834/69/how-can-i-find-the-private-key-for-my-ssl-certificate/#1.1
# https://www.hosting.com.tr/bilgi-bankasi/ssl-nedir-nasil-calisir/
# https://www.gokhankesici.com/openssl/