SRCS = ./srcs
up:
	docker-compose -f $(SRCS)/docker-compose.yml  up -d --build

down:
	docker-compose -f $(SRCS)/docker-compose.yml down
mkdir:
	@mkdir -p /home/yoelhaim/data
	@mkdir -p /home/yoelhaim/data/Wordpress
	@mkdir -p /home/yoelhaim/data/DB

status:
	@docker ps
img:
	@docker images
rm:
	docker rm -f $$(docker ps -aq)
	docker rmi -f $$(docker images -aq)
vrm:
	docker volume rm v_mariadb
	docker volume rm v_wp