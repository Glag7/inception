all: up

up:
	mkdir -p /home/glaguyon/data/mariadb
	mkdir -p /home/glaguyon/data/wordpress
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down -v

start:
	docker compose -f ./srcs/docker-compose.yml start

stop:
	docker compose -f ./srcs/docker-compose.yml stop

fclean:
	rm -rf /home/glaguyon/data/
	docker system prune -af
	docker volume rm wordpress mariadb


re: stop fclean all

.PHONY:
	all up down fclean re start stop