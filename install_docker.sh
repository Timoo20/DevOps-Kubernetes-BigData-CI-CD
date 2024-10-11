#!/bin/bash
# Update system and install Docker
sudo apt-get update
sudo apt-get install -y docker.io

# Enable Docker to start on boot
sudo systemctl enable docker

# Start Docker service
sudo systemctl start docker

# Verify Docker installation
docker --version
