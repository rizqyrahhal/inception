SRC = ./srcs/docker-compose.yml

all:
	docker-compose -f ${SRC} up -d

clean:
	docker-compose -f ${SRC} down --rmi all

fclean: clean
	rm -rf /home/rarahhal/data/wordpress/*
	rm -rf /home/rarahhal/data/mariadb/*
	docker system prune -a -f
	docker volume rm srcs_wordpress_db srcs_mariadb_db
re: fclean all
