from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI(title="Hello World API")


@app.get("/")
def read_root():
    """Root endpoint that returns a hello world message"""
    return JSONResponse(
        status_code=200,
        content={"message": "Hello World from FastAPI!", "status": "success"}
    )


@app.get("/health")
def health_check():
    """Health check endpoint"""
    return JSONResponse(
        status_code=200,
        content={"status": "it is healthy...1"}
    )


@app.get("/api/greet/{name}")
def greet(name: str):
    """Greet endpoint that takes a name parameter"""
    return JSONResponse(
        status_code=200,
        content={"message": f"Hello {name}, how are you?"}
    )


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
