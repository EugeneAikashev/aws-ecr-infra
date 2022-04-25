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

variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE."
  type        = string
}

variable "ecr_images_quantity" {
  description = "The total amount of images which will be stored in repo with and without prefixes. If set to 0 lifecycle will not be created"
  type        = number
}
variable "as_stage_account_id" {
  description = "The 12 digit of aws account ID"
  type        = string
}

variable "scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)"
  type        = bool
}