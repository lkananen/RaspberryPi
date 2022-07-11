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

mkdir /home/pi/ha

docker-compose \
  -f docker-compose.yml \
  --project-name homeassistant \
  up -d
