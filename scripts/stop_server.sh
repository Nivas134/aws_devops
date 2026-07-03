#!/bin/bash

docker stop aws_cicd || true
docker rm aws_cicd || true

echo "Previous container stopped."