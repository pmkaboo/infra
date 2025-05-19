resource "aws_db_instance" "this" {
  identifier        = var.ec2_instance_name
  instance_class    = var.db_type
  allocated_storage = 20

  engine         = "postgres"
  engine_version = "17.2"

  db_name  = var.db_name
  username = var.db_username
  password = data.aws_ssm_parameter.db_password.value

  skip_final_snapshot = true
}
