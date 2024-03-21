# first-app-k8-ingress
this repo have the code to demonstrate about docker ingress and k8 troubleshooting

# first-app-k8-ingress
this repo have the code to demonstrate about docker ingress and k8 troubleshooting

2. this folder have index.html, red.html, blue.html and respective docker file. We need to use below command to create respective containers:    default —> port 80    red —> port 5001
         blue —> Port 5002
docker build -t app-blue -f Dockerfile.blue . 
docker build -t  app-red -f Dockerfile.red .
docker build -t  app-default -f Dockerfile . 
docker run -d -p 5001:80 --name  app-red  app-red  
docker run -d -p 5002:80 --name  app-blue  app-blue
docker run -d -p  80:80 --name  app-default   app-default

3. Push the images to dockerhub in private repositories.  —> create a separete reel for this
4. Launch minikube, create secrets to connect private docker hub repositories to pull images
5. Create apps,  blue-app,  red-app, default-app using deployment manifests 
6. Create Service and attach to the respective deployments, using correct selectors and port
7. Create ingress ( show using port forward command or ingress.yaml manifests)
