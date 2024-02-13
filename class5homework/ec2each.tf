variable "instance_tags" {
  description = "Tags for each instance"
  type        = list(string)
  default     = ["first_instance", "second_instance", "third_instance"]
}

resource "aws_instance" "example" {
  for_each = toset(var.instance_tags)

  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = each.value
  }
}

output "instance_ids" {
  value = {for k, v in aws_instance.example : k => v.id}
}

output "instance_ips" {
  value = {for k, v in aws_instance.example : k => v.public_ip}
}
