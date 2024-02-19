provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "wordpress-vpc" {
  cidr_block = var.cidr
enable_dns_hostnames = true
  tags = {
    Name   = "wordpress-vpc"
    Comment = "managed by terraform"
  }
}
resource "aws_internet_gateway" "wordpress_igw" {
  vpc_id = aws_vpc.wordpress-vpc.id
  tags = {
    Name = "wordpress_igw"
    Comment = "managed by terraform"
  }
}
resource "aws_route_table" "wordpress_rt" {
  vpc_id = aws_vpc.wordpress-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wordpress_igw.id
  }
  tags = {
    Name= "wordpress_rt"
  }
}