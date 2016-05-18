#!/bin/sh

# @file:
# Handler for tag-docker commands.

if [ $1 = 'create' ] ; then
  ./tag-docker/create-docroot.sh
  ./tag-docker/create-containers.sh
  exit
fi

if [ $1 = 'up' ] ; then
  echo 'Not Yet Implemented'
  exit
fi

echo "tag-docker: illegal command: $1"
echo 'usage: tag-docker.sh [command]'
echo 'Available commands:'
echo ' create: setup wizard for setting up a repository using Docker'
echo ' up:     readies your local environment'
exit
