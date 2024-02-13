#EC2 Instance for WordPress

resource "aws_instance" "wordpress_ec2" {
  // Original resource configuration

  ami           = "ami-0c02fb55956c7d316" # Replace with the latest Amazon Linux 2 AMI in your region
  instance_type = "t2.micro"
}

resource "aws_instance" "wordpress_ec2_alternate" {
  // Supposedly different resource configuration

  ami           = "ami-0c02fb55956c7d316" # Replace with the latest Amazon Linux 2 AMI in your region
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ssh_key.key_name
  subnet_id     = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]

  tags = {
    Name = "wordpress-ec2"
  }
}


#Installing WordPress
resource "aws_instance" "wordpress_ec2_secondary" {
  // Adjusted resource configuration

  ami           = "ami-0c02fb55956c7d316" # Replace with the latest Amazon Linux 2 AMI in your region
  instance_type = "t2.micro"
  
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd php mysql php-mysqlnd
              systemctl start httpd
              systemctl enable httpd
              cd /var/www/html
              wget https://wordpress.org/latest.tar.gz
              tar -xzf latest.tar.gz
              cp -r wordpress/* /var/www/html/
              chown -R apache:apache /var/www/html/
              systemctl restart httpd
              EOF
}
