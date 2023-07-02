#!/bin/bash 

echo "Deploying application to your cluster.."
kubectl apply -f ./kubernetes/my-env-var-configmap.yaml ./kubernetes/api-server-deployment.yaml ./kubernetes/api-server-service.yaml
echo "Application deployed."