# Hello World FastAPI Application

A simple FastAPI application for learning CI/CD on AWS.

## Prerequisites

- Docker installed on your machine
- Python 3.11+ (for local development)

## Local Development

### Setup Virtual Environment

```bash
python -m venv venv
# On Windows
venv\Scripts\activate
# On macOS/Linux
source venv/bin/activate
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

### Run Locally

```bash
python main.py
```

The API will be available at `http://localhost:8000`

## API Endpoints

- **GET `/`** - Returns a hello world message
- **GET `/health`** - Health check endpoint
- **GET `/api/greet/{name}`** - Greet endpoint (replace `{name}` with a name)

## Example Requests

```bash
# Hello World
curl http://localhost:8000/

# Health Check
curl http://localhost:8000/health

# Greet
curl http://localhost:8000/api/greet/John
```

## Docker Build and Run

### Build the Docker Image

```bash
docker build -t hello-world-fastapi .
```

### Run the Docker Container

```bash
docker run -p 8000:8000 hello-world-fastapi
```

The API will be available at `http://localhost:8000`

## Push to AWS ECR

### 1. Create an ECR Repository

```bash
aws ecr create-repository --repository-name hello-world-fastapi --region us-east-1
```

### 2. Login to ECR

```bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <YOUR_AWS_ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com
```

### 3. Tag the Image

```bash
docker tag hello-world-fastapi:latest <YOUR_AWS_ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/hello-world-fastapi:latest
```

### 4. Push to ECR

```bash
docker push <YOUR_AWS_ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/hello-world-fastapi:latest
```

## Deploy to AWS

You can deploy this to:

- **ECS (Elastic Container Service)** - Recommended for learning
- **App Runner** - Simplest option for containers
- **EKS (Elastic Kubernetes Service)** - If you want to learn Kubernetes

## Next Steps for CI/CD Learning

1. Set up AWS CodePipeline
2. Connect to a Git repository (GitHub, CodeCommit)
3. Add CodeBuild for building Docker images
4. Deploy using CodeDeploy or ECS
5. Monitor with CloudWatch

## API Documentation

Visit `http://localhost:8000/docs` for Swagger UI documentation (when running locally or in a container)
