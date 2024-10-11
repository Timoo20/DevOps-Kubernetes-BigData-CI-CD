#!/bin/bash

# Update package manager
sudo apt update && sudo apt upgrade -y

# Install Airflow using pip
pip install apache-airflow

# Initialize Airflow database
airflow db init

# Start Airflow webserver and scheduler
nohup airflow webserver -p 8081 > airflow_webserver.log 2>&1 &
nohup airflow scheduler > airflow_scheduler.log 2>&1 &

echo "Airflow is running at http://localhost:8081"
