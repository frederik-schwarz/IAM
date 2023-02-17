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

module "iam_role" {
  count = var.create_iam_role ? 1 : 0
  source = "./module/iam-role"

  create_iam_role = var.create_iam_role
  iam_role_config = var.iam_role_config
}

module "iam_policy_assume_document" {
  count = var.create_iam_policy_document ? 1 : 0

  source = "./module/iam-policy-assume-document"
  create_iam_policy_document = var.create_iam_policy_document
  iam_policy_assume_document_config = var.iam_policy_assume_document_config
}

module "iam_policy" {
  count = var.create_iam_policy ? 1 : 0
  
  source = "./module/iam_policy"
  create_iam_policy = var.create_iam_policy
  iam_policy_config = var.iam_policy_config
}
