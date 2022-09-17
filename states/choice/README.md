# choice state sub-module

Terraform sub-module to provide an easy to use interface for creating AWS Step Function `Choice` states. The implementation obeys the interface described in the amazon-states-language documentation: 

https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-choice-state.html

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
| <a name="input_choices"></a> [choices](#input\_choices) | An array of Choice Rules that determines which state the state machine transitions to next. | `list(any)` | n/a | yes |
| <a name="input_comment"></a> [comment](#input\_comment) | A human-readable description of the state. | `string` | `null` | no |
| <a name="input_default"></a> [default](#input\_default) | The name of the state to transition to if none of the transitions in Choices is taken. | `string` | `null` | no |
| <a name="input_input_path"></a> [input\_path](#input\_input\_path) | A path that selects a portion of the state's input to be passed to the state's task for processing. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the state object. | `string` | n/a | yes |
| <a name="input_output_path"></a> [output\_path](#input\_output\_path) | A path that selects a portion of the state's output to be passed to the next state. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition"></a> [definition](#output\_definition) | The definition of the state |
| <a name="output_name"></a> [name](#output\_name) | Name of the state |
<!-- END_TF_DOCS -->
