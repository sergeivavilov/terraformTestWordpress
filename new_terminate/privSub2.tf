resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private_subnet_2"
  }
}
