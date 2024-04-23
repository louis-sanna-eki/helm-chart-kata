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
minikube service web-app-helm-chart --url
```
