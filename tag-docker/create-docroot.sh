#!/bin/sh

# @file:
# Asks user for how they want their docroot implemented.

# @TODO: Ask the user. Defaulting to Acquia.

while true; do
    read -p "Which host will this repository use? (acquia/pantheon): " drupalno
    case $drupalno in
        [acquia]* ) ./tag-docker/create-docroot-acquia.sh; break;;
        [pantheon]* ) ./tag-docker/create-docroot-acquia.sh; break;;
        * ) echo "Please answer acquia or pantheon.";;
    esac
done
