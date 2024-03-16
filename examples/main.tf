module "iam_role_with_policies" {
  source               = "github.com/DanHenrique/terraform-aws-lambda?ref=v1.0.0"
  role_name            = "ExampleRole"
  assume_role_policy_document = file("./role/role.json")

  policies = [
    {
      name        = "ExamplePolicy"
      description = "Policy for resource access"
      document    = file("./policy/policy.json")
    }
    # Adicione mais políticas conforme necessário
  ]

  tags = {
    creator        = "danhenrique"
    git_repository = "https://github.com/DanHenrique/terraform-aws-iam-role"
  }
}
