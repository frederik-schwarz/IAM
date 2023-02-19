output "arn" {
    description = "The policy name"
    value = aws_iam_policy.dev_managed[0].arn
}