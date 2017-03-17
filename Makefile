init:
	docker swarm init

run:
	docker stack deploy -c docker-compose.yml vldcdash

