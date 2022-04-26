variable "region" {
  description = "The AWS region to create resources in."
  type        = string
}

variable "profile" {
  description = "Profile to use aws creds"
  type        = string
}

variable "account_id" {
  description = "The 12 digit of aws account ID"
  type        = string
}

variable "remote_states_bucket" {
  description = "Bucket name to store remote states and import/export outputs"
  type        = string
}

variable "ecr_repo_name" {
  description = "The ecr repository name"
  type        = string
}

variable "ecr_trusted_account_ids" {
  description = "The list of accounts id with read access to ecr repository"
  type        = list(string)
}

variable "ecr_images_quantity" {
  description = "The total amount of images which will be stored in repo with and without prefixes. If set to 0 lifecycle will not be created"
  type        = number
}