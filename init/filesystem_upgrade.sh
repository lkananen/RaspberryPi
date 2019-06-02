#!/bin/bash
# Run full updates:
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
# Clear downloaded packages to free space:
sudo apt-get clean
