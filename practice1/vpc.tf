provider "aws" {
  region = "us-east-1" # Example region
}

resource "aws_vpc" "vssvpc" {
  cidr_block = "10.100.0.0/16"
  tags = {
    Name = "vpc-VSS"
    Comment = "managed by terraform"
  }
}

