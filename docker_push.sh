#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag $DOCKER_USERNAME/base:latest $DOCKER_USERNAME/dockcross:base
docker push $DOCKER_USERNAME/dockcross:base
