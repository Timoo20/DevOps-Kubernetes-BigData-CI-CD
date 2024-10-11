#!/bin/bash

# Update package manager
sudo apt update && sudo apt upgrade -y

# Install Java and Scala (Spark requires Java and Scala)
sudo apt install default-jdk scala git -y

# Download and install Spark
wget https://downloads.apache.org/spark/spark-3.0.0/spark-3.0.0-bin-hadoop2.7.tgz
tar -xvzf spark-3.0.0-bin-hadoop2.7.tgz
sudo mv spark-3.0.0-bin-hadoop2.7 /usr/local/spark

# Set environment variables
echo "export SPARK_HOME=/usr/local/spark" >> ~/.bashrc
echo "export PATH=$SPARK_HOME/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

echo "Spark installed successfully!"
