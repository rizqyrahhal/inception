#! /bin/bash

mkdir /var/www/wordpress/

cd /var/www/wordpress/

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp --allow-root  core download

wp --allow-root  config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST

wp --allow-root  core install --url="$SITE_URL" --title="$SITE_TITLE" --admin_user="$ADMIN_USER"  --admin_password="$ADMIN_PASSWORD" --admin_email="$ADMIN_EMAIL"

mkdir -p /run/php

/usr/sbin/php-fpm7.3 -F -R


