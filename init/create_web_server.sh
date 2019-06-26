#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y

# Install and run Apache server
sudo apt-get install httpd -y
service httpd start

# Run on reboots
chkconfig httpd on

# Creates hello word web page
cd /var/www/html
echo "<html><h1>Hello world!</h1></html>" > index.html
# Optional way to get server (TODO)
# git clone ... 

# Return back
cd
