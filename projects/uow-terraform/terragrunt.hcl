# Terragrunt will copy the Terraform files from the locations specified into this directory
terraform {
  source = "../.."
}

# These are inputs that need to be passed for the terragrunt configuration
inputs = {
  project_name               = "uow"
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
