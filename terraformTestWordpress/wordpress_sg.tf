/*  resource "aws_security_group" "wordpress_sg" {
  Name        = "wordpress-sg"
  description = "Security group for WordPress application"
}
  
   // Ingress rules
  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  // Add tags
  tags = {
    Name = "wordpress-sg"
  }
} */
resource "aws_security_group" "wordpress_sg" {
  name        = "wordpress-sg"
  description = "allow ssh,http,https"
  vpc_id = aws_vpc.wordpress-vpc.id
  ingress {
    from_port        = var.ingress_ports[0]
    to_port          = var.ingress_ports[0]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }
  ingress { 
    from_port        = var.ingress_ports[1]
    to_port          = var.ingress_ports[1]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = var.ingress_ports[2]
    to_port          = var.ingress_ports[2]
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }
   
egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"  
    cidr_blocks     = ["0.0.0.0/0"]  
  }
   tags = {
    Name = "wordpress_sg"
  }
  }