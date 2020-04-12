#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath="abdelfatahmaher/house-predicition:v1.0"

# Step 2
# Run in Docker Hub container with kubernetes
#kubectl create house-predicition-3 --image=$dockerpath --port=80 --labels=house-predicition
#kubectl create house-predicition --image=abdelfatahmaher/house-predicition:v1.0 --port=80  --labels=house-predicition
#    --labels app=house-predicition
#   --generator=run-pod/v1
kubectl run house-predicition-4 --image=abdelfatahmaher/house-predicition:v1.0 
--port=80  --labels app=house-predicition

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward house-predicition-4 2525:80