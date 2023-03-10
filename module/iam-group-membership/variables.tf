variable "create_iam_group_membership" {
  description = "Bool value to create new IAM Group membership or not."
  type        = bool
  default     = false
}

variable "iam_group_membership_config" {
  description = "Object to create IAM Group Membership"
  type = object({
    name  = optional(string, null)
    users = optional(list(string), null)
    group = optional(string, null)
  })
  default = {}
}
