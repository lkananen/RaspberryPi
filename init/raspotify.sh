#!/bin/bash
# Turns Raspberry Pi into a spotify device.
# Sources:
# https://github.com/dtcooper/raspotify
# https://wiki.debian.org/BluetoothUser/a2dp
#
# Sets up the Spofify device:
curl -sL https://dtcooper.github.io/raspotify/install.sh | sh
#
# Modifies Bluetooth settings, so you can connect a wireless speaker:
apt-get install pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware
#
# Restart the services:
service bluetooth restart
killall pulseaudio
#
# Install Bluetooth GUI pairing tool:
apt-get install blueman
#
#
# Toubleshooting:
# You can try adding following line to /etc/defaults/raspotify:
# OPTIONS="--device hw:0"
# Source: http://www.hagensieker.com/blog/page/?post_id=86&title=no-no-no-that-is-not-it-raspotify-on-raspberry-pi-with-hifiberryamp
