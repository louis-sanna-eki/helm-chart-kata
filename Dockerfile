# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /src

# Install poetry
RUN pip install poetry

# Copy dependencies
COPY pyproject.toml .
COPY poetry.lock .

# Install dependencies using poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

# Copy the local directory contents into the container
COPY ./app .

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
