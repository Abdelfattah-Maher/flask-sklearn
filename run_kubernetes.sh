#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath="abdelfatahmaher/house-predicition:v1.0"

# Step 2
# Run in Docker Hub container with kubernetes
kubectl run house-predicition\
    --generator=run-pod/v1
    --image=$dockerpath
    --port=80 --labels app=house-predicition

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward house-predicition 8000:80