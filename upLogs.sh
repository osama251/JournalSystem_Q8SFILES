#!/bin/zsh
echo "Building!"

# Stop and remove containers
cd JournalSystem_Logs

# Change the name here to match the YAML 'image' field
docker build -t osama251/journallogs-backend:latest .

# Push the correct name
docker push osama251/journallogs-backend:latest

# This will now pull the fresh image you just pushed
kubectl rollout restart deploy logs-backend

cd ..

