variable "create_iam_group" {
  description = "Bool value to create new IAM Group or not."
  type        = bool
  default     = false
}


variable "create_iam_group_membership" {
  description = "Bool value to create new IAM Group membership or not."
  type        = bool
  default     = false
}

variable "iam_group_config" {
  description = "Object to create iam Group"
  type = object({
    name = optional(string, null)
    path = optional(string, null)
  })
}

variable "iam_group_membership_config" {
  description = "Object to create IAM Group Membership"
  type = object({
    name  = optional(string, null)
    users = optional(list, null)
    group = optional(string, null)
  })
}
