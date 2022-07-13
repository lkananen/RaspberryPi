#!/bin/bash
#
# Sets up Home Assistant as a docker-comnpose stack.
# Requires Docker setup!
#
# More instructions at:
# https://www.home-assistant.io/installation/raspberrypi#docker-compose
#
###############################################################################
# Home assistant container setup

mkdir ~/ha
mkdir ~/ha-cache

docker-compose \
  -f docker-compose.yml \
  --project-name homeassistant \
  --env-file .env \
  up -d

# Copies configs to the home assistant mounted path
#cp ./ha ~/ha
