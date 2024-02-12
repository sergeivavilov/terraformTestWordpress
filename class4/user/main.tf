provider "aws" {
  region = "us-east-1"
}

module "user" {
  source = "../iam_user"
  user_name = "tfadmin"
}

module "policy" {
  source = "../iam_policy"
  policy_name = "tfadmin"
  policy_description = "tfadmin_policy allowing admin access"
}

resource "aws_iam_user_policy_attachment" "user-attach" {
  user       = "module.user.user_name"
  policy_arn = module.policy.policy_arn
}

output "user_path" {
    value = "module.user.user.path"
}

output "user_tags" {
    value = "module.user.user.tags"
}