#!/bin/bash
set -e

docker pull kalyan133/aws_cicd

docker run -d -p 8080:8080 kalyan133/aws_cicd

# Start the container with the specified image and options
echo "Starting container...1"