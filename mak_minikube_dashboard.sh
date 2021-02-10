echo "\033[33m";echo "----------setup.sh----------";echo "\033[0m"
echo "\033[33m";echo "minikube start --driver=virtualbox";echo "\033[0m"
minikube start --driver=virtualbox

echo "\033[33m";echo "minikube addons enable metallb";echo "\033[0m"
minikube addons enable metallb
# kubectl apply -f
echo "\033[33m";echo "minikube dashboard";echo "\033[0m"
minikube dashboard
echo "\033[33m";echo "Finish metalLB setup";echo "\033[0m"