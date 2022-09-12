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

variable "parameters" {
  type        = string
  default     = null
  description = "Creates a collection of key-value pairs that will be passed as input."
}

variable "result" {
  type        = string
  default     = null
  description = "Refers to the output of a virtual task that is passed on to the next state."
}

variable "result_path" {
  type        = string
  default     = null
  description = "Specifies where to place the output (relative to the input) of the virtual task specified in Result."
}
