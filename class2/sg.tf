resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_terraform"
  description = "Allow 22 inbound traffic traffic and all outbound traffic"
  vpc_id      = "vpc-086c5bad3a46d8ee3"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["174.51.122.44/32"]
  }


 ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

 tags = {
    Name = "allow_ssh"
  }
}
