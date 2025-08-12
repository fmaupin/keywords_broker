#!/bin/bash

#  arrêt et suppression d'un précédent container
docker container stop $(docker ps -aq) || true

docker container rm $(docker ps -aq)

# instantiation de l'image rabbit-keywords:latest
docker run -d --hostname rabbit-keywords --name rabbit-keywords -p 5672:5672 -p 16000:16000 rabbit-keywords:latest  

