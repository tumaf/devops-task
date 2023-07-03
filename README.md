# DevOps Task - Microservice on Kubernetes

Please follow the steps below in order to get the proper results.

## Before you start
1. Dockerfile is provided but the image is already built and pushed to Dockerhub.
2. In Kubernetes folder, api-server-deployment.yaml container image value is already assigned to use the image from my public account, but you can rebuild the image and push it into your remote or local registry and assign the new value into deployment yaml, if needed.
3. You can access the application internally from the cluster with port 8080.
4. Namespace for the application is *testing*, you can change it in the yaml files.

## How to Run the project
1. Clone the repository: 'https://github.com/tumaf/devops-task'
2. Navigate to the repo directory.

## How to build and run the container
In case you want to build the image again, make sure you are in the repo dir and run the following commands:
1. *docker build -t api-server-task .* (Don't forget the dot :))
2. *docker run -d -p 8080:5000 api-server-task*
3. From your browser, try to access http://localhost:8080/healthy or /get_variable

## How to deploy it to kubernetes
Make sure you are in the repo dir and run the script *deploy-app.sh* and check that pod, cm and service are running properly.\
**NOTE:** Provide the script with required permissions if needed.\
\
**[optional]**\
If you want to rename the image and/or change registry, run the following.
1. *docker tag api-server-task registry/you-image-name*
2. *docker push registry/you-image-name* - remote/local registry \
**NOTE:** If you decided to tag the image with another name, make sure to change the image name properly in api-server-deployment.yaml file and run the *deploy-app.sh* script again.


## How to test results
1. From your K8S cluster, SSH to any pod under the same namespace and run *curl http://api-service:8080/get_variable*

## Even more tests
1. You can run additonal GET API *curl http://api-service:8080/healthy*
2. In case you want to edit/update the environemnt variable value you can acheive that by running the following:
   *curl -X POST http://api-service:8080/edit_variable -H "Content-Type: application/json" -d "{\"value\":\"YOUR_UPDATED_VALUE\"}"*
3. You can test the result by running /get_variable again.
