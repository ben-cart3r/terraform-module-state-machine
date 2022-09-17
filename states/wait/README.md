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
| <a name="input_seconds"></a> [seconds](#input\_seconds) | A time, in seconds, to wait before beginning the state specified in the Next field. | `number` | `null` | no |
| <a name="input_seconds_path"></a> [seconds\_path](#input\_seconds\_path) | A time, in seconds, to wait before beginning the state specified in the Next field, specified using a path from the state's input data. | `string` | `null` | no |
| <a name="input_timestamp"></a> [timestamp](#input\_timestamp) | An absolute time to wait until beginning the state specified in the Next field. Timestamps must conform to the RFC3339 profile of ISO 8601. | `string` | `null` | no |
| <a name="input_timestamp_path"></a> [timestamp\_path](#input\_timestamp\_path) | An absolute time to wait until beginning the state specified in the Next field, specified using a path from the state's input data. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition"></a> [definition](#output\_definition) | The definition of the state |
| <a name="output_name"></a> [name](#output\_name) | Name of the state |
<!-- END_TF_DOCS -->
