output "json" {
  description = "The IAM policy Document created."
  value = data.aws_iam_policy_document.dev_managed[0].json
}