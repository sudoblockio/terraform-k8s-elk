# terraform-k8s-elk

[![open-issues](https://img.shields.io/github/issues-raw/insight-infrastructure/terraform-k8s-elk?style=for-the-badge)](https://github.com/shinyfoil/terraform-k8s-elk/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-infrastructure/terraform-k8s-elk?style=for-the-badge)](https://github.com/shinyfoil/terraform-k8s-elk/pulls)

## Features

This module...

## Terraform Versions

For Terraform v0.12.0+

## Usage

```hcl
module "this" {
  source = "github.com/insight-infrastructure/terraform-k8s-elk"
}
```
## Examples

- [defaults](https://github.com/insight-infrastructure/terraform-k8s-elk/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| helm | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| elasticsearch\_values\_file\_path | Path to values file to apply to elasticsearch helm chart | `string` | `""` | no |
| filebeat\_values\_file\_path | Path to values file to apply to filebeat helm chart | `string` | `""` | no |
| kibana\_values\_file\_path | Path to values file to apply to kibana helm chart | `string` | `""` | no |
| logstash\_values\_file\_path | Path to values file to apply to logstash helm chart | `string` | `""` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [Richard Mah](https://github.com/shinyfoil)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.