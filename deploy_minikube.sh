# Deploy the app as a service to minikube
# Require docker & minikube installed
service_file="service.yaml"
deploy_file="deployment.yaml"
service_name="story-service"
minikube start
kubectl apply -f $service_file -f $deploy_file
minikube service $service_name
