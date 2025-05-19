terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  #   backend "s3" {
  #     bucket         = local.tofu_state_lock_bucket
  #     key            = "main/state.tfstate"
  #     region         = var.region
  #     dynamodb_table = local.tofu_state_lock_db
  #   }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      env     = "dev"
      project = "infra-101"
    }
  }
}
