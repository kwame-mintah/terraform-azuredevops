# Terragrunt will copy the Terraform files from the locations specified into this directory
terraform {
  source = "../.."
}

# These are inputs that need to be passed for the terragrunt configuration
inputs = {
  project_name = "k"
  init_git_repositories = [
    {
      name        = "k-infrastructure-terraform",
      source_type = "Git",
      source_url  = "https://github.com/kwame-mintah/terraform-azurerm-template.git",
      init_type   = "Import",
    },
  ]
}

locals {
  project_name = "k"
}

# If you do not want to create manually create a storage account and store state files
# locally, uncomment the code block below.
// remote_state {
//   backend = "local"
//   config = {
//     path = "${get_parent_terragrunt_dir()}/${path_relative_to_include()}/${local.project_name}-terraform.tfstate"
//   }
// }

# If moving from local storage to remote `azurerm` use `terragrunt init -migrate-state`
# This should copy your local state file to your storage account.
remote_state {
  backend = "azurerm"
  config = {
    key                  = "${path_relative_to_include()}/${local.project_name}-terraform.tfstate"
    resource_group_name  = "ad-hoc-azuredevops"
    storage_account_name = "tfstateazuredevop"
    container_name       = "tfstate-${local.project_name}"
  }
}