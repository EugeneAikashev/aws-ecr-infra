output "ecr_arn" {
  value       = module.some_repo.ecr_arn
  description = "Full ARN of the repository"
}

output "ecr_name" {
  value       = module.some_repo.ecr_name
  description = "The name of the repository."
}

output "ecr_repository_url" {
  value       = module.some_repo.ecr_repository_url
  description = "The URL of the repository"
}
