#!/bin/sh

# @file:
# Creates docroot for Acquia sites.

mkdir docroot
cd docroot
../tag-docker/download-drupal.sh
cd drupal-*
mv * .* ..
cd ..
rm -r drupal-*
