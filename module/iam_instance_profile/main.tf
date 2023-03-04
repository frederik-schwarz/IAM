resource "aws_iam_instance_profile" "dev_managed" {
  count = var.create_iam_instance_profile ? 1 : 0
  
  name = var.iam_instance_profile.name
  role = var.iam_instance_profile.role
}