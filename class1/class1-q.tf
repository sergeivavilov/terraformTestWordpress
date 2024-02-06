provider "aws" {
  region = "us-east-1" # Example region
}

resource "aws_instance" "example" {
  ami           = "ami-0277155c3f0ab2930"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.vssTFsg.id]

  tags = {
    Name = "vss-terraform-instance"
  }
}

resource "aws_security_group" "vssTFsg" {
  name        = "vssTFsg"
  description = "Security group for SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["54.226.196.131/32"] # Your specified IP address for SSH access
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vssTFsg"
  }
}
