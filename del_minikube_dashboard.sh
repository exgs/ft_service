echo "\033[33m";echo "----------delete.sh----------";echo "\033[0m"

kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml

kubectl delete services --all
echo "\033[33m"kubectl delete services --all"\033[0m"

kubectl delete deploy --all
echo "\033[33m"kubectl delete deploy --all"\033[0m"
# kubectl delete persistentvolume --all

echo "\033[33m"kubectl delete configmap --all"\033[0m"
kubectl delete configmap --all

echo "\033[33m"kubectl delete po --all"\033[0m"
kubectl delete po --all

echo "\033[33m"minikube stop"\033[0m"
minikube stop
# echo "\033[33m"minikube delete"\033[0m"
# minikube delete