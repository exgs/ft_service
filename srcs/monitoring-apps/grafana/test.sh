docker build -t ft_grafana .
kubectl apply -f grafana-deployment.yaml
kubectl apply -f grafana-configmap.yaml
kubectl apply -f grafana-service.yaml
