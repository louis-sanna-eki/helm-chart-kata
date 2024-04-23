### Quick start

```shell
conda activate helm-kata
```

Launch:

```shell
uvicorn main:app --reload
```

With docker:

```shell
docker build -t helm-web-app .
docker run -d -p 8000:8000 helm-web-app
```

### Deploy to Minikube

```
minikube image load helm-web-app:latest
```

```shell
helm install web-app ./helm-chart
```

(
undone by 
```shell
helm uninstall web-app
```
)

```shell
export NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services web-app-helm-chart)
export NODE_IP=$(kubectl get nodes --namespace default -o jsonpath="{.items[0].status.addresses[0].address}")
echo http://$NODE_IP:$NODE_PORT
```

## Tips

expose pod:
```shell
kubectl port-forward web-app-helm-chart-696bb889c6-zb9lj 8000:8000
```