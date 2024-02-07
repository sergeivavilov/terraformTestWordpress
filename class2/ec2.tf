provider "aws" {
  region = "us-east-1" # Change to your desired AWS region
}
# "ami-0c7217cdde317cfec"
#  ami-0277155c3f0ab2930
resource "aws_instance" "myec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Comment = var.comment
  }
}

output "ec2_public_ip" {
        description = "public ip of ec2 Instance"
    value = aws_instance.myec2.public_ip
}

