SRCS = ./srcs

run:
	docker-compose -f $(SRCS)/docker-compose.yml  up -d 

down:
	docker-compose -f $(SRCS)/docker-compose.yml down

status:
	@docker ps

