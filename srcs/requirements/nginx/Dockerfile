FROM	debian:11.7
RUN	apt update && apt upgrade -y
RUN	apt install nginx -y
RUN	apt install vim -y
RUN	apt install curl -y
RUN	mkdir -p /etc/nginx/ssl
RUN	apt install openssl -y
RUN	openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MR/ST=IDF/L=Casablanca/O=42/OU=42/CN=rarahhal.42.fr/UID=rarahhal"
RUN	mkdir -p /var/run/nginx
RUN	mkdir -p /var/www/wordpress
RUN	chmod 755 /var/www/html
RUN	chown -R www-data:www-data /var/www/html
COPY	conf/nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT	[ "nginx", "-g", "daemon off;" ]
