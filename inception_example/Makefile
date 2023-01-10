all:
	@docker compose -f ./scrs/docker-compose.yml --env-file srcs/.env up -d --build

clean:
	@docker compose -f ./scrs/docker-compose.yml down
	@docker stop $$(docker ps -qa)
	@docker rm $$(docker ps -qa)
	@docker rmi -f $$(docker images -qa)
	@docker volume rm $$(docker volume ls -q)
	@docker network rm $$(docker network ls -q)

.PHONY: all clean
