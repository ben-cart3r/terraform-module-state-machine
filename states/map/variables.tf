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

variable "input_path" {
  type        = string
  default     = null
  description = "A path that selects a portion of the state's input to be passed to the state's task for processing."
}

variable "iterator" {
  type        = string
  description = "The Iterator field's value is an object that defines a state machine which will process each element of the array."
}

variable "items_path" {
  type        = string
  default     = null
  description = "The ItemsPath field's value is a reference path identifying where in the effective input the array field is found."
}

variable "max_concurrency" {
  type        = string
  default     = null
  description = "The MaxConcurrencyfield's value is an integer that provides an upper bound on how many invocations of the Iterator may run in parallel."
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
