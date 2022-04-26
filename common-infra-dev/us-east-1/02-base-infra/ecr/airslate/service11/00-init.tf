terraform {
  backend "s3" {}
}

provider "aws" {
  region              = var.region
  allowed_account_ids = [var.account_id]
  profile             = var.profile

  default_tags {
    tags = local.tags
  }
}
