FROM	debian:buster
RUN	apt-get update && apt-get upgrade -y
RUN	apt-get -y install wget\
	curl
RUN	apt-get install -y php7.3\
	php-fpm\
	php-mysql\
	mariadb-client
#RUN	wget https://wordpress.org/latest.zip -P /var/www
#RUN	apt-get install unzip
#RUN	cd /var/www && unzip latest.zip && rm latest.zip
#RUN	chown -R www-data:www-data /var/www/wordpress
#RUN	chown -R root:root /var/www/wordpress
#RUN	chown -R inception:inception /var/www/wordpress
COPY	conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
#RUN	rm -f /var/www/wordpress/wp-config-sample.php
#COPY	conf/wp-config.php /var/www/wordpress/
COPY	tools/config.sh /.
#RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN	chmod +x wp-cli.phar
#RUN	mv wp-cli.phar /usr/local/bin/wp
COPY	tools/lunch_fpm.sh /.
#RUN	wget https://assets.digitalocean.com/articles/wordpress_redis/object-cache.php -P /var/www/wordpress
RUN	chmod +x ./lunch_fpm.sh
RUN	chmod +x ./config.sh
#RUN	sh ./auto_config.sh
ENTRYPOINT ["./config.sh"]
#ENTRYPOINT ["./lunch_fpm.sh"]
