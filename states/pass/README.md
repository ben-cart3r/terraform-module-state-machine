# pass state sub-module

Terraform sub-module to provide an easy to use interface for creating AWS Step Function `Pass` states. The implementation obeys the interface described in the amazon-states-language documentation: 

https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-pass-state.html

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
| <a name="input_comment"></a> [comment](#input\_comment) | A human-readable description of the state. | `string` | `null` | no |
| <a name="input_end"></a> [end](#input\_end) | Designates this state as a terminal state if set to true. | `bool` | `false` | no |
| <a name="input_input_path"></a> [input\_path](#input\_input\_path) | A path that selects a portion of the state's input to be passed to the state's task for processing. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the state object. | `string` | n/a | yes |
| <a name="input_next"></a> [next](#input\_next) | The name of the next state that is run when this state finishes. | `string` | `null` | no |
| <a name="input_output_path"></a> [output\_path](#input\_output\_path) | A path that selects a portion of the state's output to be passed to the next state. | `string` | `null` | no |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | Creates a collection of key-value pairs that will be passed as input. | `string` | `null` | no |
| <a name="input_result"></a> [result](#input\_result) | Refers to the output of a virtual task that is passed on to the next state. | `string` | `null` | no |
| <a name="input_result_path"></a> [result\_path](#input\_result\_path) | Specifies where to place the output (relative to the input) of the virtual task specified in Result. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition"></a> [definition](#output\_definition) | The definition of the state |
| <a name="output_name"></a> [name](#output\_name) | Name of the state |
<!-- END_TF_DOCS -->
