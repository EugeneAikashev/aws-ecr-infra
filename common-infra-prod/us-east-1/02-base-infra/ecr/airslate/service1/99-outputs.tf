output "ecr_arn" {
  value       = aws_ecr_repository.repository.arn
  description = "Full ARN of the repository"
}

output "ecr_name" {
  value       = aws_ecr_repository.repository.name
  description = "The name of the repository."
}

output "ecr_repository_url" {
  value       = aws_ecr_repository.repository.repository_url
  description = "The URL of the repository"
}