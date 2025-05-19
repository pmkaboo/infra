# resource "aws_s3_bucket" "state" {
#   bucket        = local.tofu_state_lock_bucket
#   force_destroy = false
# }

# resource "aws_s3_bucket_ownership_controls" "state" {
#   bucket = aws_s3_bucket.state.id
#   rule {
#     # this setting disables ACLs
#     object_ownership = "BucketOwnerEnforced"
#   }
# }

# resource "aws_s3_bucket_public_access_block" "state" {
#   bucket = aws_s3_bucket.state.id

#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }

# resource "aws_dynamodb_table" "lock" {
#   name             = local.tofu_state_lock_db
#   billing_mode     = "PAY_PER_REQUEST"
#   hash_key         = "LockID"
#   stream_enabled   = true
#   stream_view_type = "KEYS_ONLY"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   server_side_encryption {
#     enabled = true
#   }
# }
