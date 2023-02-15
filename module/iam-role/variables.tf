# variable "create_iam_role" {
#   description = "Create new IAM Role."
#   type = bool
#   default = false
# }

# variable "iam_role_config" {
#   description = "Object to create IAM Role."
#   type = object({
#     name = optional(string, null)
#     assume_role_policy = optional(string, "")
#     description = optional(string, null)
#     force_detach_policies = optional(bool, false)
#     managed_policy_arns = optional(list(string), null)
#     max_session_duration = optional(number, 3600)
#     path = optional(string, null)
#     permissions_boundary = optional(string, null)
#     tags = optional(map(string), null)
#   })
# }
