variable "create_iam_policy_document" {
  description = "Create IAM Policy Document."
  type = bool
  default = false
}

variable "iam_policy_document_config" {
    description = "Object to create I am policy Document"
    type = object({
        statement = optional(list(object({
            sid = optional(string, null)
            effect = optional(string, "Allow")
            actions = optional(list(string), null)
            resources = optional(list(string), null)
            principals = optional(list(object({
                type = string
                identifiers = list(string)
            })))
        })))
    })
    default = {}
}