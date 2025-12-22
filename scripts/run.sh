#!/bin/bash

#  arrêt et suppression d'un précédent container
docker container stop $(docker ps -aq) || true

docker container rm $(docker ps -aq)

# instantiation de l'image rabbit-keywords:latest
docker run -d --hostname rabbit-keywords --name rabbit-keywords -p 5672:5672 -p 15672:15672 rabbit-keywords:latest  

