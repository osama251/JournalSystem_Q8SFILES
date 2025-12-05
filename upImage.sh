#!/bin/zsh
echo "Building!"

# Stop and remove containers
cd JournalSystem_Image

docker build -t osama251/journalsystem-image:latest .

docker push osama251/journalsystem-image:latest

kubectl rollout restart deploy/image-backend

cd ..

