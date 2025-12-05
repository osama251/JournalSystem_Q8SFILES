#!/bin/zsh
echo "Building!"

# Stop and remove containers
cd JournalSystem_Search

./mvnw package -DskipTests

docker build -f src/main/docker/Dockerfile.jvm \
  -t osama251/journalsearch-backend:v2 .

docker push osama251/journalsearch-backend:v2

kubectl rollout restart deploy/search-backend

cd ..
