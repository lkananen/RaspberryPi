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

# First time setup volume mount target
if [ -d "~/ha" ]
then
  :
else
  mkdir ~/ha
fi

docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Europe/Helsinki \
  -v ${HOME}/ha:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable


###############################################################################
# Z-wave server setup
#
# Sets up an Aeotec Z-Stick USB Z-Wave antenna (Gen5).
# After this the device is ready to be used with other systems like Home Assistant.
# Requires the device to be connected to a USB port.
# More details: https://www.home-assistant.io/installation/raspberrypi#exposing-devices

# Obtain Aeotec Z-stick USB ACM device.
# Usually named "ttyACM0".
dmesg | grep tty
# Add that device to the Docker commands:
# A) `docker run ... --device /dev/ttyUSB0:/dev/ttyUSB0 ...`
# B) Compose file:
# ```    devices:
#         - /dev/ttyUSB0:/dev/ttyUSB0.```

# Bluetooth needs to be disable on-board to use hardware UART.
# Following appends disable command to boot config.
echo "dtoverlay=disable-bt" | tee -a /boot/config.txt 
# Non-Raspberry Pi OS needs also following command to be run:
#sudo systemctl disable hciuart
# Note!!! Reboot required!
#reboot

# First time setup volume mount target
if [ -d "~/ha-cache" ]
then
  :
else
  mkdir ~/ha-cache
fi

docker run -d \
    -p 3000:3000 \
    --name=zjs \
    -v ${HOME}/ha-cache:/cache \
    --env-file=.env \
    --device "/dev/ttyACM0:/dev/zwave" \
    kpine/zwave-js-server:1.20.0-9.6.0


###############################################################################
# Updating

# Check for newest image.
# If using the latest already, update process can be stopped here.
docker pull ghcr.io/home-assistant/home-assistant:stable
docker pull kpine/zwave-js-server:latest

# If new one is found, remove old one.
docker stop homeassistant
docker stop zjs
docker rm homeassistant
docker rm zjs

# Re-starting with newer image.
docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Europe/Helsinki \
  -v /home/pi/ha:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable
docker run -d \
    -p 3000:3000 \
    --name=zjs \
    -v ${HOME}/ha-cache:/cache \
    --env-file=.env \
    --device "/dev/ttyACM0:/dev/zwave" \
    kpine/zwave-js-server:latest

###############################################################################
# Restarting

docker restart homeassistant
#docker-compose restart
