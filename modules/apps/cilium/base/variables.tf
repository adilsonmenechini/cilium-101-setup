variable "extra_set" {
  type    = list(string)
  default = []
}

variable "chart_version" {
  description = "chart version"
  type        = string
}

variable "host" {
  description = "host"
  type        = string
  default = "fake-localshost"
}

variable "client_certificate" {
  description = "client certificate"
  type        = string
  default = "fake-client-certificate"
}

variable "client_key" {
  description = "client key"
  type        = string
  default = "fake-client-key"
}

variable "cluster_ca_certificate" {
  description = "cluster ca certificate"
  type        = string
  default = "fake-cluster-ca-certificate"
}