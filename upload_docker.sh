#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=tbenedek/ml-housing

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u tbenedek -p get6lost

# Step 3:
docker tag ml-housing tbenedek/ml-housing
docker push $dockerpath
