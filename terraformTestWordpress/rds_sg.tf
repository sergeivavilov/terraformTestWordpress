
resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Allow MySQL port and traffic only from wordpress-sg"
  vpc_id      = aws_vpc.wordpress-vpc.id
  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.wordpress_sg.id]
  }
  tags = {
    Name = "rds-sg"
  }
} 