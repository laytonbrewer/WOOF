FROM python:3.10-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Clone the repository
RUN git clone https://github.com/YourUsername/YourRepoName.git .

# Copy the local config.json file to the container

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 8080

# Run run.py when the container launches
CMD ["uvicorn", "run:main_app", "--host", "0.0.0.0", "--port", "8080", "--workers", "4"]
