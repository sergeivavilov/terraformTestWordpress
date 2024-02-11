variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "vpc_tags" {
  type = map(string)
}

variable "subnet_tags" {
  type = map(string)
}

variable "ig_tags" {
  type = map(string)
}

variable "rt_tags" {
  type = map(string)
}