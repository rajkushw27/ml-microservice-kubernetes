#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=rajkushw/aws-images

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag a3f7475893ea rajkushw/aws-images:predict_udacity

# Step 3:
# Push image to a docker repository
docker push rajkushw/aws-images:predict_udacity
