#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="mariammazen/api"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment project4-sub --image=mariammazen/api:firsttry --port=80 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project4-sub-779df7bb97-ss65h 8000:80

