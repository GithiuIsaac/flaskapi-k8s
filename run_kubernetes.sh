#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="igithiu/flaskapi-ms:v1"

# Run the Docker Hub container with kubernetes
kubectl run flaskapi --image=$dockerpath --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward flaskapi 8000:80
