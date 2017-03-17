#!/bin/bash
./create_dockermachines.sh
./create_swarm.sh
eval $(docker-machine env swmaster)
docker stack deploy -c docker-compose.yml vldc
echo "You can access dashboard on http://$(docker-machine ip swmaster)"
