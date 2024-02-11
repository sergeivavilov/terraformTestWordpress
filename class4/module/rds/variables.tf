variable "storage" {
  description = "The allocated storage in gigabytes"
  default = 10
}

variable "engine" {
  description = "The database engine to use"
  default = "mysql"
}

variable "engine_version" {
  description = "The engine version to use"
  default = "5.7"
}


variable "instance_class" {
  description = "The instance type of the RDS instance"
  default = "db.t3.micro"
}

variable "username" {
  description = "Username for the master DB user"
  default = "myadmin"
}

variable "password" {
  description = "Password for the master DB user"
  default = "securepassword"
}

