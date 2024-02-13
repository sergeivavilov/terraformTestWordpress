resource "aws_subnet" "public_subnet_3" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1c" # Different AZ for high availability
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_3"
  }
}


#Public Subnet 3 Association

resource "aws_route_table_association" "a3" {
  subnet_id      = aws_subnet.public_subnet_3.id
  route_table_id = aws_route_table.wordpress_rt.id
}