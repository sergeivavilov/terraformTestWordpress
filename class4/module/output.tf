output "vpc_id" {
    value = "data.aws_vpc.default.id"
    description = "output of default VPC ID"
}

output "sg_id" {
  value = aws_security_group.default.id
  
}