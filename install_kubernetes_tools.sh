#!/bin/bash
# Update system and install dependencies
sudo apt-get update && sudo apt-get install -y apt-transport-https curl

# Add the Kubernetes APT repository
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

# Install Kubernetes components (kubeadm, kubectl, kubelet)
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl

# Enable kubelet service
sudo systemctl enable kubelet

# Verify installation
kubeadm version && kubectl version --client && kubelet --version
