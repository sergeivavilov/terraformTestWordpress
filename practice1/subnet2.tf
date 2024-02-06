resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.vssvpc.id
  cidr_block        = "10.100.20.0/24"

  tags = {
    Name = "subnet2"
  }
}