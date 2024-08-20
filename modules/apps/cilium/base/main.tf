resource "cilium" "this" {
  set = concat([
    "ipam.mode=kubernetes",
  ], var.extra_set)
  version = var.chart_version
}