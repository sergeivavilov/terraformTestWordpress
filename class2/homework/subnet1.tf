resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet1
  availability_zone = "us-east-1a" # Adjust as needed
  tags = {
    Name = "Subnet1"
  }
}