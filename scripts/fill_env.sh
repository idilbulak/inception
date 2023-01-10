#!/bin/bash

printf "DOMAIN_NAME=ibulak.42.fr
#certificate
CERTS_=./requirements/tools/ibulak.42.fr.crt
KEY_=./requirements/tools/ibulak.42.fr.key
#MYSQL SETUP
MYSQL_ROOT_PASSWORD=XXXXXXXXXXXX
MYSQL_USER=XXXXXXXXXXXX
MYSQL_PASSWORD=XXXXXXXXXXXX" > ../inception/srcs/.env