# Terragrunt will copy the Terraform files from the locations specified into this directory
terraform {
  source = "../.."
}

# These are inputs that need to be passed for the terragrunt configuration
inputs = {
  project_name = "uow"
  init_git_repositories = [
    {
      name        = "${local.project_name}-infrastructure-terraform",
      source_type = "Git",
      source_url  = "https://github.com/kwame-mintah/terraform-azurerm-template.git",
      init_type   = "Import",
    },
    {
      name        = "${local.project_name}-frontend-app"
      source_type = null
      source_url  = null
      init_type   = "Clean"
    },
    {
      name        = "${local.project_name}-backend-app"
      source_type = null
      source_url  = null
      init_type   = "Clean"
    }
  ]
}

locals {
  project_name = "uow"
}

remote_state {
  backend = "local"
  config = {
    path = "${get_parent_terragrunt_dir()}/${path_relative_to_include()}/${local.project_name}-terraform.tfstate"
  }
}
