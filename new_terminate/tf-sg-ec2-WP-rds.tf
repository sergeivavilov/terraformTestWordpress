##Security Groups
#Create security groups for EC2 (WordPress) and RDS.

resource "aws_security_group" "wordpress_sg" {
  name        = "wordpress-sg"
  description = "Allow web and SSH traffic"
  vpc_id      = aws_vpc.wordpress_vpc.id

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "wordpress-sg"
  }
}
