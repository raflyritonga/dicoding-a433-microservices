#!/bin/bash

# GitHub username
USERNAME="raflyritonga"

# Build backend image with latest tag
docker image build -t ghcr.io/$USERNAME/karsajobs:latest .

# Login to GHCR using Personal Access Token
echo $PASSWORD_GITHUB | docker login ghcr.io -u $USERNAME --password-stdin

# Push backend image to GHCR
docker push ghcr.io/$USERNAME/karsajobs:latest
