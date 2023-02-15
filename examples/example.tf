module "example" {
  source = "../"

  create_iam_group = true
  iam_group_config = {
    name = "example"
    path = "/"
  }

  create_iam_policy_document = true
  iam_policy_document_config = {
    statement = [{
      actions = ["sts:AssumeRole"]
      principals = [{
        identifiers = ["firehose.amazonaws.com"]
        type = "Service"
      }]
    }]
  } 
}