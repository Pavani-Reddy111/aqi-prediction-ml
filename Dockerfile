FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code and start script
COPY . .

# Make start.sh executable
RUN chmod +x start.sh

# Expose port
EXPOSE 7860

# Use start.sh as the container entrypoint
CMD ["./start.sh"]
