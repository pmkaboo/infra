locals {
  tofu_state_lock_bucket = "tofu-state-lock"
  tofu_state_lock_db     = "${local.tofu_state_lock_bucket}-dynamodb-table"

  db_password_path = "/db/password/admin"
}
