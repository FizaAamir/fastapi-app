import os
from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, World!"}

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))  # Use Cloud Run's PORT env variable
    uvicorn.run(app, host="0.0.0.0", port=port)

