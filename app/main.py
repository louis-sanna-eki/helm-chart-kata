from fastapi import FastAPI

app = FastAPI()


@app.get("/hello-world")
async def root():
    return {"message": "Hello World"}


@app.get("/liveness")
async def liveness():
    return {"status": "ok"}


@app.get("/readiness")
async def readiness():
    return {"status": "ok"}