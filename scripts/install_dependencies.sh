#!/bin/bash
set -e

echo "Updating packages..."

apt-get update

if ! command -v docker >/dev/null 2>&1; then
    apt-get install -y docker.io
fi

systemctl start docker
systemctl enable docker

echo "Docker installed successfully."