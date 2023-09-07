FROM	debian:buster
RUN	apt-get update && apt-get upgrade
RUN	apt-get -y install wget
RUN	apt-get install -y php7.3\
	php-fpm\
	php-mysql\
	mariadb-client
RUN	wget https://wordpress.org/latest.zip -P /var/www
RUN	apt-get install unzip
RUN	cd /var/www && unzip latest.zip && rm latest.zip
RUN	chown -R root:root /var/www/wordpress
#COPY	../conf/php.ini /etc/php/7.3/fpm/php.ini
