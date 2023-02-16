variable "iam_policy_document" {
  depends_on = [
    module.iam_policy_document[0]
  ]
  description = "The policy document json."
  value = var.create_iam_policy_document ? module.iam_policy_document[0].json : ""
}