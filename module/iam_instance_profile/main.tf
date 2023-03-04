resource "aws_iam_instance_profile" "dev_managed" {
  count = var.create_iam_instance_profile ? 1 : 0
  
  name = var.aws_iam_instance_profile.name
  role = var.aws_iam_instance_profile.role
}