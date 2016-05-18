#!/bin/sh

# @file:
# Creates Containers.

read -p "What is the short name for this project: " PROJECT
echo $PROJECT > ./tag-docker/config/short-name

GENERATEDPASS='docker'
echo $GENERATEDPASS > ./tag-docker/config/db-pass

DOCROOTPWD=$(git rev-parse --show-toplevel)
DOCROOT="$DOCROOTPWD/docroot"
MOUNT=$DOCROOT:/var/www/html

docker run --name $PROJECT-mariadb \
  -e MYSQL_ROOT_PASSWORD=$GENERATEDPASS \
  -d mariadb:latest

docker run --name ${PROJECT}-drupal \
  --link ${PROJECT}-mariadb:mysql \
  -p 80:80 \
  -v "$MOUNT" \
  -d drupal:latest
