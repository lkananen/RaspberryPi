#!/bin/bash
#
# Sets up an Aeotec Z-Stick USB Z-Wave antenna (Gen5).
# After this the device is ready to be used with other systems like Home Assistant.
#
# Requires the device to be connected to a USB port.
# More details: https://www.home-assistant.io/installation/raspberrypi#exposing-devices
#
###############################################################################
# Device info

# Obtain Aeotec Z-stick USB ACM device.
# Usually named "ttyACM0".
dmesg | grep tty

# Add that device to the Docker commands:
# A) `docker run ... --device /dev/ttyUSB0:/dev/ttyUSB0 ...`
# B) Compose file:
# ```    devices:
#         - /dev/ttyUSB0:/dev/ttyUSB0.```


###############################################################################
# Device settings

# Bluetooth needs to be disable on-board to use hardware UART.
# Following appends disable command to boot config.
echo "dtoverlay=disable-bt" | tee -a /boot/config.txt 

# Non-Raspberry Pi OS needs also following command to be run:
#sudo systemctl disable hciuart

# Note! Reboot required!
#reboot
