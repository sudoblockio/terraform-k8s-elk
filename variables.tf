variable "domain_name" {
  description = "..."
  type        = string
}

variable "elasticsearch_values_file_path" {
  description = "Path to values file to apply to elasticsearch helm chart"
  type        = string
  default     = ""
}

variable "logstash_values_file_path" {
  description = "Path to values file to apply to logstash helm chart"
  type        = string
  default     = ""
}

variable "kibana_values_file_path" {
  description = "Path to values file to apply to kibana helm chart"
  type        = string
  default     = ""
}

variable "filebeat_values_file_path" {
  description = "Path to values file to apply to filebeat helm chart"
  type        = string
  default     = ""
}