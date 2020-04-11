#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=dockerpath=rajkushw/aws-images

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run test-app --image=docker.io/rajkushw/aws-images:predict_udacity

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/predict_udacity 8000:80


