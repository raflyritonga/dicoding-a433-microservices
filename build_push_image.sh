#!/bin/bash

# GHCR requires lowercase usernames
GITHUB_USERNAME="raflyritonga"

# Build
docker image build -t item-app:v1 .

docker images

# Retag for GHCR
docker image tag item-app:v1 ghcr.io/$GITHUB_USERNAME/item-app:v1

# PASSWORD_GITHUB must be a PAT with write:packages scope
echo $PASSWORD_GITHUB | docker login ghcr.io -u $GITHUB_USERNAME --password-stdin

docker push ghcr.io/$GITHUB_USERNAME/item-app:v1
