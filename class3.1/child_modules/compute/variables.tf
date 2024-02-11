variable "ami_id" {
  type = string
}

variable "instance_type" {
  description = "The instance type to use for the server."
  type        = string
}

variable "instance_tags" {
  type = map(sting)
}