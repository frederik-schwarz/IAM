variable "create_iam_instance_profile" {
  description = "Create IAM instance profile"
  type = bool
  default = false
}

variable "iam_instance_profile" {
  description = "Object to pass to instance profile."
  type = object({
    name = optional(string, null)
    role = optional(string, null)
  })
}