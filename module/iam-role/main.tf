resource "aws_iam_role" "dev_managed" {
  count = var.create_iam_role ? 1 : 0 

  name = var.iam_role_config.role
  description = var.iam_role_config.description
  path = var.iam_role_config.path
  permissions_boundary = var.iam_role_config.permissions_boundary
  force_detach_policies = var.iam_role_config.force_detach_policies
  managed_policy_arns = var.iam_role_config.managed_policy_arns
  max_session_duration = var.iam_role_config.max_session_duration
  assume_role_policy = var.iam_role_config.assume_role_policy
  
  tags = var.iam_role_config.tags
}