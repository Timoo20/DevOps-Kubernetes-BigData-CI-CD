#!/bin/bash
# Initialize the Kubernetes cluster on Master1
sudo kubeadm init --control-plane-endpoint "192.168.1.100:6443" --upload-certs

# Setup kubectl for the current user (non-root)
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Verify that kubectl is working
kubectl get nodes
