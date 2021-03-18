resource "random_pet" "elk_deployment" {
  length = 1
}

resource "helm_release" "elasticsearch" {
  chart      = "elasticsearch"
  repository = "https://helm.elastic.co"
  name       = "elasticsearch"
  values     = var.elasticsearch_values_file_path == "" ? null : [templatefile(var.elasticsearch_values_file_path, { domain_name = var.domain_name })]
}

resource "helm_release" "logstash" {
  chart      = "logstash"
  repository = "https://helm.elastic.co"
  name       = "logstash"
  values     = var.logstash_values_file_path == "" ? null : [templatefile(var.logstash_values_file_path, { domain_name = var.domain_name })]
}

resource "helm_release" "kibana" {
  chart      = "kibana"
  repository = "https://helm.elastic.co"
  name       = "kibana"
  values     = var.kibana_values_file_path == "" ? null : [templatefile(var.kibana_values_file_path, { domain_name = var.domain_name })]
}

resource "helm_release" "filebeat" {
  chart      = "filebeat"
  repository = "https://helm.elastic.co"
  name       = "filebeat"
  values     = var.filebeat_values_file_path == "" ? null : [file(var.filebeat_values_file_path)]
}