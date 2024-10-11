
#!/bin/bash

# Update system and install necessary packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y openjdk-11-jdk wget curl

# Install Docker
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Pull Jenkins Docker image
sudo docker pull jenkins/jenkins:lts

# Create Jenkins directories
mkdir -p $HOME/jenkins_home

# Start Jenkins using Docker
sudo docker run -d -p 8080:8080 -p 50000:50000 \
  -v $HOME/jenkins_home:/var/jenkins_home \
  --name jenkins jenkins/jenkins:lts

# Print Jenkins initial admin password
echo "Jenkins is starting up. Please wait..."
sleep 30
echo "Jenkins initial admin password:"
sudo cat $HOME/jenkins_home/secrets/initialAdminPassword
