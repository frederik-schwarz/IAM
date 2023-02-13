module "iam_group" {
  count  = var.create_iam_group ? 1 : 0
  
  source = "./module/iam-group"
  create_iam_group            = var.create_iam_group
  iam_group_config            = var.iam_group_config
}

module "iam_group_membership" {
  count  = var.create_iam_group_membership ? 1 : 0
  
  source = "./module/iam-group-membership"
  create_iam_group_membership = var.create_iam_group_membership
  iam_group_membership_config = var.iam_group_membership_config
}
