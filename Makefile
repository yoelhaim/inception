run:
	docker-compose -f ./srcs/docker-compose.yml  up -d 
down:
	docker-compose -f ./srcs/docker-compose.yml down
status:
	@docker ps

	