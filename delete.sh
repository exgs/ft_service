echo "\033[33m";echo "----------delete.sh----------";echo "\033[0m"

echo "\033[33m"kubectl delete services --all"\033[0m"
kubectl delete services --all

echo "\033[33m"kubectl delete deployment --all"\033[0m"
kubectl delete deployment --all

echo "\033[33m"kubectl delete configmap --all"\033[0m"
kubectl delete configmap --all

# echo "\033[33m"kubectl delete pod --all"\033[0m" #deployment를 삭제해주면, pod는 알아서 삭제된다. wordpress에서 병목현상이 나타난 이유도 여기에 있을 꺼 같다.
# kubectl delete pod --all

## 샥제 안해주면 그대로 남아있음. 결국 둘다 삭제하긴 해야함. deployment의 replicas 처럼 수를 유지시켜주지는 않는다.
echo "\033[33m"kubectl delete persistentvolumeclaims mysql-pvc"\033[0m" # 삭제할 때 오래걸림 무조껀 claim먼저 삭제해야 뒤에서 멈추지 않음
kubectl delete persistentvolumeclaims --all
# kubectl delete persistentvolumeclaims mysql-pvc # 이렇게해도 오래걸림
echo "\033[33m"kubectl delete persistentvolume --all"\033[0m" # 둘 중 얘만 delete하면, 삭제가 되지않고 아예 멈춤.
# 그 이유가 pv를 삭제하려고하지만, persistentvolumeclaim에서는 요구해서 그런건가??
kubectl delete persistentvolume --all
# kubectl delete persistentvolume mysql-pv


echo "\033[33m"kubectl delete secret --all"\033[0m"
kubectl delete secret --all

echo "\033[33m"kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml"\033[0m"
echo "\033[33m"kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml"\033[0m"
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml # 순서바뀌면, 에러뜸
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml # 순서바뀌면, 에러뜸 네임스페이스를 나중에??
## 아래 명령어들은 오래걸림
# echo "\033[33m"minikube stop"\033[0m"
# minikube stop
# echo "\033[33m"minikube delete"\033[0m"
# minikube delete
