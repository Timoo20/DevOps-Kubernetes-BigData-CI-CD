#!/bin/bash

# Update package manager
sudo apt update && sudo apt upgrade -y

# Install Java (Kafka requires Java)
sudo apt install default-jdk -y

# Download and extract Kafka
wget https://downloads.apache.org/kafka/3.0.0/kafka_2.13-3.0.0.tgz
tar -xvzf kafka_2.13-3.0.0.tgz
mv kafka_2.13-3.0.0 /usr/local/kafka

# Start Zookeeper (Kafka requires Zookeeper to manage brokers)
nohup /usr/local/kafka/bin/zookeeper-server-start.sh /usr/local/kafka/config/zookeeper.properties > zookeeper.log 2>&1 &

# Start Kafka broker
nohup /usr/local/kafka/bin/kafka-server-start.sh /usr/local/kafka/config/server.properties > kafka.log 2>&1 &

echo "Kafka is set up and running!"
