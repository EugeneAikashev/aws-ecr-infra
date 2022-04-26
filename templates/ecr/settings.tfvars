ecr_repo_name = "airslate/calculate-addon"
ecr_images_quantity = 50
ecr_trusted_account_ids = [
  "213049164058",  # airslate-rc
  "220358814853",  # airslate-prod
  "735877758760",  # airslate-hf
  "783986060612",  # airslate-au
]

# tags
tag_rfc          = "INFRA-33688"
tag_service      = "calculate-addon"
tag_component    = "ecr"
tag_maintainer   = "leliak.ihor@pdffiller.team"
tag_team         = "as-addons"
