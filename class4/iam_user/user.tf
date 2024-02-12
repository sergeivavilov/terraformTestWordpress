resource "aws_iam_user" "user" {
  name = var.user_name
 
 tags =  {
 env = "dev"
 terraform = "yes"
 }
}

output "user_name" {
  value = aws_iam_user.user
}

output "user_path" {
    value = "aws_iam_user.user.path"
}

output "user_tags" {
    value = "aws_iam_user.user.tags"
}