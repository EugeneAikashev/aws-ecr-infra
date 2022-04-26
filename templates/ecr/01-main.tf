module "some_repo" {
  source                  = "git::git@github.com:airslate-ops/terraform-ecr-repo-module//terraform-1.0?ref=v2.1.0"
  ecr_repo_name           = var.ecr_repo_name
  ecr_trusted_account_ids = var.ecr_trusted_account_ids
  ecr_images_quantity     = var.ecr_images_quantity
}