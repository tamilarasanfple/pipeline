#!/bin/bash

# Change to the directory where your Docker Compose file is located
cd "$(dirname "$0")"

# Check if docker-compose.yaml exists
if [ ! -f "docker-compose.yaml" ]; then
    echo "docker-compose.yaml not found in the current directory."
    exit 1
fi

# Ensure Docker Compose is up-to-date
docker-compose pull

# Stop and remove Docker Compose services and containers
docker-compose down

# Start Docker Compose services
docker-compose up -d

