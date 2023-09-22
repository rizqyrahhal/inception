FROM	debian:buster
RUN	apt-get update && apt-get upgrade
RUN	apt-get -y install wget
RUN	apt-get install -y php7.3\
	php-fpm\
	php-mysql\
	mariadb-client
#RUN	sleep 5
RUN	wget https://wordpress.org/latest.zip -P /var/www
RUN	apt-get install unzip
RUN	cd /var/www && unzip latest.zip && rm latest.zip
RUN	chown -R www-data:www-data /var/www/wordpress
RUN	chown -R root:root /var/www/wordpress
#RUN	chown -R inception:inception /var/www/wordpress
COPY	conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN	rm -f /var/www/wordpress/wp-config-sample.php
COPY	conf/wp-config.php /var/www/wordpress/
COPY	tools/auto_config.sh /.
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp
#RUN	exec /bin/bash /auto_config.sh
#COPY	conf/php.ini /etc/php/7.3/fpm/php.ini
#COPY	p-content/* /var/www/wordpress/
COPY	tools/lunch_fpm.sh /.
RUN	wget https://assets.digitalocean.com/articles/wordpress_redis/object-cache.php -P /var/www/wordpress
RUN	chmod +x ./lunch_fpm.sh
RUN	chmod +x ./auto_config.sh
RUN     exec /bin/bash /auto_config.sh
#RUN	exec /bin/bash ./lunch_fpm.sh
#CMD	["sh", "/auto_config.sh"]
#RUN	sleep 10
ENTRYPOINT ["./lunch_fpm.sh"] 
#CMD	["sleep", "infinity"]
#RUN	service php7.3-fpm start
#RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN	chmod +x wp-cli.phar
#RUN	mv wp-cli.phar /usr/local/bin/wp
