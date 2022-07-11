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
# Updating

# Check for newest image.
# If using the latest already, update process can be stopped here.
docker pull ghcr.io/home-assistant/home-assistant:stable

# If new one is found, remove old one.
docker stop homeassistant
docker rm homeassistant

# Re-starting with newer image.
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
