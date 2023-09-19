SRC = ./srcs/docker-compose.yml

all:
	docker compose -f ${SRC} up -d

clean:
	docker compose -f ${SRC} down --rmi all

fclean: clean
	rm -rf /home/rarahhal/data/wp/*
	rm -rf /home/rarahhal/data/db/*
	docker system prune -a -f
	docker volume rm srcs_db_vol srcs_wp_vol
re: fclean all
