terraform {
  required_providers {
    cilium = {
      source  = "littlejo/cilium"
      version = ">= 0.1.0"
    }
  }
  required_version = ">= 1.3"
}

provider "kubernetes" {
  host = var.host

  client_certificate     = var.client_certificate
  client_key             = var.client_key
  cluster_ca_certificate = var.cluster_ca_certificate
}
