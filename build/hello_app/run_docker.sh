#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
imagename=udacity-apache
docker image build -f Dockerfile . --tag $imagename:latest

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run app   
docker container run -d -p 80:80 $imagename
docker ps|grep $imagename