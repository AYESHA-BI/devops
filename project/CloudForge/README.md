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
![CloudForge Architecture](.project/CloudForge/screenshots Archiecture.png)

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
docker build -f docker/Dockerfile -t ayeshabi/cloudforge:2.1 .

# List Docker images
docker images

# Run the container
docker run -d -p 8080:80 ayeshabi/cloudforge:2.1

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

##  Kubernetes Deployment

Kubernetes is used to deploy and manage the containerized CloudForge application.

The Kubernetes configuration defines the CloudForge application deployment, exposes the application through a NodePort Service, and runs PostgreSQL as the application database with persistent storage.

###  Kubernetes Configuration

The Kubernetes manifests are organized as follows:

kubernetes/
├── config.yaml
├── deployment.yaml
├── service.yaml
├── postgres.yaml
├── postgres-pvc.yaml
├── postgres-secret.yaml
└── postgres-service.yaml

### CloudForge Deployment

The deployment.yaml file defines the CloudForge Kubernetes Deployment.

The deployment uses the Docker image:
ayeshabi/cloudforge:2.1

It runs **2 CloudForge Pods** to provide multiple application instances within the Kubernetes cluster.

### CloudForge Service

The `service.yaml` file defines the Kubernetes Service used to expose the CloudForge application.

The application is exposed through:

NodePort: 30080

This allows the CloudForge application to be accessed from outside the Kubernetes cluster.

### PostgreSQL Deployment

PostgreSQL is deployed inside the Kubernetes cluster using `postgres.yaml`.

The PostgreSQL application is exposed internally through `postgres-service` on port:
5432

The PostgreSQL database is not exposed through the external NodePort. It is accessed internally by the application within the Kubernetes cluster.

### Persistent Storage

The `postgres-pvc.yaml` configuration provides persistent storage for PostgreSQL.
The current PostgreSQL PVC is:

postgres-pvc
Status: Bound
Capacity: 1Gi
Access Mode: RWO

This allows PostgreSQL data to be stored using Kubernetes persistent storage rather than relying only on the container filesystem.

###  PostgreSQL Secret

The `postgres-secret.yaml` file stores PostgreSQL configuration values as Kubernetes Secret data.

This keeps database credentials separate from the main deployment configuration.

### Kubernetes Deployment Flow

Docker Hub
    │
    │ CloudForge:2.0
    ↓
Kubernetes Deployment
    │
    ├── CloudForge Pod
    └── CloudForge Pod
            │
            ↓
    CloudForge Service
            │
      NodePort :30080
            │
            ↓
         Browser


PostgreSQL Deployment
            │
            ↓
      PostgreSQL Pod
            │
            ↓
   PostgreSQL Service
       ClusterIP :5432
            │
            ↓
     Persistent Storage

### Kubernetes Verification
![Kubernetes Deployment Verification](screenshots/kubernetes-verification.png)

The deployment is verified using Kubernetes commands:

kubectl get pods
kubectl get svc
kubectl get deploy
kubectl get pvc

These commands are used to verify the status of the application Pods, Services, Deployments, and persistent storage.

### Outcome

CloudForge is successfully deployed on Kubernetes using the Docker image `ayeshabi/cloudforge:2.1.

The application runs with **2 CloudForge Pods** and is externally accessible through **NodePort 30080**, while PostgreSQL runs as an internal Kubernetes service with persistent storage.

**Kubernetes Flow:**
**Docker Hub → Deployment → Pods → Service → NodePort → Browser**

## 9. Terraform Infrastructure

Terraform is used in CloudForge to provision and manage AWS infrastructure using **Infrastructure as Code (IaC)**.

The infrastructure is defined in Terraform configuration files instead of being created manually. This makes the environment easier to review, reproduce, and manage through version-controlled configuration.

### Terraform Structure

terraform/
├── main.tf
├── variables.tf
├── terraform.tfvars
└── outputs.tf

| File               | Purpose                                       |
| ------------------ | --------------------------------------------- |
| `main.tf`          | Defines AWS infrastructure resources          |
| `variables.tf`     | Declares configurable input variables         |
| `terraform.tfvars` | Provides values for Terraform variables       |
| `outputs.tf`       | Displays important infrastructure information |

### AWS Infrastructure Provisioned

Terraform manages the networking, compute, security, load balancing, and storage components required for the CloudForge environment.

| Resource                            | Purpose                                       |
| ----------------------------------- | --------------------------------------------- |
| **VPC**                             | Provides the isolated AWS network             |
| **Subnets**                         | Organize resources within the VPC             |
| **Internet Gateway (IGW)**          | Provides internet connectivity for the VPC    |
| **Route Table**                     | Controls network traffic routing              |
| **Security Group (SG)**             | Controls allowed inbound and outbound traffic |
| **EC2**                             | Provides compute capacity                     |
| **Application Load Balancer (ALB)** | Receives and distributes application traffic  |
| **Target Group (TG)**               | Defines the targets that receive ALB traffic  |
| **Listener**                        | Defines how the ALB accepts incoming requests |
| **IAM**                             | Manages AWS identities and permissions        |
| **S3**                              | Provides object storage                       |

### Infrastructure Flow

                         Terraform
                             │
                             ▼
                            AWS
                             │
                            VPC
                             │
              ┌──────────────┴──────────────┐
              │                             │
           Subnets                    Internet Gateway
              │                             │
              ▼                             │
        Route Table ◄────────────────────────┘
              │
              ▼
             ALB
              │
          Listener
              │
              ▼
        Target Group
              │
              ▼
             EC2
              │
        Security Group
              │
              ▼
       CloudForge Application

        IAM ─────────► AWS Resources
        S3  ─────────► Object Storage

### Terraform Workflow

Terraform Configuration
        ↓
terraform init
        ↓
terraform validate
        ↓
terraform fmt
        ↓
terraform plan
        ↓
terraform apply
        ↓
AWS Infrastructure
        ↓
Verification

### Terraform Commands

terraform init
terraform validate
terraform fmt
terraform plan
terraform apply
terraform output

These commands demonstrate the standard Terraform workflow for initializing, validating, formatting, reviewing, provisioning, and retrieving information about the infrastructure.

### Infrastructure as Code

CloudForge uses Terraform to manage AWS infrastructure through configuration files.

The workflow is:

Define
  ↓
Validate
  ↓
Plan
  ↓
Apply
  ↓
Provision
  ↓
Verify

This approach provides a repeatable way to create and manage the CloudForge AWS environment while keeping infrastructure configuration under version control.

### Verification

The Terraform deployment is verified through Terraform outputs and AWS resources created from the configuration.

![Terraform Verification](screenshots/terraform-verification.png)

### Outcome

The Terraform implementation demonstrates practical experience with:

* Infrastructure as Code
* AWS VPC networking
* Subnets and route tables
* Internet Gateway configuration
* Security Groups
* EC2 compute
* Application Load Balancer
* ALB Listener
* Target Groups
* IAM
* S3
* Terraform variables and outputs
* Infrastructure planning and provisioning
* Version-controlled infrastructure

  ## 9. AWS Infrastructure

AWS provides the cloud infrastructure for the CloudForge project. Terraform is used to define and provision the required AWS resources as Infrastructure as Code (IaC).

### AWS Resources Used

| AWS Resource                        | Purpose                                           |
| ----------------------------------- | ------------------------------------------------- |
| **VPC**                             | Provides the isolated network environment         |
| **Subnets**                         | Organize resources within the VPC                 |
| **Internet Gateway (IGW)**          | Provides internet connectivity                    |
| **Route Table**                     | Controls network traffic routing                  |
| **Security Group (SG)**             | Controls inbound and outbound traffic             |
| **EC2**                             | Provides compute capacity for CloudForge          |
| **Application Load Balancer (ALB)** | Receives and distributes application traffic      |
| **Listener**                        | Accepts incoming requests on the ALB              |
| **Target Group (TG)**               | Routes traffic from the ALB to registered targets |
| **IAM**                             | Manages AWS identities and permissions            |
| **S3**                              | Provides object storage                           |

### AWS Architecture Flow

                         AWS
                          │
                         VPC
                          │
              ┌───────────┴───────────┐
              │                       │
           Subnets              Internet Gateway
              │                       │
              └───────────┬───────────┘
                          │
                     Route Table
                          │
                          ▼
                         ALB
                          │
                       Listener
                          │
                          ▼
                    Target Group
                          │
                          ▼
                         EC2
                          │
                    Security Group
                          │
                          ▼
                  CloudForge Application

             IAM ───────► AWS Resources
             S3  ───────► Object Storage

### Application Traffic Flow

Internet
   ↓
Internet Gateway
   ↓
VPC
   ↓
Subnet
   ↓
Application Load Balancer
   ↓
Listener
   ↓
Target Group
   ↓
EC2
   ↓
CloudForge Application

The Security Group controls the network traffic allowed to the AWS resources, while IAM manages access and permissions.

### Infrastructure Provisioning

Terraform is used to create and manage the AWS infrastructure.

Terraform
    ↓
AWS VPC
    ↓
Subnets + Route Table + IGW
    ↓
ALB + Listener + Target Group
    ↓
EC2 + Security Group
    ↓
CloudForge Application

This Infrastructure-as-Code approach allows the AWS environment to be defined in configuration files, reviewed through Terraform planning, and provisioned consistently.

### AWS Implementation Outcome

The CloudForge project demonstrates practical experience with:

* AWS networking using VPC and Subnets
* Internet Gateway and Route Tables
* EC2 compute
* Security Groups
* Application Load Balancer
* ALB Listener and Target Group
* IAM permissions
* S3 storage
* Terraform-based AWS provisioning

### Verification
AWS resources are verified through the AWS Console and Terraform outputs after infrastructure provisioning.

## Deployment Automation

CloudForge uses a **Bash deployment script** to automate the main application deployment steps.

The script combines Git, Docker, and Kubernetes commands into a repeatable workflow, reducing the need to execute each deployment command manually.

### Deployment Script

scripts/
└── deploy.sh

The `deploy.sh` script is responsible for automating the application deployment workflow.

### Automated Workflow

Run deploy.sh
      ↓
Check Git Status
      ↓
Build Docker Image
      ↓
Tag CloudForge Image
      ↓
Apply Kubernetes Manifests
      ↓
Check Kubernetes Pods
      ↓
Deployment Completed

### Run the Deployment

Make the script executable:

chmod +x scripts/deploy.sh

Run the deployment with the required image version:

./scripts/deploy.sh 2.1

The image version is passed as a **command-line argument**. This allows different CloudForge image versions to be deployed without modifying the deployment script itself.

For example:

./scripts/deploy.sh 2.0
./scripts/deploy.sh 2.1
./scripts/deploy.sh 2.2

### Deployment Verification

After applying the Kubernetes configuration, the script checks the running Pods:

kubectl get pods

This verifies whether the CloudForge application Pods are successfully running after deployment.

### Automation Benefits

* Reduces repetitive manual commands
* Provides a consistent deployment process
* Supports version-based image deployment
* Combines Docker and Kubernetes operations
* Makes the deployment workflow easier to reproduce
* Provides basic deployment verification

### Result

The deployment script provides a simple and repeatable automation layer for CloudForge, connecting **Docker image creation, Kubernetes deployment, and deployment verification** into a single workflow.

## 11. Verification & Testing

After deployment, CloudForge is verified at each major stage of the DevOps workflow to confirm that the application and infrastructure are functioning as expected.

### Docker Verification

docker images
docker ps

These commands verify that the CloudForge Docker image is available and that the container is running successfully.

### Kubernetes Verification

kubectl get pods
kubectl get svc
kubectl get deploy
kubectl get pvc

These commands verify the CloudForge application Pods, Kubernetes Services, Deployment status, and PostgreSQL persistent storage.

### Terraform Verification

terraform plan
terraform apply
terraform output

These commands are used to review, provision, and retrieve information from the Terraform-managed AWS infrastructure.

### Application Verification

The CloudForge application is accessed through the configured **Kubernetes Service or AWS endpoint**.

The application is checked to confirm that the deployment is reachable and functioning correctly.

### Verification Flow

Docker
   ↓
Kubernetes
   ↓
Terraform / AWS
   ↓
Application
   ↓
Verification

### Result

The verification process confirms the major components of CloudForge, including:

* Docker image and container
* Kubernetes application deployment
* Kubernetes Services
* PostgreSQL persistent storage
* Terraform-managed AWS infrastructure
* CloudForge application accessibility

This provides practical evidence that the CloudForge deployment environment has been configured and is running as expected.

## Conclusion

CloudForge demonstrates a practical **end-to-end DevOps workflow** using Linux, Git, GitHub, Shell Scripting, Docker, Docker Hub, Kubernetes, Terraform, and AWS.

The project provides hands-on experience with:

* Application containerization
* Docker image management
* Kubernetes deployment and service management
* Deployment automation using Shell Scripting
* Infrastructure as Code using Terraform
* AWS infrastructure provisioning and management
* Application and infrastructure verification

CloudForge brings these technologies together into a single project to demonstrate how an application can move from **source code to a deployed cloud environment** using modern DevOps practices.

### Future Improvements

The project can be extended with:

* **CI/CD Pipeline** — Automate build, test, and deployment stages
* **Monitoring & Observability** — Monitor application and infrastructure performance
* **Centralized Logging** — Collect and manage application and system logs
* **Automated Testing** — Add automated validation before deployment
* **Security Improvements** — Strengthen secret management, access control, and security practices
