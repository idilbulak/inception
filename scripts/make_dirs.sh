#!/bin/bash

cd ../

mkdir inception
cd inception

mkdir srcs
touch Makefile

cd srcs
mkdir requirements
touch docker-compose.yml .env

cd requirements
mkdir bonus mariadb nginx tools wordpress

cd mariadb
mkdir conf tools
touch Dockerfile .dockerignore

cd ../nginx
mkdir conf tools
touch Dockerfile .dockerignore