echo "\033[33m";echo "restart";echo "\033[0m"

# 이렇게 해줘야 metallb-config.yaml에서 아이피주소의 범위를 바꾸어도 잘 적용됨
kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f ./srcs/metallb/metallb-configmap.yaml # 단독으로 바뀌면 minikube stop 되면서 터짐?

## 아랫부분으로 
kubectl apply -f ./srcs/nginx/nginx-service.yaml
kubectl apply -f ./srcs/nginx/nginx-deployment.yaml

kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-service.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-deployment.yaml

kubectl apply -f ./srcs/mysql/mysql-service.yaml
kubectl apply -f ./srcs/mysql/mysql-deployment.yaml
kubectl delete -f ./srcs/mysql/mysql-pvc.yaml
kubectl apply -f ./srcs/mysql/mysql-pvc.yaml

kubectl apply -f ./srcs/wordpress/wordpress-service.yaml
kubectl apply -f ./srcs/wordpress/wordpress-deployment.yaml

echo "\033[33m";echo "Finish";echo "\033[0m"