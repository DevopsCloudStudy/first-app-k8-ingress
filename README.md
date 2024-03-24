Certainly! Below is a properly formatted version of the README file content:

---

# Repository: First-App-K8-Ingress

This repository contains code to demonstrate Docker ingress and Kubernetes troubleshooting.

## Folder Contents:

This folder contains the following files:

- `index.html`
- `red.html`
- `blue.html`
- `Dockerfile`
- `Dockerfile.red`
- `Dockerfile.blue`

## Instructions:

To create the respective containers, use the following commands:

1. **Default**:
   - Port: 80
   ```bash
   docker build -t app-default -f Dockerfile .
   docker run -d -p 80:80 --name app-default app-default
   ```

2. **Red**:
   - Port: 5001
   ```bash
   docker build -t app-red -f Dockerfile.red .
   docker run -d -p 5001:80 --name app-red app-red
   ```

3. **Blue**:
   - Port: 5002
   ```bash
   docker build -t app-blue -f Dockerfile.blue .
   docker run -d -p 5002:80 --name app-blue app-blue
   ```

### Pushing Images to DockerHub:

Push the images to DockerHub in private repositories. Please create a separate reel for this process.

### Kubernetes Setup:

1. **Launch Minikube:**
   - Start Minikube to create a local Kubernetes cluster.

2. **Create Secrets:**
   - Create secrets to connect private Docker Hub repositories to pull images.

3. **Create Deployments:**
   - Create deployment manifests for `blue-app`, `red-app`, and `default-app`.

4. **Create Services:**
   - Create services and attach them to the respective deployments, ensuring correct selectors and port mappings.

5. **Create Ingress:**
   - Create an Ingress to manage external access to services. You can demonstrate this using port forwarding or `ingress.yaml` manifests.

