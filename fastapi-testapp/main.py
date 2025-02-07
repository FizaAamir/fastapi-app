import os
import uvicorn
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, Cloud Run!"}

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))  # Use the PORT environment variable
    uvicorn.run(app, host="0.0.0.0", port=port)
