### Quick start

```shell
conda activate helm-kata
```

Launch:

```shell
uvicorn main:app --reload
```

With docker:

docker build -t helm-app .
docker run -d -p 8000:8000 helm-app
