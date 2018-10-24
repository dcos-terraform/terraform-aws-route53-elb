
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_lb_alias_name | Alias for the LB for the Master Address if specified | string | `` | no |
| aws_target_zone_id | The Zone ID of the ELB | string | - | yes |
| aws_zone_id | The Route 53 Zone ID to be used | string | - | yes |
| cluster_name | Cluster name all resources get named and tagged with | string | - | yes |
| domain | The domain of your Route 53 Zone | string | - | yes |
| evaluate_target_heatlh | Route 53 to determine whether to respond to DNS queries using this resource record | string | `false` | no |
| type | Type of Record | string | `A` | no |

## Outputs

| Name | Description |
|------|-------------|
| public_fqdns |  |

