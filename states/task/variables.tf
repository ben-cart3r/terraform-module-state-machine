variable "catch" {
  type        = string
  default     = null
  description = "An array of objects, called Catchers, that define a fallback state."
}

variable "comment" {
  type        = string
  default     = null
  description = "A human-readable description of the state."
}

variable "end" {
  type        = bool
  default     = false
  description = "Designates this state as a terminal state if set to true."
}

variable "heartbeat_seconds" {
  type        = string
  default     = null
  description = "If more time than the specified seconds elapses between heartbeats from the task, this state fails with a States.Timeout error name."
}

variable "heartbeat_seconds_path" {
  type        = string
  default     = null
  description = "If you want to provide a heartbeat value dynamically from the state input using a reference path, use HeartbeatSecondsPath."
}

variable "input_path" {
  type        = string
  default     = null
  description = "A path that selects a portion of the state's input to be passed to the state's task for processing."
}

variable "name" {
  type        = string
  description = "The name of the state object."
}

variable "next" {
  type        = string
  default     = null
  description = "The name of the next state that is run when this state finishes."
}

variable "output_path" {
  type        = string
  default     = null
  description = "A path that selects a portion of the state's output to be passed to the next state."
}

variable "parameters" {
  type        = string
  default     = null
  description = "Creates a collection of key-value pairs that will be passed as input."
}

variable "resource" {
  type        = string
  description = "An ARN that uniquely identifies the specific task to execute."
}

variable "result_path" {
  type        = string
  default     = null
  description = "Specifies where to place the output (relative to the input) of the virtual task specified in Result."
}

variable "result_selector" {
  type        = string
  default     = null
  description = "Pass a collection of key value pairs, where the values are static or selected from the result."
}

variable "retry" {
  type        = string
  default     = null
  description = "An array of objects, called Retriers, that define a retry policy if the state encounters runtime errors."
}

variable "timeout_seconds" {
  type        = string
  default     = null
  description = "If the task runs longer than the specified seconds, this state fails with a States.Timeout error name."
}

variable "timeout_seconds_path" {
  type        = string
  default     = null
  description = "If you want to provide a timeout value dynamically from the state input using a reference path, use TimeoutSecondsPath."
}
