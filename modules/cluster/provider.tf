terraform {
  required_version = ">=1.6.5"

  required_providers {

    kind = {
      source  = "tehcyx/kind"
      version = "0.5.1"
    }
  }
}

provider "kind" {}