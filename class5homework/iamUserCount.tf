provider "aws" {
  region = "us-east-1"
}
#create 3 users 
resource "aws_iam_user" "user" {
  count = 3
  name  = ["alice", "bob", "john"][count.index]
}
#attach read only policy to 3 users
resource "aws_iam_user_policy_attachment" "user_readonly" {
  count      = 3
  user       = aws_iam_user.user[count.index].name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

output "user_arns" {
  value = aws_iam_user.user[*].arn
}
