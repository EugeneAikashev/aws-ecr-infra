ecr_repo_name       = "airslate/service3"
ecr_images_quantity = 50
ecr_trusted_account_ids = [
  "072892134591", # airslate-stage
]

# tags
tag_rfc        = "Automated by [Create ECR Pull Request]:20 from EugeneAikashev/aws-ecr-create"
tag_service    = "service3"
tag_component  = "ecr"
tag_maintainer = "EugeneAikashev"
tag_team       = "devops"
