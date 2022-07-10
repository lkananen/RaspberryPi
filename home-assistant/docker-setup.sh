#!/bin/bash

# More details at:
# https://www.jfrog.com/connect/post/install-docker-compose-on-raspberry-pi/

###############################################################################
# Pre-settings

# Assign a .local domain to host on your network.
# Enables you to access your Pi using a web address instead of IP.
sudo apt-get install avahi-daemon

###############################################################################
# Docker

# Get and install Docker.
curl -fsSL https://get.docker.com -o get-docker.sh
‍sudo sh get-docker.sh
rm get-docker.sh

# Add a non-root account to Docker Group.
# This allows running commands without typing sudo every time.
sudo usermod -aG docker ${USER}
# Check groups
groups ${USER}
# Apply changes
‍sudo su - ${USER}

###############################################################################
# Docker-compose

sudo apt-get install libffi-dev libssl-dev -y
sudo apt install python3-dev -y
sudo apt-get install -y python3 python3-pip -y
‍sudo pip3 install docker-compose -y

# Set Docker to start on boot
‍sudo systemctl to enable Docker
