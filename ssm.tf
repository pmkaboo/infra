resource "aws_ssm_parameter" "db_password" {
  name        = local.db_password_path
  description = "db admin password"
  type        = "SecureString"
  value       = var.db_password
}
