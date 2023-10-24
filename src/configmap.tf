resource "kubernetes_config_map" "watchpoints" {

  metadata {
    name = "watchpoints"
    namespace = kubernetes_namespace_v1.statuz.id
  }
  data = {
    global = <<EOF
prometheus:
  endpoint: prometheus-server
  EOF
    endpoints = <<EOF
- name: google-bd
  type: webpage
  target: https://www.google.com.bd/
- name: grafana-web
  type: api
  method: GET
  target: https://grafana.com/healthz
- name: cloudflare-dns
  type: ping
  target: 1.1.1.1
  EOF
  }
}