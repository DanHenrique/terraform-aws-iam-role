output "role_arn" {
  value = aws_iam_role.example_role.arn
}

output "policy_arns" {
  value = aws_iam_policy.example_policies[*].arn
}
