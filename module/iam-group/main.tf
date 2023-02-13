resource "aws_iam_group" "dev_managed" {
  count = var.create_iam_group ? 1 : 0

  name = var.iam_group_config.name
  path = var.iam_group_config.path
}

