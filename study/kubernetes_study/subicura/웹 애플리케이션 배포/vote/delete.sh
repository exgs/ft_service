echo "START"
kubectl delete --all services
kubectl delete --all deployments
kubectl delete --all pods
echo "END"