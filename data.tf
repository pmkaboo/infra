data "aws_vpc" "default" {
  filter {
    name   = "isDefault"
    values = ["true"]
  }
}

data "aws_ssm_parameter" "db_password" {
  name = local.db_password_path
}
