# succeed state sub-module

Terraform sub-module to provide an easy to use interface for creating AWS Step Function `Succeed` states. The implementation obeys the interface described in the amazon-states-language documentation: 

https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-succeed-state.html

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the state object. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition"></a> [definition](#output\_definition) | The definition of the state |
| <a name="output_name"></a> [name](#output\_name) | Name of the state |
<!-- END_TF_DOCS -->
