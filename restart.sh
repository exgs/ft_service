echo "\033[33m";echo "restart";echo "\033[0m"

kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/ma
kubectl apply -f ./srcs/metallb/metallb-configmap.yaml # 단독으로 바뀌면 minikube stop 되면서 터짐

kubectl apply -f ./srcs/nginx/nginx-service.yaml
kubectl apply -f ./srcs/nginx/nginx-deployment.yaml

kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-service.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-deployment.yaml

kubectl apply -f ./srcs/mysql/mysql-service.yaml
kubectl apply -f ./srcs/mysql/mysql-deployment.yaml

kubectl apply -f ./srcs/wordpress/wordpress-service.yaml
kubectl apply -f ./srcs/wordpress/wordpress-deployment.yaml

echo "\033[33m";echo "Finish";echo "\033[0m"