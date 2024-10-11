#!/bin/bash
# Replace <token> and <hash> with the actual values generated from the init process
sudo kubeadm join 192.168.1.100:6443 --token <token> --discovery-token-ca-cert-hash sha256:<hash> --control-plane
