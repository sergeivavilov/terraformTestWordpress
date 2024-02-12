resource "aws_iam_policy" "policy" {
  name        = "var.policy_name"
  path        = "/"
  description = "var.policy_description"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

 output "policy_arn" {
    value = aws_iam_policy.policy.arn
 }