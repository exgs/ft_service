echo "START"
kubectl apply -f postgres.yaml
# kubectl apply -f postgres_copy.yaml
kubectl apply -f redis.yaml
# kubectl apply -f redis_copy.yaml
kubectl apply -f result.yaml
kubectl apply -f vote.yaml
kubectl apply -f worker.yaml
echo "END"