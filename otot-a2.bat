kind create cluster --name kind-1 --config k8s/kind/cluster-config.yaml
docker ps

kubectl apply -f k8s/manifests/k8s/deployment-config.yaml

kubectl label node kind-1-control-plane ingress-ready=true

kubectl apply -f k8s/manifests/k8s/service-config.yaml

kubectl apply -f k8s/manifests/k8s/ingress-config.yaml

kubectl port-forward service/backend 8080:8080