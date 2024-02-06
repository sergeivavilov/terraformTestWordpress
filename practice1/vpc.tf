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

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.vssvpc.id
  cidr_block        = "10.100.10.0/24"

  tags = {
    Name = "subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.vssvpc.id
  cidr_block        = "10.100.20.0/24"

  tags = {
    Name = "subnet2"
  }
}