docker rm -f echo $(docker ps -a -q) 
docker volume prune
docker network prune 