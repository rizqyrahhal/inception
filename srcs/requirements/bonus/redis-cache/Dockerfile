FROM	debian:buster
RUN	apt update
RUN	apt install redis-server -y
COPY	conf/redis.conf /etc/redis/redis.conf
COPY	tools/run-redis.sh /.
RUN	chmod +x /run-redis.sh
ENTRYPOINT	["sleep", "infinity"]
#ENTRYPOINT	["sh", "run-redis.sh"]
