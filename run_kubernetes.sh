#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="igithiu/flaskapi-ms:v1"

# Run the Docker Hub container with kubernetes
kubectl create deploy flaskapi --image=$dockerpath --port=80 --labels app=flaskapi

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward flaskapi --address 0.0.0.0 8000:80
