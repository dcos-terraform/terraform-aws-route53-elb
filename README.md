AWS DC/OS Route53 Alias for ELB (NOTE: THIS IS CURRENTLY EXPERIMENTAL AND NOT YET SUPPORTED)
============
This module is used to create a custom Route53 alias for your Masters ELB

EXAMPLE
-------

```hcl
module "elb_masters" {
 source               = "dcos-terraform/route53-elb/aws"
 cluster_name         = "dcos-cluster"
 domain               = "domain.com"
 aws_zone_id          = "ABC123456XYZ"
 aws_target_zone_id   = "XYZ9876543AB"
 aws_lb_alias_name    = "master-elb-abdfadhf132123123"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_target\_zone\_id | The Zone ID of the ELB | string | n/a | yes |
| aws\_zone\_id | The Route 53 Zone ID to be used | string | n/a | yes |
| cluster\_name | Cluster name all resources get named and tagged with | string | n/a | yes |
| domain | The domain of your Route 53 Zone | string | n/a | yes |
| aws\_lb\_alias\_name | Alias for the LB for the Master Address if specified | string | `""` | no |
| evaluate\_target\_heatlh | Route 53 to determine whether to respond to DNS queries using this resource record | string | `"false"` | no |
| type | Type of Record | string | `"A"` | no |

## Outputs

| Name | Description |
|------|-------------|
| public\_fqdns | The alias name of the Masters ELB |

