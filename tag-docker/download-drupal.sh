#!/bin/sh

# @file:
# Asks user for which Drupal they want to download as their base.

while true; do
    read -p "Which version of Drupal would you like to use? (7/8): " drupalno
    case $drupalno in
        [7]* ) drush dl drupal-7; echo 7 > ./tag-docker/config/drupal-version; break;;
        [8]* ) drush dl drupal-8; echo 8 > ./tag-docker/config/drupal-version; break;;
        * ) echo "Please answer 7 or 8.";;
    esac
done


