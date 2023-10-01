#! /bin/bash

mkdir /var/www/wordpress/

cd /var/www/wordpress/

# Download wp-cli to get and confugare wordpress site
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

# download the wordpress folder
wp --allow-root  core download

# configure wp-confige.php to use mariadb database
wp --allow-root  config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST

# creat wordpressuser as a administratore
wp --allow-root  core install --url="$SITE_URL" --title="$SITE_TITLE" --admin_user="$ADMIN_USER"  --admin_password="$ADMIN_PASSWORD" --admin_email="$ADMIN_EMAIL"

# creat another user a author
wp --allow-root user create "$USER_NAME" "$USER_EMAIL"  --role="$USER_ROLE"  --user_pass="$USER_PASSWORD"

mkdir -p /run/php

# run php-fpm
/usr/sbin/php-fpm7.4 -F -R
