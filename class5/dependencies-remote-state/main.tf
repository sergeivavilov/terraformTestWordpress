provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "23d-terraform-state-bucket"
    key    = "statefiles/vpc_s3.txt"
    region = "us-east-1"
  }
}

# terraform depends_on controls order of application of resources
# this is rarely needed, most of the times terraform handles order
# normally.
# below s3 bucket is created FIRST, then vpc is created

resource "aws_s3_bucket" "mybucket" {
  bucket = "23d-terraform-test-bucket"
}

resource "aws_vpc" "myvpc" {
  depends_on = [aws_s3_bucket.mybucket]
  cidr_block = "10.100.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.100.1.0/24"

  tags = {
    Name = "subnet1"
  }
}