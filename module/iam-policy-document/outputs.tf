output "iam_policy_document" {
  description = "The IAM policy Document created."
  value = data.aws_iam_policy_document.dev_managed.json
}