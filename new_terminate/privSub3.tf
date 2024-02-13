resource "aws_subnet" "private_subnet_3" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "private_subnet_3"
  }
}