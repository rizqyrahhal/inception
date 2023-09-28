#!/bin/bash

# Set your WordPress site details
#SITE_URL="rarahhal.42.fr"
#SITE_TITLE="wordpress site"
#ADMIN_USER="wordpressuser"
#ADMIN_PASSWORD="1337leet"
#ADMIN_EMAIL="rizqrrahhal8@gmail.com"

# MySQL database details
#DB_NAME="todo-list"
#DB_USER="inception"
#DB_PASSWORD="1337leet"
#DB_HOST="mariadb:3306"

# WordPress installation directory
INSTALL_DIR="/var/www/wordpress/"

# Download and extract WordPress
#wget -q https://wordpress.org/latest.tar.gz -P /tmp
#tar xf /tmp/latest.tar.gz -C /tmp

#wget https://wordpress.org/latest.zip -P /var/www
#cd /var/www && unzip latest.zip && rm latest.zip
#mv /var/www/wordpress/* /var/www/.
#rm -rf /var/www/wordpess
#chown -R www-data:www-data /var/www/wordpress
#chown -R root:root /var/www/wordpress

# Move WordPress files to the installation directory
#mv /tmp/wordpress/* $INSTALL_DIR

# Create the wp-config.php file
cp $INSTALL_DIR/wp-config-sample.php $INSTALL_DIR/wp-config.php

# Set the database details in wp-config.php
#sed -i "s/database_name_here/$DB_NAME/" $INSTALL_DIR/wp-config.php
#sed -i "s/username_here/$DB_USER/" $INSTALL_DIR/wp-config.php
#sed -i "s/password_here/$DB_PASSWORD/" $INSTALL_DIR/wp-config.php
#sed -i "s/localhost/$DB_HOST/" $INSTALL_DIR/wp-config.php


# Set the database details in wp-config.php using WP-CLI
wp config set DB_NAME "$DB_NAME" --path="$INSTALL_DIR"
wp config set DB_USER "$DB_USER" --path="$INSTALL_DIR"
wp config set DB_PASSWORD "$DB_PASSWORD" --path="$INSTALL_DIR"
wp config set DB_HOST "$DB_HOST" --path="$INSTALL_DIR"


# Generate unique keys and salts
curl -s https://api.wordpress.org/secret-key/1.1/salt/ >> $INSTALL_DIR/wp-config.php

# Configure site URL
#echo "define('WP_SITEURL', '$SITE_URL');" >> $INSTALL_DIR/wp-config.php
#echo "define('WP_HOME', '$SITE_URL');" >> $INSTALL_DIR/wp-config.php

# Set up automatic updates
#echo "define('WP_AUTO_UPDATE_CORE', true);" >> $INSTALL_DIR/wp-config.php

# Create uploads directory and set permissions
#mkdir -p $INSTALL_DIR/wp-content/uploads
#chmod -R 755 $INSTALL_DIR/wp-content/uploads

cd /var/www/wordpress
#sleep 5
# Set up the admin user
wp --allow-root core install --url="$SITE_URL" --title="$SITE_TITLE" --admin_user="$ADMIN_USER" --admin_password="$ADMIN_PASSWORD" --admin_email="$ADMIN_EMAIL"

# Optionally, delete the default 'Hello Dolly' plugin
#wp --allow-root plugin delete hello

# Clean up
#rm /tmp/latest.tar.gz
#rm -r /tmp/wordpress

# Done
#sleep 5
echo "WordPress is installed and configured at $SITE_URL"
mkdir -p /run/php
/usr/sbin/php-fpm7.3 -F -R
