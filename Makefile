SRC = ./srcs/docker-compose.yml

all:
	docker-compose -f ${SRC} up -d --build

clean:
	docker-compose -f ${SRC} down --volumes --rmi all

fclean: clean
	docker system prune -a -f

re: fclean all

remove: fclean
	sudo rm -rf /home/rarahhal/data/wordpress/*
	sudo rm -rf /home/rarahhal/data/mariadb/*
