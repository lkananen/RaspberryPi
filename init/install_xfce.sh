#!/bin/bash
# This script installs XFCE desktop using the instructions from:
# https://wiki.debian.org/Xfce
#
sudo aptitude purge `dpkg --get-selections | grep gnome | cut -f 1` -y
sudo aptitude -f install -y
sudo aptitude purge `dpkg --get-selections | grep deinstall | cut -f 1` -y
sudo aptitude -f install -y
#
sudo apt-get install xfce4 -y
sudo apt-get install xfce4-goodies -y
