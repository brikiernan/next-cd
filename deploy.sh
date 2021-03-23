docker build . -t briankiernan/next-cd:latest -t briankiernan/next-cd:$SHA 

docker push briankiernan/next-cd:latest

docker push briankiernan/next-cd:$SHA

kubectl apply -f k8s
kubectl set image deployments/next-cd-depl next-cd=briankiernan/next-cd:$SHA