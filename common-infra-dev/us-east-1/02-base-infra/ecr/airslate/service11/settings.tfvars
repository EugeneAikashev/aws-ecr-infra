ecr_repo_name       = "airslate/service11"
ecr_images_quantity = 50
ecr_trusted_account_ids = [
  "072892134591", # airslate-stage
]

# tags
tag_rfc        = "Automated by [Create ECR Pull Request]:26 from EugeneAikashev/aws-ecr-create"
tag_service    = "service11"
tag_component  = "ecr"
tag_maintainer = "EugeneAikashev"
tag_team       = "devops"