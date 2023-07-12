#!/bin/bash

set -e

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=NL/ST=AMS/L=AMSTERDAM/O=Codam/CN=ibulak.42.fr";
echo "===NGINX OK===";
fi

exec "$@"
