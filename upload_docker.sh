#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
# See `run_docker.sh`

# Step 1:
# Create your on docker ID here
#dockerpath=""

# Step 2:  
# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push Image

sudo docker login --username=abdelfatahmaher
sudo docker tag b3c1ca35ec75 abdelfatahmaher/house-predicition:v1.0
sudo docker push abdelfatahmaher/house-predicition:v1.0