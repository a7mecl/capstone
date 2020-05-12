#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
#dockerpath=""
dockerpath="a7mecl/capstone"

# Step 2
# Run a Docker Hub container with kubernetes
kubectl run capstone\
    --generator=run-pod/v1\
    --image=a7mecl/capstone\
    --port=80 --labels app=capstone


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward capstone 8000:80

