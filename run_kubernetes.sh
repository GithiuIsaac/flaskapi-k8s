#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy python-helloworld --image=igithiu/python-helloworld:v1.0.0

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods


# Step 4:
# Forward the container port to a host
kubectl port-forward pod/python-helloworld-5df47ccdd-jw84x --address 0.0.0.0 5000:5000
