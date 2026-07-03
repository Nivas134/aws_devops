#!/bin/bash
set -e

echo "Pulling latest image..."

docker pull kalyan133/aws_cicd:latest

echo "Starting container..."

docker run -d \
    --name aws_cicd \
    -p 8000:8000 \
    kalyan133/aws_cicd:latest

echo "Container started."