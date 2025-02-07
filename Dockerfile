FROM python:3.9-slim

WORKDIR /app

# Copy dependencies first for better caching
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the app code
COPY . /app

# Set the working directory to /app where main.py is located
WORKDIR /app

EXPOSE 8080

# Run Uvicorn with the correct module path
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
