#!/bin/bash
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD 
docker tag dockcross/base:latest $DOCKER_USERNAME/dockcross:base
docker push $DOCKER_USERNAME/dockcross:base
