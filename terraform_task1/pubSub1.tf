resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_1"
  }
}



#Public Subnet 1 Association

resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.wordpress_rt.id
}
