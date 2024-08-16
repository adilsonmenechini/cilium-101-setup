variable "chart_version" {
  type        = string
  description = "version of the helm chart"
  default     = "1.14.5"
}

variable "settings" {
  type = map(object({
    name  = string
    value = string
  }))
  default = {
    set01 = {
      name  = "cluster.id"
      value = "1"
    }
    set02 = {
      name  = "cluster.name"
      value = "tools-k8s"
    }
  }
}

variable "values" {
  type = list(string)
  default = [file("${path.module}/file/values.yaml")]
}