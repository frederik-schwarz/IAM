output "iam_policy_document" {
  depends_on = [
    module.iam_policy_assume_document[0]
  ]
  description = "The policy document json."
  value = var.create_iam_policy_document ? module.iam_policy_assume_document[0].json : ""
}

output "iam_policy" {
  depends_on = [
    module.iam_policy[0]
  ]
  description = "iam policy"
  value = var.create_iam_policy ? module.iam_policy[0].name : ""
}