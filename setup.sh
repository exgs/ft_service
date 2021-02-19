echo "\033[33m";echo "----------setup.sh----------";echo "\033[0m"
# echo "\033[33m";echo "minikube start --driver=hyperkit";echo "\033[0m"
# minikube start --driver=hyperkit

# echo "\033[33m";echo "minikube addons enable metallb";echo "\033[0m"
# minikube addons enable metallb
# kubectl apply -f

echo "\033[33m";echo '$(minikube docker-env)';echo "\033[0m"
eval $(minikube docker-env)
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f ./srcs/metallb/metallb-configmap.yaml


docker build -t ft_nginx ./srcs/nginx/
kubectl apply -f ./srcs/nginx/nginx-service.yaml
kubectl apply -f ./srcs/nginx/nginx-deployment.yaml

docker build -t ft_phpmyadmin ./srcs/phpmyadmin/
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-service.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin-deployment.yaml

docker build -t ft_mysql ./srcs/mysql/
kubectl apply -f ./srcs/mysql/mysql-service.yaml
kubectl apply -f ./srcs/mysql/mysql-deployment.yaml
kubectl apply -f ./srcs/mysql/mysql-pvc.yaml

docker build -t ft_wordpress ./srcs/wordpress/
kubectl apply -f ./srcs/wordpress/wordpress-service.yaml
kubectl apply -f ./srcs/wordpress/wordpress-deployment.yaml

echo "\033[33m";echo "minikube dashboard";echo "\033[0m"
minikube dashboard
echo "\033[33m";echo "Finish metalLB setup";echo "\033[0m"