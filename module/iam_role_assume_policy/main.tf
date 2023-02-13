data "aws_iam_policy" "dev_managed" {
  count = var.create_iam_policy_document ? 1 : 0 

  for_each = var.assume_iam_policy
  statement {
    effect = assume_iam_policy.value.effect
    actions = assume_iam_policy.value.action
    resources = assume_iam_policy.value.resources
    principals = assume_iam_policy.value.principals
  }
}