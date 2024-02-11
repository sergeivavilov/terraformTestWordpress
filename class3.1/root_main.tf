module "networking" {
  source      = "./child_modules/networking"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.0.0/24"
  vpc_tags = {
    Name = "my-vpc"
  }
  subnet_tags = {
    Name = "my-vpc"
  }
  ig_tags = {
    Name = "my-vpc"
  }
  rt_tags = {
    Name = "my-vpc"
  }
}

module "compute" {
  source        = "./child_modules/compute"
  ami_id        = "ami-0c20d88b0021158c6"
  instance_type = "t2.micro"
  instance_tags = {
    Name = "my-ec2"
  }
}