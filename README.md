# Terraform Workshop

- quick and dirty intro to tf
- OTC demo
  
- MonoRepo in details
- Secrets Handling
  - project-wise > ssm/secretsManager
  - personal-secrets > aws-vault/1password
- Multi Env Project Structure
- gitignore content
- tfvars for different environments
- templates into modules, when?
- TF State management with multiple engineers
  - remote state

## Links

- https://marketplace.visualstudio.com/items?itemName=mhmdio.terraform-extension-pack


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                                           | Version   |
| ---------------------------------------------------------------------------------------------- | --------- |
| <a name="requirement_opentelekomcloud"></a> [opentelekomcloud](#requirement\_opentelekomcloud) | >= 1.23.2 |

## Providers

| Name                                                                                     | Version   |
| ---------------------------------------------------------------------------------------- | --------- |
| <a name="provider_opentelekomcloud"></a> [opentelekomcloud](#provider\_opentelekomcloud) | >= 1.23.2 |

## Modules

No modules.

## Resources

| Name                                                                                                                                         | Type     |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [opentelekomcloud_s3_bucket.this](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name                                                                                    | Description                                                                                                                                                                                                          | Type          | Default                                    | Required |
| --------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- | ------------------------------------------ | :------: |
| <a name="input_auth_url"></a> [auth\_url](#input\_auth\_url)                            | (Optional; required if cloud is not specified) The Identity authentication URL. If omitted, the OS\_AUTH\_URL environment variable is used.                                                                          | `string`      | `"https://iam.eu-de.otc.t-systems.com/v3"` |    no    |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name)                   | S3 bucket name                                                                                                                                                                                                       | `string`      | n/a                                        |   yes    |
| <a name="input_bucket_versioning"></a> [bucket\_versioning](#input\_bucket\_versioning) | n/a                                                                                                                                                                                                                  | `bool`        | n/a                                        |   yes    |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name)                   | The Name of the Domain to scope to (Identity v3). If omitted, the following environment variables are checked (in this order): OS\_USER\_DOMAIN\_NAME, OS\_PROJECT\_DOMAIN\_NAME, OS\_DOMAIN\_NAME, DEFAULT\_DOMAIN. | `string`      | n/a                                        |   yes    |
| <a name="input_tags"></a> [tags](#input\_tags)                                          | n/a                                                                                                                                                                                                                  | `map(string)` | n/a                                        |   yes    |
| <a name="input_tenant_name"></a> [tenant\_name](#input\_tenant\_name)                   | The Name of the Tenant (Identity v2) or Project (Identity v3) to login with. If omitted, the OS\_TENANT\_NAME or OS\_PROJECT\_NAME environment variable are used.                                                    | `string`      | n/a                                        |   yes    |

## Outputs

| Name                                                                                           | Description                                                                                   |
| ---------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| <a name="output_bucket_domain_name"></a> [bucket\_domain\_name](#output\_bucket\_domain\_name) | bucket\_domain\_name - The bucket domain name. Will be of format bucketname.s3.amazonaws.com. |
<!-- END_TF_DOCS -->