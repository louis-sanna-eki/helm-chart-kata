# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local directory contents into the container
COPY . .

# Install poetry
RUN pip install poetry

# Install dependencies using poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
