# Use an official Debian-based PHP image as the base image
FROM php:7.3-fpm

# Update package lists and install necessary packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y wget unzip mariadb-client

# Download and install WordPress
RUN	wget https://wordpress.org/latest.zip -P /var/www
RUN	apt-get install unzip
RUN	cd /var/www && unzip latest.zip && rm latest.zip
RUN	chown -R root:root /var/www/wordpress
# Configure PHP-FPM
COPY ./php.ini /usr/local/etc/php/php.ini

# Expose port 9000 to communicate with a web server
EXPOSE 9000

# Start PHP-FPM as the entry point
CMD ["php-fpm"]

