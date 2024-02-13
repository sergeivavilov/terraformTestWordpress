provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "23d-terraform-state-bucket"
    key    = "statefiles/subnets-count-for-each.tfstate"
    region = "us-east-1"
  }
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.100.0.0/16"

  tags = {
    Name = "count-vpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "main-igw"
  }
}

resource "aws_subnet" "subnet" {
  count      = length(var.subnets)
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnets[count.index] # loop through elements of var.subnets

  tags = {
    Name = "subnet-${count.index + 1}"
  }
}

resource "aws_route_table" "myroutetable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "test-igw-route"
  }
}

resource "aws_route_table_association" "my_rtb_association" {
  count          = length(var.subnets)
  subnet_id      = aws_subnet.subnet[count.index].id
  route_table_id = aws_route_table.myroutetable.id
}

