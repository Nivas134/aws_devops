#!/bin/bash

sleep 10

curl -f http://localhost:8000 || exit 1

echo "Application is healthy."