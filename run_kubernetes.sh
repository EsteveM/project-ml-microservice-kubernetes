#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
# The same as in upload_docker.sh
dockerpath="esteve55/api"

# Step 2
# Run the Docker Hub container with kubernetes
# The image for the container to run.
# The port that this container exposes.
kubectl run api\
    --generator=run-pod/v1\
    --image=$dockerpath:latest\
    --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward api 8000:80
