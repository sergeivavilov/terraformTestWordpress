variable "name" {
  type        = string
  description = "SG name"
}

variable "description" {
  type        = string
  default     = "SG managed by Terraform"
  description = "Variable to give description to SG"
}


variable "port" {
  type        = number
  description = "Port number to allow SG"
}


