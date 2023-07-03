# DevOps Task - Microservice on Kubernetes

Please follow the steps below in order to get the proper results.

## Before you start
1. Dockerfile is provided but the image is already built and pushed to Dockerhub.
2. In Kubernetes folder, api-server-deployment.yaml container image value is already assigned to use the image from my public account, but you can rebuild the image and push it into your remote or local registry, if needed.
3. I used NodePort 30080 in order to expose service externally if needed, you can change port # or just delete the record so it will be genrated randomly.


## How to Run the task
1. Clone the repository: 'https://github.com/tumaf/devops-task'
2. Navigate to the repo directory.
3. Run the script *deploy-app.sh* and check that pod and service are running properly.

## How to access the application (several ways)
1. From your cluster/browser, run curl http://node-name:30080/get_variable
2. if you need to check it 