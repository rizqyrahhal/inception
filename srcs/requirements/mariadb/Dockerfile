FROM	debian:buster
RUN	apt update && apt upgrade -y
RUN	apt install mariadb-server -y
COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY	tools/lunshmariadb.sh /
CMD	["sh", "/lunshmariadb.sh"]
