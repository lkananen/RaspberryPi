#!/bin/bash
# This script creates a basic Wordpress application
#
# Requirements
sudo apt-get install php php-mysql httpd -y

# Wordpress downloading
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# OR
#wget https://wordpress.org/wordpress-5.1.1.tar.gz
#tar -xzf wordpress-5.1.1.tar.gz

# Wordpress setup
cp -r wordpress/* /var/www/html/

# Cleanup
rm -rf wordpress
rm -rf wordpress-5.1.1.tar.gz

# Permissions
chmod -R 755 wp-content
chown -R apache:apache wp-content

# Server setup
service httpd start
chkconfig httpd on
