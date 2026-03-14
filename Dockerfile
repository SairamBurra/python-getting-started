FROM python:3.12-slim

WORKDIR /app

# Copy project files
COPY . .

# Upgrade pip first (prevents some dependency issues)
RUN pip install --upgrade pip

# Install dependencies
RUN pip install -r requirements.txt

# Expose application port
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]

