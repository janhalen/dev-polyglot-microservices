FROM python:3.9-slim-buster

# Install dependencies
COPY requirements.txt /service/requirements.txt
RUN pip install -r /service/requirements.txt

# Copy the transformation code
COPY transform_from_redis_queue.py /service/transform_from_redis_queue.py

# Set the working directory
WORKDIR /service

# Run the transformation code
CMD ["python", "transform_from_redis_queue.py"]