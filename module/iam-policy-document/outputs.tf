output "iam_policy_document" {
  description = "The IAM policy Document created."
  value = try(data.aws_iam_policy_document.dev_managed[0].json, "")
}