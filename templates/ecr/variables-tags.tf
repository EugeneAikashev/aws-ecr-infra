# see: https://pdffiller.atlassian.net/wiki/spaces/DT/pages/565281139/AWS
locals {
  tags_map = tomap({
    Infra            = var.tag_infra
    Env              = var.tag_env
    Service          = var.tag_service
    Component        = var.tag_component
    Expense_type     = var.tag_expense_type
    Owner            = var.tag_owner
    Maintainer       = var.tag_maintainer
    Team             = var.tag_team
    Rfc              = var.tag_rfc
    Managed-by       = var.tag_managed_by
    Terraform-config = var.tag_terraform_config
  })

  tags = { for k, v in local.tags_map :
    k => lower(v)
  }
}

variable "tag_infra" {
  description = "Infrastructure name, should be one from: ['sn', 'pdf', 'mr', 'as', 'cinfra', 'pmnt', 'usl', 'msites']"
  type        = string
}

variable "tag_env" {
  description = "Environment name, should be one from ['prod', 'dev', 'eval', 'rc', 'stage', 'hotfix']"
  type        = string
}

variable "tag_service" {
  description = "The main tag by which the selection of all resources related to the service is made. It is important to understand that a service consists of components."
  type        = string
}

variable "tag_component" {
  description = "Tag - name of the component see: https://pdffiller.atlassian.net/wiki/spaces/DT/pages/565281139/AWS"
  type        = string
}

variable "tag_expense_type" {
  description = "Tag for ec2 instance. Value: r_and_d / cogs"
  type        = string
}

variable "tag_owner" {
  description = "The tag owner of the resource or its customer"
  type        = string
}

variable "tag_maintainer" {
  description = "The tag responsible devops"
  type        = string
}

variable "tag_team" {
  description = "The tag development team who owns the resource get from supervisor"
  type        = string
}

variable "tag_rfc" {
  description = "The tag request number in Jira"
  type        = string
}

variable "tag_managed_by" {
  description = "The tag what was the resource created by"
  type        = string
}

variable "tag_terraform_config" {
  description = "The tag path to the github repository"
  type        = string
}

variable "tag_additional" {
  description = "Additional key-value mapping of resource tags"
  default     = null
  type        = map(string)
}
