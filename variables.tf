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

variable "create_iam_role" {
  description = "Create new IAM Role."
  type = bool
  default = false
}

variable "iam_group_config" {
  description = "Object to create iam Group"
  type = object({
    name = optional(string, null)
    path = optional(string, null)
  })
  default = {}
}

variable "create_iam_policy_document" {
  description = "Create IAM Policy Document."
  type = bool
  default = false
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

variable "iam_role_config" {
  description = "Object to create iam role"
  type = object({
    name = optional(string, null)
    assume_role_policy = map(string)
    description = optional(string, null)
    force_detach_policies = optional(bool, false)
    managed_policy_arns = optional(list(string), null)
    max_session_duration = optional(number, 3600)
    path = optional(string, null)
    permissions_boundary = optional(string, null)
    tags = optional(map(string), null)
  })
  default = {}
}

variable "iam_policy_document" {
    description = "Object to create I am policy Document"
    type = object({
        statement = list(object({
            sid = optional(string, null)
            effect = optional(string, "Allow")
            actions = optional(list(string), null)
            resources = optional(list(string), null)
            principals = optional(list(object({
                type = string
                identifiers = list(string)
            })))
        }))
    })
  
}