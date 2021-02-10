echo "\033[33m"
echo "disconnect_local_with_minikube.sh"

echo DOCKER_TLS_VERIFY
unset DOCKER_TLS_VERIFY

echo "unset DOCKER_HOST"
unset DOCKER_HOST

echo "unset export"
unset "export"

echo "unset DOCKER_CERT_PATH"
unset DOCKER_CERT_PATH

echo "unset MINIKUBE_ACTIVE_DOCKERD"
unset MINIKUBE_ACTIVE_DOCKERD

echo "\033[0m"