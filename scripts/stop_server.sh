#!/bin/bash
set +e

echo "Stopping existing container..."

docker stop aws_cicd

docker rm aws_cicd

echo "Container stopped."