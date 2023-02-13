data "aws_iam_policy_document" "dev_managed" {
  count = var.create_iam_policy_document ? 1 : 0 

  dynamic "statement" {
    for_each = var.iam_policy_document.statement
    content {
        sid    = statement.value.sid
        effect = statement.value.effect
        actions = statement.value.action
        resources = statement.value.resources
        dynamic "principals" {
          for_each = statement.value.principals
          content {
            type = principals.value.type
            identifiers = principals.value.type
          }
        }
    }
  }
}