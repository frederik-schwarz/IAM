output "iam_policy_assume_document_json" {
  depends_on = [
    module.iam_policy_assume_document[0]
  ]
  description = "The policy document json."
  value = var.create_iam_policy_document ? module.iam_policy_assume_document[0].json : ""
}

output "iam_policy_arn" {
  depends_on = [
    module.iam_policy[0]
  ]
  description = "IAM policy arn"
  value = var.create_iam_policy ? module.iam_policy[0].arn : ""
}

output "iam_role_name" {
  depends_on = [
    module.iam_role[0]
  ]
  description = "IAM role name"
  value = var.create_iam_role ? module.iam_role[0].name : ""
}