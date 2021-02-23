docker build -t ft_influxdb .
kubectl apply -f influxdb-service.yaml
kubectl apply -f influxdb-pv.yaml
kubectl apply -f influxdb-pvc.yaml
kubectl apply -f influxdb-secret.yaml
kubectl apply -f influxdb-deployment.yaml
