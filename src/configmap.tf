resource "kubernetes_config_map_v1" "watchpoints" {
  metadata {
    name      = "watchpoints"
    namespace = kubernetes_namespace_v1.statuz.id
  }

  data = {
    "endpoints.yaml" = <<EOF
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