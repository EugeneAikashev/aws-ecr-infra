ecr_repo_name = "airslate/service2"
ecr_images_quantity = 50
ecr_trusted_account_ids = [
  "213049164058",  # airslate-rc
  "220358814853",  # airslate-prod
  "735877758760",  # airslate-hf
  "783986060612",  # airslate-au
]

# tags
tag_rfc          = "Automated by [Create ECR Pull Request:19] from EugeneAikashev/aws-ecr-create"
tag_service      = "service2"
tag_component    = "ecr"
tag_maintainer   = "EugeneAikashev"
tag_team         = "devops"
