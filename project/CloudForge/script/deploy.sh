#!/bin/bash
    set -e
IMAGE_NAME="ayeshabi/cloudforge"
IMAGE_VERSION=$1
    if [ -z "$IMAGE_VERSION" ]; then
    echo "Error: Image version is required"
    echo "Usage: ./deploy.sh <image-version>"
    exit 1
fi

build_docker_image() {

    echo "Building Docker image..."

    docker build -f ../docker/Dockerfile -t $IMAGE_NAME:$IMAGE_VERSION ..

    echo "Docker image build successful"
}

deploy_to_kubernetes() {

    echo "Deploying CloudForge to Kubernetes..."

    kubectl apply -f ../kubernetes/

    echo "Kubernetes deployment successful"
}

echo "***** CloudForge Deployment Started *****"

echo "Docker Image: $IMAGE_NAME"
echo "Image Version: $IMAGE_VERSION"
 
echo "Checking Git status..."
   if git -C .. status; then
    echo "Git status check successful"
else
    echo "Git status check failed"
fi

    echo "Building Docker image..."
     build_docker_image

deploy_to_kubernetes
   echo "Checking Kubernetes pods..."
        kubectl get pods

echo "--- CloudForge Deployment Completed !---"
