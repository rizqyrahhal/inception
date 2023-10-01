FROM	debian:11.7
RUN	apt-get update && apt-get upgrade -y
RUN	apt-get -y install wget\
	curl
RUN	apt-get install -y php7.4\
	php-fpm\
	php-mysql\
	mariadb-client
COPY	conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY	tools/config.sh /.
RUN	chmod +x ./config.sh
ENTRYPOINT ["./config.sh"]
