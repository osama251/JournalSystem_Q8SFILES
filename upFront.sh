#!/bin/zsh
echo "Building!"

# Stop and remove containers
cd journalsystem_frontend

docker build -t osama251/journalsystem-frontend:latest .
docker push osama251/journalsystem-frontend:latest

kubectl rollout restart deploy/frontend

cd ..

