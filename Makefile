SRCS = ./srcs
mkdir:
	@mkdir /Users/yoelhaim/Desktop/docker
	@mkdir /Users/yoelhaim/Desktop/docker/services
	@mkdir /Users/yoelhaim/Desktop/docker/mariadb
up:
	docker-compose -f $(SRCS)/docker-compose.yml  up -d --build

down:
	docker-compose -f $(SRCS)/docker-compose.yml down

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