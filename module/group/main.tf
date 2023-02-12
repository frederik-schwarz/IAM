resource "aws_iam_group" "dev_managed" {
  count = var.create_iam_group ? 1 : 0

  name = var.iam_group_config.name
  path = var.iam_group_config.path
}

resource "aws_iam_group_members" "dev_managed" {
  count = var.create_iam_group_membership ? 1 : 0

  name  = var.iam_group_membership_config.name
  users = var.iam_group_membership_config.users
  group = var.iam_group_membership_config.group
}
