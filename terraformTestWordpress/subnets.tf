#Public subnets
resource "aws_subnet" "pub-sub-1" {
  vpc_id     = aws_vpc.wordpress-vpc.id
  cidr_block = var.pub-sub-1
availability_zone = "us-east-1a"
  tags = {
    Name = "pub-sub-1"
  }
}
resource "aws_subnet" "pub-sub-2" {
  vpc_id     = aws_vpc.wordpress-vpc.id
  cidr_block = var.pub-sub-2
availability_zone = "us-east-1b"
  tags = {
    Name = "pub-sub-2"
  }
}
resource "aws_subnet" "pub-sub-3" {
  vpc_id     = aws_vpc.wordpress-vpc.id
  cidr_block = var.pub-sub-3
availability_zone = "us-east-1c"
  tags = {
    Name = "pub-sub-3"
  }
}
#Privat Subnets
resource "aws_subnet" "priv-sub-1" {
  vpc_id     = aws_vpc.wordpress-vpc.id
  cidr_block = var.priv-sub-1
availability_zone = "us-east-1d"
  tags = {
    Name = "priv-sub-1"
  }
}
resource "aws_subnet" "priv-sub-2" {
  vpc_id     = aws_vpc.wordpress-vpc.id
  cidr_block = var.priv-sub-2
availability_zone = "us-east-1e"
  tags = {
    Name = "priv-sub-2"
  }
}
resource "aws_subnet" "priv-sub-3" {
  vpc_id     = aws_vpc.wordpress-vpc.id
  cidr_block = var.priv-sub-3
availability_zone = "us-east-1f"
  tags = {
    Name = "priv-sub-3"
  }
}
#Public subnet association with route table
resource "aws_route_table_association" "wordpress_rt_assos1" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.wordpress_rt.id
}
resource "aws_route_table_association" "wordpress_rt_assos2" {
  subnet_id      = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.wordpress_rt.id
}
resource "aws_route_table_association" "wordpress_rt_assos3" {
  subnet_id      = aws_subnet.pub-sub-3.id
  route_table_id = aws_route_table.wordpress_rt.id
}