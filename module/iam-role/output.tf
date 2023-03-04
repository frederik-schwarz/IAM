output "role_name" {
  description = "The IAM Role name."
  value = aws_iam_role.dev_managed[0].name
}