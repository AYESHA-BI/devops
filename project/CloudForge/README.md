# CloudForge
### End-to-End DevOps Automation & Application Deployment on AWS
CloudForge is an end-to-end DevOps project designed to demonstrate automated application 
deployment and infrastructure provisioning using modern DevOps and AWS technologies.
The project integrates Linux, Shell Scripting, GitHub, Docker, Kubernetes, PostgreSQL, Terraform, and AWS services into a single deployment workflow

## Project Objective
The objective of CloudForge is to build a practical end-to-end DevOps project that demonstrates how an application can be containerized, deployed, automated, monitored, and managed using modern DevOps tools and AWS cloud infrastructure.
Through this project, I aim to demonstrate practical knowledge of:
Linux & Shell Scripting — Automating deployment tasks and performing system operations.
Git & GitHub — Managing and version-controlling project source code.
Docker & Docker Hub — Containerizing the application and managing container images.
Kubernetes — Deploying, managing, and exposing application containers.
PostgreSQL — Deploying and managing a database service within Kubernetes.
Terraform — Defining and provisioning cloud infrastructure using Infrastructure as Code (IaC).
AWS — Working with VPC, subnets, EC2, IAM, S3, Application Load Balancer (ALB), and CloudWatch.
Troubleshooting — Identifying, diagnosing, and resolving issues across application, container, Kubernetes, and infrastructure layers.

## Project Structure
CloudForge is organized into separate directories for the application, Docker containerization, Kubernetes deployment, Terraform infrastructure, and deployment automation.

CloudForge/
├── app/
│   ├── index.html
│   ├── backend.html
│   └── images/
│
├── docker/
│   └── Dockerfile
│
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── outputs.tf
│
├── scripts/
│   └── deploy.sh
│
└── README.md

### Directory Responsibilities

| Directory / File  | Purpose                                                                                    |
| ----------------- | ------------------------------------------------------------------------------------------ |
| **`app/`**        | Contains the CloudForge application files and images.                                      |
| **`docker/`**     | Contains the Dockerfile used to build the application container image.                     |
| **`kubernetes/`** | Contains Kubernetes manifests for application deployment and service configuration.        |
| **`terraform/`**  | Contains Terraform configuration used to define and provision AWS infrastructure.          |
| **`scripts/`**    | Contains shell scripts used for deployment automation.                                     |
| **`README.md`**   | Contains project documentation, architecture, setup, deployment, and verification details. |

### Why This Structure?

The project structure separates each major DevOps responsibility into a dedicated directory. This makes the project easier to **understand, deploy, troubleshoot, maintain, and extend**.
The workflow can be viewed as:
**Application → Docker → Kubernetes**
**Terraform → AWS Infrastructure**
**Shell Script → Deployment Automation**
This organization demonstrates how application code, containerization, orchestration, infrastructure as code, and automation can be maintained together in a structured DevOps project.

## Architecture
###  Architecture Diagram
![CloudForge Architecture](./app/cloudforge-architecture.png)

### Architecture Overview

CloudForge uses an end-to-end DevOps workflow to build, containerize, and deploy an application using Git, Docker, Kubernetes, Terraform, and AWS.
The source code is managed with **Git and GitHub**. **Shell scripting** is used for deployment automation. **Docker** packages the application into a container image, which is stored in **Docker Hub**.
**Kubernetes** deploys and manages the CloudForge application and exposes it through a Kubernetes Service so that users can access the application.
**Terraform** is used as Infrastructure as Code (IaC) to define and provision AWS infrastructure such as **VPC, EC2, IAM, and S3**.

### Architecture Flow

**Application & Deployment**

Developer → Git / GitHub → Shell Script → Docker → Docker Hub → Kubernetes → CloudForge Application

**Infrastructure**

Terraform → AWS → VPC / EC2 / IAM / S3

### Key Components

| Component                  | Purpose                                     |
| -------------------------- | ------------------------------------------- |
| **Git / GitHub**           | Source-code management and version control  |
| **Shell Script**           | Deployment automation                       |
| **Docker**                 | Application containerization                |
| **Docker Hub**             | Container image registry                    |
| **Kubernetes**             | Application deployment and management       |
| **CloudForge Application** | Runs the deployed application               |
| **Terraform**              | Infrastructure as Code and AWS provisioning |
| **AWS**                    | Provides the cloud infrastructure           |

### Architecture Understanding

The architecture has two main parts: **application deployment** and **infrastructure provisioning**.
The application deployment flow starts with source code in GitHub, moves through Docker containerization and Docker Hub, and ends with the application running on Kubernetes.
The infrastructure provisioning flow is managed using Terraform, which defines and provisions the required AWS resources.
Together, these components demonstrate practical knowledge of **Git, automation, Docker, Kubernetes, Infrastructure as Code, and AWS**.

  ## 4. Technology Stack

CloudForge uses the following technologies to build, containerize, deploy, automate, and provision the application infrastructure.

### Technologies Used

| Technology          | Purpose                                                   |
| ------------------- | --------------------------------------------------------- |
| **Linux**           | Command-line operations and system administration         |
| **Git & GitHub**    | Version control and source-code management                |
| **Shell Scripting** | Deployment automation and repeatable operations           |
| **Docker**          | Containerize the CloudForge application                   |
| **Docker Hub**      | Store and distribute Docker images                        |
| **Kubernetes**      | Deploy, manage, and expose application containers         |
| **Terraform**       | Provision AWS infrastructure using Infrastructure as Code |
| **AWS**             | Provide cloud infrastructure for the project              |

### AWS Services Used

| AWS Service | Purpose                                     |
| ----------- | ------------------------------------------- |
| **VPC**     | Provides the network infrastructure         |
| **EC2**     | Provides compute resources                  |
| **IAM**     | Manages identities, permissions, and access |
| **S3**      | Provides cloud object storage               |

### Technology Flow

Git & GitHub
      ↓
Shell Script
      ↓
Docker
      ↓
Docker Hub
      ↓
Kubernetes
      ↓
CloudForge Application

Terraform
      ↓
AWS Infrastructure
      ├── VPC
      ├── EC2
      ├── IAM
      └── S3

### Why These Technologies?

The technologies were selected to demonstrate the major stages of a practical DevOps workflow:
**Version Control → Automation → Containerization → Image Management → Orchestration → Infrastructure as Code → Cloud**
Together, they demonstrate practical skills in **Linux operations, source-code management, deployment automation, containerization, Kubernetes orchestration, Infrastructure as Code, and AWS infrastructure management**.

## 5. Application

CloudForge is a lightweight web application created to demonstrate an end-to-end DevOps deployment workflow.
The application is used as the deployment workload throughout the project, progressing from source-code management and containerization to Kubernetes deployment and cloud infrastructure provisioning.

### Application Components

The application includes:

* **Frontend Page** — Provides the main CloudForge application interface.
* **Backend Page** — Displays backend/deployment information used to verify the running application.
* **Application Assets** — Images and supporting files required by the application.

### Application Screenshot

![CloudForge Application](screenshots/application.png)

### Application Purpose

The application provides a simple and visible workload for demonstrating:
**Git → Docker → Docker Hub → Kubernetes → Terraform → AWS**
The application is intentionally lightweight so that the focus remains on the **DevOps implementation, deployment process, automation, and infrastructure management** rather than application complexity.

## 6. Git & GitHub Implementation

Git and GitHub are used to manage and version-control the CloudForge source code and DevOps configuration.
**Git** manages changes locally, while **GitHub** stores the project repository remotely and provides a central location for the project.

###  Git Workflow

CloudForge Project
       ↓
   Git Repository
       ↓
     git add
       ↓
   git commit
       ↓
    git push
       ↓
     GitHub

### Key Git Commands

# Check repository status
git status

# Stage changes
git add .

# Commit changes
git commit -m "Update CloudForge project"

# Push changes to GitHub
git push origin main

###  Repository Contents

The GitHub repository maintains the major components of CloudForge:

* Application source files
* Docker configuration
* Kubernetes manifests
* Terraform configuration
* Deployment scripts
* Project documentation

### Why Git & GitHub?

Git and GitHub provide:

* **Version Control** — Track and manage project changes.
* **Change History** — Maintain a clear record of commits.
* **Centralized Repository** — Keep project files and DevOps configuration organized.
* **Remote Access** — Store and manage the project through GitHub.
* **Collaboration & Review** — Make the project easier to review and maintain.

### Outcome

The CloudForge project is maintained in a version-controlled Git repository and stored on GitHub, providing the source-code foundation for the subsequent **Docker, Kubernetes, Terraform, and AWS** stages.
**Source Code Flow:**
**Develop → Stage → Commit → Push → GitHub**

##  Docker Implementation

Docker is used to containerize the CloudForge application and package it with the required runtime configuration into a portable container image.

###  Dockerfile

The `Dockerfile` contains the instructions used to build the CloudForge Docker image.
It defines the base image, application files, exposed port, and configuration required to run the application.

###  Docker Workflow

CloudForge Application
        ↓
     Dockerfile
        ↓
    Docker Build
        ↓
 CloudForge Image
        ↓
  Run & Verify
        ↓
    Docker Hub

###  Key Docker Commands

# Build the Docker image
docker build -t ayeshabi/cloudforge:<version> .

# List Docker images
docker images

# Run the container
docker run -d -p 8080:80 ayeshabi/cloudforge:<version>

# Check running containers
docker ps

# Push the image to Docker Hub
docker push ayeshabi/cloudforge:<version>

###  Docker Hub

After building and verifying the image, the CloudForge Docker image is pushed to Docker Hub.
Docker Hub acts as the container registry, making the image available for the Kubernetes deployment stage.

### Docker Hub Image

![CloudForge Docker Hub Image](screenshots/docker-hub.png)

### Outcome

The CloudForge application is successfully packaged as a Docker image and stored in Docker Hub, creating the container image required for Kubernetes deployment.
**Docker Flow:**
**Build → Run → Verify → Push → Deploy**

  


