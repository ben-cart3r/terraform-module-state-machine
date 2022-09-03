variable "choices" {
  type        = list(any)
  description = "An array of Choice Rules that determines which state the state machine transitions to next."

  validation {
    condition     = length(var.choices) > 0
    error_message = "You must define at least one rule in the Choice state."
  }
}

variable "comment" {
  type        = string
  default     = null
  description = "A human-readable description of the state."
}

variable "default" {
  type        = string
  default     = null
  description = "The name of the state to transition to if none of the transitions in Choices is taken."
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

variable "output_path" {
  type        = string
  default     = null
  description = "A path that selects a portion of the state's output to be passed to the next state."
}
