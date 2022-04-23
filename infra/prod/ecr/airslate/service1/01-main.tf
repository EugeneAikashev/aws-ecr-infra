data "template_file" "policy_template" {
  template = file(format("%s/template/policy_template.json", path.module))

  vars = {
    as_stage_account_id = var.as_stage_account_id
    region              = var.region
  }
}

resource "aws_ecr_repository" "repository" {
  name                 = var.ecr_repo_name
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
}

resource "aws_ecr_repository_policy" "policy" {
  repository = aws_ecr_repository.repository.name
  policy     = data.template_file.policy_template.rendered
}

resource "aws_ecr_lifecycle_policy" "lifecycle" {
  repository = aws_ecr_repository.repository.name
  policy = jsonencode({
    rules = [{
      rulePriority = 100
      description  = format("Keep last %s images", var.ecr_images_quantity)
      selection = {
        tagStatus   = "any"
        countType   = "imageCountMoreThan"
        countNumber = var.ecr_images_quantity
      }
      action = {
        type = "expire"
      }
    }]
  })
}