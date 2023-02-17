variable "create_iam_role_policy_attachment" {
  description = "Value to create new IAM attachment."
  default = false
  type    = bool
}

variable "iam_role_policy_attachment" {
  description = "Object to set attachment values."
  type = object({
    role = optional(string, null)
    policy_arn = optional(string, null)
  })
  default = {}
}