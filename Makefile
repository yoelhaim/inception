SRCS = ./srcs

up:
	docker-compose -f $(SRCS)/docker-compose.yml  up -d 

down:
	docker-compose -f $(SRCS)/docker-compose.yml down

status:
	@docker ps
img:
	@docker images
rm:
	docker rm -f $$(docker ps -aq)
rmi:
	docker rmi -f $$(docker images -aq)
vrm:
	docker volume rm v_mariadb
	docker volume rm v_wp