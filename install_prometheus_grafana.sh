#!/bin/bash
# Add Prometheus Helm repository
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Update Helm repositories
helm repo update

# Install Prometheus and Grafana stack
helm install prometheus prometheus-community/kube-prometheus-stack

# Verify the installation
kubectl get pods --namespace default
