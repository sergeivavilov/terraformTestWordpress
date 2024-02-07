variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "192.168.0.0/16"
}

variable "subnet1" {
  description = "The CIDR block for the first subnet."
  default     = "192.168.10.0/24"
}

variable "subnet2" {
  description = "The CIDR block for the second subnet."
  default     = "192.168.20.0/24"
}
