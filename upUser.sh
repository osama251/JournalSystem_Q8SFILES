#!/bin/zsh
echo "Building!"

# Stop and remove containers
cd JournalSystem_User

docker build -t osama251/journalsystem-user:latest .

docker push osama251/journalsystem-user:latest

kubectl rollout restart deployment user-service

cd ..

