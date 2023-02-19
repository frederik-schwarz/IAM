resource "aws_iam_role_policy_attachment" "dev_managed" {
  count = var.create_iam_role_policy_attachment ? 1 : 0
  
  role = var.iam_role_policy_attachment.role
  policy_arn = var.iam_role_policy_attachment.policy_arn
}