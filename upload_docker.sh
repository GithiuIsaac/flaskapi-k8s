#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# The image is already built via `run_docker.sh`

# Create dockerpath
dockerpath="igithiu/flaskapi-ms:v1"

# Authenticate & tag
# docker login - This should already be done and the current CLI authenticated on Docker
echo "Docker ID and Image: $dockerpath"
docker tag flaskapi-ms:v1 ${dockerpath}

# Push image to a docker repository
docker push ${dockerpath}
