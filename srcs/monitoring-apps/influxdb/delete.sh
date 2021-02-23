docker build -t ft_influxdb .
kubectl delete -f influxdb-service.yaml
kubectl delete -f influxdb-pv.yaml
kubectl delete -f influxdb-pvc.yaml
kubectl delete -f influxdb-secret.yaml
kubectl delete -f influxdb-deployment.yaml
