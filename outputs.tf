output "role_arn" {
  value = aws_iam_role.role.arn
}

output "policy_arns" {
  value = aws_iam_policy.policies[*].arn
}
