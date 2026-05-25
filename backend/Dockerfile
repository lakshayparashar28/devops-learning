FROM python:3.10-slim

# Install system dependencies required for compiling database adapters
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy just the requirements file first to take advantage of Docker caching
COPY requirements.txt /app/

# Install the packages listed in your requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your backend application code
COPY . /app

EXPOSE 5000

# Run your flask script (Change app.py to your main file name if it's named differently)
CMD ["python", "app.py"]
