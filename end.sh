echo "\033[33m";echo "----------delete.sh----------";echo "\033[0m"

echo "\033[33m"kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml"\033[0m"
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml

echo "\033[33m"kubectl delete services --all"\033[0m"
kubectl delete services --all

echo "\033[33m"kubectl delete deployment --all"\033[0m"
kubectl delete deployment --all

echo "\033[33m"kubectl delete configmap --all"\033[0m"
kubectl delete configmap --all

echo "\033[33m"kubectl delete pod --all"\033[0m"
kubectl delete pod --all

# echo "\033[33m"kubectl delete persistentvolume --all"\033[0m"
# kubectl delete persistentvolume --all

echo "\033[33m"kubectl delete secret --all"\033[0m"
kubectl delete secret --all

## 아래 명령어들은 오래걸림
# echo "\033[33m"minikube stop"\033[0m"
# minikube stop
# echo "\033[33m"minikube delete"\033[0m"
# minikube delete
