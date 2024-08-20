include {
  path = find_in_parent_folders()
}


locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  global_vars = read_terragrunt_config(find_in_parent_folders("global.hcl"))

  cluster_name = "${local.global_vars.locals.app_name}-${local.env_vars.locals.enviroment}-01"
  kube_version = "1.29.0"

  disable_default_cni = true
  kube_proxy_mode = "none"
  pod_subnet = "10.10.0.0/16"
  service_subnet = "10.11.0.0/16"
}



terraform {
  source = "../../../../modules/cluster"
  
}

inputs = {
  kubernete_version = local.kube_version
  cluster_name = local.cluster_name

  disable_default_cni = local.disable_default_cni
  kube_proxy_mode = local.kube_proxy_mode
  pod_subnet = local.pod_subnet
  service_subnet = local.service_subnet
}