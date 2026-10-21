locals {
  name_prefix = var.project_name
}

module "site" {
  source      = "./modules/site"
  name_prefix = local.name_prefix
  environment = var.environment
}
