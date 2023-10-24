resource "kubernetes_config_map" "watchpoints" {

  metadata {
    name = "watchpoints"
    namespace = kubernetes_namespace_v1.statuz.id
  }
  data = {
    global = <<EOF
default:
  interval: 300s
  EOF
    endpoints = <<EOF
- name: google_bd
  type: webpage
  target: https://www.google.com.bd/
- name: grafana_web
  type: api
  method: GET
  target: https://grafana.com/healthz
- name: cloudflare_dns
  type: ping
  target: 1.1.1.1
  EOF
  }
}