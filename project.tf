resource "azuredevops_project" "project" {
  name               = var.project_name
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Managed by Terraform."
}

resource "azuredevops_environment" "development_environment" {
  project_id  = azuredevops_project.project.id
  name        = "Develop Environment"
  description = <<-EOF
      Development environment were new code changes
      are deployed to.
  EOF
}

resource "azuredevops_environment" "testing_environment" {
  project_id  = azuredevops_project.project.id
  name        = "Testing Environment"
  description = <<-EOF
      Testing environment to verify all bug fixes
      have been resolved.
  EOF
}

resource "azuredevops_environment" "staging_environment" {
  project_id  = azuredevops_project.project.id
  name        = "Staging Environment"
  description = <<-EOF
      Staging environment to ensure all new changes
      are working as intended before going to production.
  EOF
}

resource "azuredevops_environment" "production_environment" {
  project_id  = azuredevops_project.project.id
  name        = "Production Environment"
  description = <<-EOF
      Production final stage of application deployment.

  EOF
}