### Create docker images: 
    To create docker images just need to make changes to the code and push to the repo. 
    The codebuild will trigger automatically upon change and create a new image and push the image to ECR repo on aws.

### Create node group:
    Create new node group

### Create cluster:
    Create new cluster

### Configure a Database
    Create postgres database using a Helm Chart

### Configure a Database
    Create postgres database using a Helm Chart

### Write service and deployment yaml file
    After that get the password of the db and put into secret.yaml fil
    Write analytics-service.yaml
    Write analytics-deployment.yaml

### Deploy
    Run kubectl apply -f deployment/

### Verify
    Use kubectl get pods to make sure the pods is running and it is ready
