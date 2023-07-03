#!/bin/bash 

echo "Creating namespace.."
kubectl create namespace testing
echo "Deploying application to your cluster.."
kubectl apply -f ./kubernetes/my-env-var-configmap.yaml -f ./kubernetes/api-server-deployment.yaml -f ./kubernetes/api-server-service.yaml
echo "Application deployed."