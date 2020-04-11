#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=rajkushw/aws-images

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run my-app --image=docker.io/rajkushw/aws-images:rajkuberhub --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/my-app 8006:80


