#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="esteve55/api"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# Provide a password using STDIN, see https://docs.docker.com/engine/reference/commandline/login/
# cat my_password.txt | docker login --username esteve55 --password-stdin
# The password is not uploaded in clear for submission
docker login --username esteve55
# Tag an image referenced by Name and Tag, see https://docs.docker.com/engine/reference/commandline/tag/
docker tag api:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest