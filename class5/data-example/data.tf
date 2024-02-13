provider "aws" {
    region = "us-east-1"
}


# below we are using multiple filters to match instance
# filtering based on Name and instance_type of the instance
data "aws_instance" "foo" {
  filter {
    name   = "tag:Name"
    values = ["23D - class instance - eddie "]
  }

  filter {
    name   = "instance-type"
    values = [var.instance_type]
  }
}

variable instance_type {
  type        = string
  description = "instance type of EC2"
}

output private_ip {
  value       = data.aws_instance.foo.private_ip
  description = "Private IP of instance"
}

data "aws_s3_bucket" "mybucket" {
  bucket = "22a-demo-bucket"
}

output "bucket_dns_name" {
  value       = data.aws_s3_bucket.mybucket.bucket_domain_name
}