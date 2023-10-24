output "commands" {
  value = <<EOT
# You can access Grafana with the following command
minikube service ${helm_release.grafana.name} -n ${kubernetes_namespace_v1.statuz.id}

# You can access Prometheus with the following command
minikube service ${helm_release.prometheus.name} -n ${kubernetes_namespace_v1.statuz.id}
EOT
}