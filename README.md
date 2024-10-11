# DevOps-Kubernetes-BigData-CI-CD
Setting up a highly available Kubernetes cluster, big data streaming service, and a CI/CD pipeline. This project demonstrates security configuration, monitoring, and logging in a multi-node Kubernetes environment, real-time data pipeline integration with Kafka, NiFi, Spark, Airflow, and a fully functional CI/CD pipeline using Jenkins

### Overview
This repository contains the implementation for a comprehensive DevOps challenge, focusing on setting up:
1.	A highly available Kubernetes cluster.
2.	A big data streaming service using tools like Kafka, Spark, NiFi, and Airflow.
3.	A CI/CD pipeline using Jenkins.
Each section provides step-by-step instructions, explanations, and configurations for the challenge.
---
## Contents
1.	Kubernetes Cluster Setup
2.	Big Data Streaming Service
3.	CI/CD Pipeline Setup
4.	Prerequisites
5.	How to Run
6.	Conclusion
----

## 1. Kubernetes Cluster Setup
This section demonstrates how to create a highly available, performant, and secure Kubernetes cluster with the following features:
•	Two master nodes with a Virtual IP (VIP) setup using keepalived.
•	Two worker nodes for deploying applications.
•	Monitoring and Logging with Prometheus, Grafana, and Fluentd.
Steps:
1.	Environment Setup: Set up 2 master and 2 worker nodes using Virtual Machines (bare metal or cloud instances).
2.	Kubernetes Installation: Install Docker, kubeadm, kubectl, and kubelet on all nodes.
3.	Cluster Initialization: Initialize the first master node and join the second master and worker nodes.
4.	Keepalived Configuration: Configure VIP for high availability between the two master nodes.
5.	Monitoring and Logging: Install Prometheus and Grafana for monitoring, and Fluentd for centralized logging.

---
## 2. Big Data Streaming Service
This section walks through setting up a big data streaming service to manage both SQL-based transactional data and NoSQL-based analytical data using:
•	Apache Kafka for message brokering.
•	Apache NiFi for data flow management.
•	Apache Spark for real-time data processing.
•	Apache Airflow for workflow orchestration.
Steps:
1.	Kafka Installation: Set up Kafka for streaming data.
2.	NiFi Installation: Use NiFi for data routing between databases.
3.	Spark Integration: Process streaming data with Spark from Kafka.
4.	Airflow Setup: Manage workflows using Airflow for automated pipeline orchestration.

---

3. CI/CD Pipeline Setup
This section outlines the setup of a CI/CD pipeline to automate application deployment:
•	Jenkins is used to manage the pipeline.
•	The pipeline builds, tests, and deploys a sample application to the Kubernetes cluster.
Steps:
1.	Jenkins Installation: Set up Jenkins on a dedicated server.
2.	Pipeline Configuration: Configure a Jenkins pipeline to trigger builds on Git commits and deploy the application using kubectl.
3.	Deployment: The CI/CD pipeline deploys the application to the Kubernetes cluster.
Files:
---
Prerequisites
Before running this project, ensure you have the following installed:
•	Docker on all machines.
•	Kubernetes tools (kubectl, kubeadm, kubelet) on all nodes.
•	Kafka, NiFi, Spark, Airflow on their respective machines.
•	Jenkins on a separate machine for the CI/CD pipeline.
Ensure that all nodes are networked properly and can communicate with each other.
Required Tools:
•	Linux-based Virtual Machines (VMs) or cloud instances.
•	Helm (for Kubernetes package management).
•	Git (for version control).

----
How to Run Kubernetes Cluster:

1.	Clone the repository:
2.	Follow the instructions in the kubernetes/ folder to set up the Kubernetes cluster, install keepalived, and configure VIP, Prometheus, Grafana, and Fluentd.
2. Big Data Streaming Service:
1.	Navigate to the big-data-streaming/ folder for instructions on installing Kafka, NiFi, Spark, and Airflow.
2.	Follow the provided documentation to configure each component and test the pipeline.
3. CI/CD Pipeline:
1.	Set up Jenkins by following the steps in the ci-cd/ folder.
2.	Run the pipeline to build and deploy a sample application to the Kubernetes cluster.
---
Conclusion

This repository demonstrates the complete implementation of:


  1) A highly available Kubernetes cluster with monitoring and logging.

 2) A big data streaming service that integrates transactional and analytical databases.
    
 3) A CI/CD pipeline that automates the deployment of applications to Kubernetes.


---
Contributors: [Tim Murkomen](https://github.com/Timoo20) 
---
