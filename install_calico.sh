#!/bin/bash
# Apply Calico network policies to the Kubernetes cluster
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Verify that the Calico pods are running
kubectl get pods --all-namespaces
