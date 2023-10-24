# Developer Sandbox - statuz 

Thank you for your interest in contributing to statuz! This developer sandbox provides you with all 
the tools and instructions needed to get started with statuz development.

## Prerequisites for statuz

Before getting started with Statuz, please make sure you have the following tools installed:

1. **Docker**: [Install Docker](https://www.docker.com/get-started/)
   - Docker is essential for containerizing and managing statuz components efficiently.

2. **Minikube**: [Install Minikube](https://minikube.sigs.k8s.io/docs/start/)
   - Minikube allows you to deploy statuz and its dependencies on a local Kubernetes cluster.

3. **Kubectl**: [Install Kubectl](https://kubernetes.io/docs/tasks/tools/)
   - Kubectl is used for inspecting, and managing configurations of statuz. 

4. **Terraform**: [Install Terraform](https://developer.hashicorp.com/terraform/downloads)
   - Terraform is used for provisioning Prometheus and Grafana within your Minikube environment.

5. **DevSpace**: [Install DevSpace](https://www.devspace.sh/docs/getting-started/installation)
   - DevSpace simplifies the development and deployment of statuz on your local Kubernetes cluster.

By ensuring you have these tools in place, you'll be well-prepared to work with statuz on Kubernetes. Let's get started!

## Prepare development environment

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
3. Access Grafana with minikube proxy
   ```shell
   minikube service grafana -n statuz
   ```
4. Access Prometheus with minikube proxy
   ```shell
   minikube service prometheus -n statuz
   ```
5. Set up DevSpace for seamless development and deployment: 
   ```shell
   devspace use context minikube
   devspace use namespace statuz
   ```

Now that you are set for development, lets take the example of watcher.
1. To work on the watcher microservice of statuz, first, clone its repository:
   ```shell
   git clone https://github.com/statuzproj/watcher
   ```
2. Start devspace for a streamlined development experience:
   ```shell
   cd watcher
   devspace dev
   ```
