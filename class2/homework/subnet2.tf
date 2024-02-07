
resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet2
  availability_zone = "us-east-1b" # Adjust as needed
  tags = {
    Name = "Subnet2"
  }
}
