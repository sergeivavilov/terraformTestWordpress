resource "aws_instance" "wordpress_ec2" {
  ami           = var.ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]
  key_name =  "sshkey"
  subnet_id = aws_subnet.pub-sub-1.id
  associate_public_ip_address = true
  tags = {
    Name = "app_wordpress_ec2"
  }
}