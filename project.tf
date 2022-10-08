resource "azuredevops_project" "project" {
  name               = "k-terraform"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Managed by Terraform."
}

resource "azuredevops_environment" "environment" {
  project_id = azuredevops_project.project.id
  name       = "Terraform Managed Environment"
}