resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private_subnet_1"
  }
}
