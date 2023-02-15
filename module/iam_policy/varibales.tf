variable "create_iam_policy" {
  description = "Create IAM policy bool."
  default = false
  type = bool
}

variable "iam_policy_config" {
  description = "Object to create IAM policy with."
  type = object({
    name = optional(string, null)
    path = optional(string,null)
    description = optional(string, null)
    policy = optional(string, "")
  })
}