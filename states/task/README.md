# task state sub-module

Terraform sub-module to provide an easy to use interface for creating AWS Step Function `Task` states. The implementation obeys the interface described in the amazon-states-language documentation: 

https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-task-state.html

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
| <a name="input_catch"></a> [catch](#input\_catch) | An array of objects, called Catchers, that define a fallback state. | `string` | `null` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | A human-readable description of the state. | `string` | `null` | no |
| <a name="input_end"></a> [end](#input\_end) | Designates this state as a terminal state if set to true. | `bool` | `false` | no |
| <a name="input_heartbeat_seconds"></a> [heartbeat\_seconds](#input\_heartbeat\_seconds) | If more time than the specified seconds elapses between heartbeats from the task, this state fails with a States.Timeout error name. | `string` | `null` | no |
| <a name="input_heartbeat_seconds_path"></a> [heartbeat\_seconds\_path](#input\_heartbeat\_seconds\_path) | If you want to provide a heartbeat value dynamically from the state input using a reference path, use HeartbeatSecondsPath. | `string` | `null` | no |
| <a name="input_input_path"></a> [input\_path](#input\_input\_path) | A path that selects a portion of the state's input to be passed to the state's task for processing. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the state object. | `string` | n/a | yes |
| <a name="input_next"></a> [next](#input\_next) | The name of the next state that is run when this state finishes. | `string` | `null` | no |
| <a name="input_output_path"></a> [output\_path](#input\_output\_path) | A path that selects a portion of the state's output to be passed to the next state. | `string` | `null` | no |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | Creates a collection of key-value pairs that will be passed as input. | `string` | `null` | no |
| <a name="input_resource"></a> [resource](#input\_resource) | An ARN that uniquely identifies the specific task to execute. | `string` | n/a | yes |
| <a name="input_result_path"></a> [result\_path](#input\_result\_path) | Specifies where to place the output (relative to the input) of the virtual task specified in Result. | `string` | `null` | no |
| <a name="input_result_selector"></a> [result\_selector](#input\_result\_selector) | Pass a collection of key value pairs, where the values are static or selected from the result. | `string` | `null` | no |
| <a name="input_retry"></a> [retry](#input\_retry) | An array of objects, called Retriers, that define a retry policy if the state encounters runtime errors. | `string` | `null` | no |
| <a name="input_timeout_seconds"></a> [timeout\_seconds](#input\_timeout\_seconds) | If the task runs longer than the specified seconds, this state fails with a States.Timeout error name. | `string` | `null` | no |
| <a name="input_timeout_seconds_path"></a> [timeout\_seconds\_path](#input\_timeout\_seconds\_path) | If you want to provide a timeout value dynamically from the state input using a reference path, use TimeoutSecondsPath. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition"></a> [definition](#output\_definition) | The definition of the state |
| <a name="output_name"></a> [name](#output\_name) | Name of the state |
<!-- END_TF_DOCS -->
