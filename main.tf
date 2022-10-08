provider "azuredevops" {
  org_service_url       = var.organization_url
  personal_access_token = var.personal_access_token
}

data "azuredevops_git_repositories" "all_project_repos" {
  project_id     = azuredevops_project.project.id
  include_hidden = true
}