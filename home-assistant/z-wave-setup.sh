#!/bin/bash
#
# Sets up an Aeotec Z-Stick USB Z-Wave antenna (Gen5).
# After this the device is ready to be used with other systems like Home Assistant.
#
# Requires the device to be connected to a USB port.
#
###############################################################################
# Device info

# Obtain Aeotec Z-stick USB ACM device.
# Usually named "ttyACM0".
dmesg | grep tty
