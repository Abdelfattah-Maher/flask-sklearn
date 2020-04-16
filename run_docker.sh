#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Builds an image from a Dockerfile and a context. 
docker build --tag=abdelfatahmaher/house-predicition:v1.0 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -it -p 8000:80 --name predicit-server abdelfatahmaher/house-predicition:v1.0 bash