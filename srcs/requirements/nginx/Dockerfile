FROM debian:buster

RUN apt-get update && \
    apt-get install -y nginx openssl

COPY ./conf/default/ /etc/nginx/sites-enabled/default
COPY ./tools/nginx.sh .

RUN chmod +x ./nginx.sh

ENTRYPOINT ["./nginx.sh"]

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

