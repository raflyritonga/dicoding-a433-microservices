#!/bin/bash

# GitHub username
USERNAME="raflyritonga"

# Build frontend image with latest tag
docker image build -t ghcr.io/$USERNAME/karsajobs-ui:latest .

# Login to GHCR using Personal Access Token
echo $PASSWORD_GITHUB | docker login ghcr.io -u $USERNAME --password-stdin

# Push frontend image to GHCR
docker push ghcr.io/$USERNAME/karsajobs-ui:latest
