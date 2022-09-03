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

variable "seconds" {
  type        = number
  default     = null
  description = "A time, in seconds, to wait before beginning the state specified in the Next field."
}

variable "seconds_path" {
  type        = string
  default     = null
  description = "A time, in seconds, to wait before beginning the state specified in the Next field, specified using a path from the state's input data."
}

variable "timestamp" {
  type        = string
  default     = null
  description = "An absolute time to wait until beginning the state specified in the Next field. Timestamps must conform to the RFC3339 profile of ISO 8601."
}

variable "timestamp_path" {
  type        = string
  default     = null
  description = "An absolute time to wait until beginning the state specified in the Next field, specified using a path from the state's input data."
}
