output "name" {
    description = "The policy name"
    value = aws_iam_policy.dev_managed[0].name
}