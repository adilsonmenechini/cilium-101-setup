## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_cilium"></a> [cilium](#requirement\_cilium) | >= 0.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cilium"></a> [cilium](#provider\_cilium) | >= 0.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cilium_cilium.this](https://registry.terraform.io/providers/littlejo/cilium/latest/docs/resources/cilium) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | chart version | `string` | n/a | yes |
| <a name="input_client_certificate"></a> [client\_certificate](#input\_client\_certificate) | client certificate | `string` | `"fake-client-certificate"` | no |
| <a name="input_client_key"></a> [client\_key](#input\_client\_key) | client key | `string` | `"fake-client-key"` | no |
| <a name="input_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#input\_cluster\_ca\_certificate) | cluster ca certificate | `string` | `"fake-cluster-ca-certificate"` | no |
| <a name="input_extra_set"></a> [extra\_set](#input\_extra\_set) | n/a | `list(string)` | `[]` | no |
| <a name="input_host"></a> [host](#input\_host) | host | `string` | `"fake-localshost"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cilium_ca"></a> [cilium\_ca](#output\_cilium\_ca) | n/a |
