# terraform-module-state-machine
Current preferred layout and tooling for terraform modules

## Examples

TBD

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
| <a name="input_amazon_states_language_version"></a> [amazon\_states\_language\_version](#input\_amazon\_states\_language\_version) | The version of the Amazon States Language used in the state machine. | `string` | `null` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | A human-readable description of the state machine. | `string` | n/a | yes |
| <a name="input_start_at"></a> [start\_at](#input\_start\_at) | A string that must exactly match the name of one of the state objects. | `string` | n/a | yes |
| <a name="input_states"></a> [states](#input\_states) | An object containing a set of states. | `any` | n/a | yes |
| <a name="input_timeout_seconds"></a> [timeout\_seconds](#input\_timeout\_seconds) | The maximum number of seconds an execution of the state machine can run. | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition"></a> [definition](#output\_definition) | The definition of the state machine |
<!-- END_TF_DOCS -->
