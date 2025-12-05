#!/bin/zsh
echo "Building!"

# Stop and remove containers
docker compose down

# Build frontend
docker compose build --no-cache

# Start containers
docker compose up -d
