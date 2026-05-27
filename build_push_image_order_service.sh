#!/bin/bash

# GitHub username for GHCR (lowercase)
USERNAME="raflyritonga"

# Build order service image with latest tag
docker image build -t ghcr.io/$USERNAME/order-service:latest .

# Login to GHCR using Personal Access Token
echo $PASSWORD_GITHUB | docker login ghcr.io -u $USERNAME --password-stdin

# Push image to GHCR
docker push ghcr.io/$USERNAME/order-service:latest
