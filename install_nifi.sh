#!/bin/bash

# Update package manager
sudo apt update && sudo apt upgrade -y

# Download and extract Apache NiFi
wget https://downloads.apache.org/nifi/1.14.0/nifi-1.14.0-bin.tar.gz
tar -xvzf nifi-1.14.0-bin.tar.gz
mv nifi-1.14.0 /usr/local/nifi

# Start NiFi
/usr/local/nifi/bin/nifi.sh start

echo "NiFi is running at http://localhost:8080/nifi"
