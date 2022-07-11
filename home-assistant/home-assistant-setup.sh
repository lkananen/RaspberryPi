#!/bin/bash
#
# Sets up Home Assistant in a Docker container.
# Requires Docker setup!
#
# More instructions at:
# https://www.home-assistant.io/installation/raspberrypi#install-home-assistant-container
#
###############################################################################
# Home assistant container setup

mkdir /home/pi/ha

docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Europe/Helsinki \
  -v /home/pi/ha:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable
  

###############################################################################
# Restarting

docker restart homeassistant
#docker-compose restart
