variable "comment" {
  type        = string
  description = "A human-readable description of the state machine."
}

variable "start_at" {
  type        = string
  description = "A string that must exactly match the name of one of the state objects."
}

variable "states" {
  type        = any
  description = "An object containing a set of states."
}

variable "timeout_seconds" {
  type        = number
  default     = null
  description = "The maximum number of seconds an execution of the state machine can run."
}

variable "amazon_states_language_version" {
  type        = string
  default     = null
  description = "The version of the Amazon States Language used in the state machine."
}
