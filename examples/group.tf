module "example" {
  source = "../"

  create_iam_group = true
  iam_group_config = {
    name = "example"
    path = "/"
  }
}