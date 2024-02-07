provider "aws" {
  region = "us-east-1" # Adjust as needed
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "MyVPC"
  }
}


resource "aws_db_instance" "example_db" {
  allocated_storage   = var.storage
  engine              = var.engine
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  db_name             = "exampledbname"  # Corrected line
  username            = var.username
  password            = var.password
  skip_final_snapshot = true

  # Add other required configurations as necessary
}
