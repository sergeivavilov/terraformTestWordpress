data "aws_vpc" "default" {
 default = true
}

 
resource "aws_security_group" "default" {
  name        = var.name
  description = var.description
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port        = var.port
    to_port          = var.port
    protocol         = "tcp"
    cidr_blocks      = ["192.168.0.0/16"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.name
  }
}