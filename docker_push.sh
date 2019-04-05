#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker ps -a
docker tag dockcross/base $DOCKER_USERNAME/dockcross:base
docker push $DOCKER_USERNAME/dockcross:base
