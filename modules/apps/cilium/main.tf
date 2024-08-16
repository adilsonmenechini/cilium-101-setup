resource "helm_release" "cilium" {
  name = "cilium"

  repository = "https://helm.cilium.io"
  chart      = "cilium"
  version    = var.chart_version

  namespace  = "kube-system"


  wait         = true
  force_update = true
  timeout = 900



  values = var.values

  dynamic "set" {
    for_each = var.settings != null ? [for key, value in var.settings : key] : []
    content {
      name  = var.settings[set.key].name
      value = var.settings[set.key].value
    }
  }

}
