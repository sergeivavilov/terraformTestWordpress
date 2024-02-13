provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "example" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-95949eef"
  
  dynamic "ingress" {
    for_each = [22, 80, 443]
    content {
          from_port        = ingress.value
          to_port          = ingress.value
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
        }
  }
}