output "profile_name" {
  description = "IAM instance profile"
  value = aws_iam_instance_profile.dev_managed[0].name
}