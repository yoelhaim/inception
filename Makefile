SRCS = ./srcs

up:
	docker-compose -f $(SRCS)/docker-compose.yml  up -d 

down:
	docker-compose -f $(SRCS)/docker-compose.yml down

status:
	@docker ps
img:
	@docker images