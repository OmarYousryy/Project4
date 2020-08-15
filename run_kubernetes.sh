#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=https://hub.docker.com/repository/docker/omary/test
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag python:3.7.3-stretch omary/test

# Step 3:
# Push image to a docker repository
docker push omary/test
