echo "\033[33m"
echo "connect_local_with_minikube.sh"

echo '$(minikube docker-env)'
eval $(minikube docker-env)
env
# source ./connect_local_with_minikube.sh

echo "\033[0m"