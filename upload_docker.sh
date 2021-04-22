#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mariammazen/api

# Step 2:  
# Authenticate & tag
docker login --username=mariammazen
echo "Docker ID and Image: $dockerpath"
docker tag deec8cab2254 mariammazen/api:firsttry

# Step 3:
# Push image to a docker repository
docker push mariammazen/api:firsttry