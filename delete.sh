echo "\033[33m";echo "----------delete.sh----------";echo "\033[0m"

echo "\033[33m"kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml"\033[0m"
echo "\033[33m"kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml"\033[0m"
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml # 순서바뀌면, 에러뜸
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml # 순서바뀌면, 에러뜸 네임스페이스를 나중에??

echo "\033[33m"kubectl delete services --all"\033[0m"
kubectl delete services --all

echo "\033[33m"kubectl delete deployment --all"\033[0m"
kubectl delete deployment --all

echo "\033[33m"kubectl delete configmap --all"\033[0m"
kubectl delete configmap --all

# echo "\033[33m"kubectl delete pod --all"\033[0m" #deployment를 삭제해주면, pod는 알아서 삭제된다. wordpress에서 병목현상이 나타난 이유도 여기에 있을 꺼 같다.
# kubectl delete pod --all

echo "\033[33m"kubectl delete persistentvolumeclaims --all"\033[0m"
kubectl delete persistentvolumeclaims --all

echo "\033[33m"kubectl delete persistentvolume --all"\033[0m"
kubectl delete persistentvolume --all


echo "\033[33m"kubectl delete secret --all"\033[0m"
kubectl delete secret --all

## 아래 명령어들은 오래걸림
# echo "\033[33m"minikube stop"\033[0m"
# minikube stop
# echo "\033[33m"minikube delete"\033[0m"
# minikube delete
