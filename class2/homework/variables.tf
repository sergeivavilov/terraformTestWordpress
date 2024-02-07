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


variable "sg_name" {
  description = "Name of the security group."
  type        = string
}

variable "port" {
  description = "The port number for the security group rule."
  type        = number
}


variable "storage" {
  description = "The allocated storage size for the RDS instance."
  type        = number
}

variable "engine" {
  description = "The database engine type for the RDS instance."
  type        = string
}

variable "engine_version" {
  description = "The database engine version for the RDS instance."
  type        = string
}

variable "instance_class" {
  description = "The instance class type for the RDS instance."
  type        = string
}

variable "username" {
  description = "The username for the RDS database."
  type        = string
}

variable "password" {
  description = "The password for the RDS database."
  type        = string
}
