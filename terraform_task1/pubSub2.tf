resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b" # Different AZ for high availability
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_2"
  }
}

#Public Subnet 2 Association

resource "aws_route_table_association" "a2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.wordpress_rt.id
}