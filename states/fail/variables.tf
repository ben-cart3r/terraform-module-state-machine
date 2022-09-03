variable "cause" {
  type        = string
  default     = null
  description = "A custom failure string that you can specify for operational or diagnostic purposes."
}

variable "error" {
  type        = string
  default     = null
  description = "An error name that you can provide for operational or diagnostic purposes."
}

variable "name" {
  type        = string
  description = "The name of the state object."
}
