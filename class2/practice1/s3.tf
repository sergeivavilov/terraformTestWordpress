provider "aws" {
  region = "us-east-1" # Example region
}

resource "aws_s3_bucket" "mys3bucket1" {
  bucket = var.bucket_name

  tags = {
    Name = "My bucket"
    Enviroment = "Dev"
  }
}

variable bucket_name {
  type        = string
  description = "name of s3 bucket "
}