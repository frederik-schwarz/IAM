resource "aws_iam_policy" "dev_managed" {
  count = var.create_iam_policy ? 1 : 0

  name = var.iam_policy_config.name
  path = var.iam_policy_config.path
  description = var.iam_policy_config.description
  policy = var.iam_policy_config.policy
}