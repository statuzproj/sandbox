resource "kubernetes_config_map_v1" "watchpoints" {
  metadata {
    name      = "watchpoints"
    namespace = kubernetes_namespace_v1.statuz.id
  }

  data = {
    "endpoints.yaml" = <<EOF
- name: google_bd
  target:
    type: webpage
    endpoint: https://www.google.com.bd/
    interval: 15
- name: grafana_web
  target:
    type: api
    endpoint: https://grafana.com/healthz
    interval: 60
    method: GET
- name: search_a_cat
  target:
    type: api
    endpoint: https://api.thecatapi.com/v1/images/search
    interval: 60
    method: GET
- name: cloudflare_dns
  target:
    type: ip
    interval: 15
    endpoint: 1.1.1.1
  EOF
  }
}