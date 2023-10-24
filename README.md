# Developer Sandbox - statuz 



## Prerequisites for statuz

Before getting started with Statuz, please make sure you have the following tools installed:

1. **Docker**: [Download Docker](https://www.docker.com/get-started/)
   - Docker is essential for containerizing and managing statuz components efficiently.

2. **Minikube**: [Install Minikube](https://minikube.sigs.k8s.io/docs/start/)
   - Minikube allows you to deploy statuz and its dependencies on a local Kubernetes cluster.

3. **Terraform**: [Get Terraform](https://developer.hashicorp.com/terraform/downloads)
   - Terraform is used for provisioning Prometheus and Grafana within your Minikube environment.

4. **DevSpace**: [Install DevSpace](https://www.devspace.sh/docs/getting-started/installation)
   - DevSpace simplifies the development and deployment of statuz on your local Kubernetes cluster.

By ensuring you have these tools in place, you'll be well-prepared to work with statuz on Kubernetes. Let's get started!

## Getting Started

To get started with development, follow these steps:

1. Start Minikube to create a local Kubernetes cluster:
   ```shell
   minikube start
   ```
2. Deploy Prometheus and Grafana kubernetes using terraform
   ```
   cd src
   terraform init
   terraform apply
   ```
3. Access Grafana and Prometheus
   ```shell
   minikube servcie grafana -n statuz
   minikube servcie grafana -n statuz
   ```
4. Set up DevSpace for seamless development and deployment: 
   ```shell
   devspace use context minikube
   devspace use namespace statuz
   ```
