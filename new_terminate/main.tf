#Provider Configuration
provider "aws" {
  region = "us-east-1"
}

variable "ingress_ports" {
  default = [80, 443, 22]
}


#vpc 
resource "aws_vpc" "wordpress_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "wordpress-vpc"
  }
}


#internet_gateway 

resource "aws_internet_gateway" "wordpress_igw" {
  vpc_id = aws_vpc.wordpress_vpc.id
  tags = {
    Name = "wordpress_igw"
  }
}


#route_table

resource "aws_route_table" "wordpress_rt" {
  vpc_id = aws_vpc.wordpress_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wordpress_igw.id
  }

  tags = {
    Name = "wordpress-rt"
  }
}

#Associate your public subnets with the route table. Private subnets don't need a direct association if they won't access the internet directly but through a NAT Gateway or similar.


