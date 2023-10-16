## How to deploy:
### Step 1: Config DB. <br />
1. Set up Bitnami Repo
```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```
2. Creating a PersistentVolume (PV) and a PersistentVolumeClaim (PVC)
```bash
kubectl postgres-storage.yaml
```  
3. Install Helm Postgres Chart into cluster.
```bash
helm install co-working -f value.yaml bitnami/postgresql --set volumePermissions.enabled=true
```
### Step 2: Create a Dockerfile for the Python application and build codeBuild to create and push image into AWS ECR. <br />
    Create a CodeBuild project to connect with the repository and build the Image into AWS ECR and configure it to trigger a build each time there is a merge in the repo

### Step 3: Create a service and deployment using Kubernetes configuration files to deploy the application. <br />
1. Create a service and deployment yaml file
2. Apply configMap, secret, application deployment, application service into cluster
```bash
kubectl apply -f deployments/
``` 

### Step 4: Verify. <br />
```bash
kubectl get pods
``` 


