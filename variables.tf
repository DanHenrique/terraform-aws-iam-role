variable "role_name" {
  description = "Nome da Role"
  type        = string
}

variable "assume_role_policy_document" {
  description = "Documento JSON da política de confiança da Role"
  type        = string
}

variable "policies" {
  description = "Lista de definições de política"
  type        = list(object({
    name        = string
    description = string
    document    = string
  }))
}