provider "aws" {
  region = "us-east-1" # Change to your desired AWS region
}

resource "aws_instance" "emyec2" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro" 
vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "practice-ec2-terraform"
  }
}
