module "iam_group" {
  count  = var.create_iam_group ? 1 : 0
  source = "./module/group"

  iam_group_config            = var.iam_group_config
  iam_group_membership_config = var.iam_group_membership_config
}