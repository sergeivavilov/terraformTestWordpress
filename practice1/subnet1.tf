resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.vssvpc.id
  cidr_block        = "10.100.10.0/24"

  tags = {
    Name = "subnet1"
  }
}