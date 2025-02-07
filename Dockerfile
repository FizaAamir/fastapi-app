FROM python:3.9-slim

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY ./fastapi-testapp /app/fastapi-testapp

# Set the correct working directory
WORKDIR /app/fastapi-testapp  # Ensure main.py is accessible

EXPOSE 8080

# Make sure main.py is being executed from the correct directory
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]



