# Git Repositories Module -----------------------
# -----------------------------------------------
data "azuredevops_project" "project" {
  name = var.project_name
}

data "azuredevops_git_repository" "repo_attr" {
  for_each   = { for key, value in var.init_git_repositories : key => value }
  project_id = data.azuredevops_project.project.id
  name       = each.value.name
  depends_on = [azuredevops_git_repository.repo]
}

resource "azuredevops_git_repository" "repo" {
  for_each       = { for key, value in var.init_git_repositories : key => value }
  project_id     = data.azuredevops_project.project.id
  name           = each.value.name
  default_branch = var.git_default_branch
  initialization {
    init_type   = each.value.init_type
    source_type = each.value.source_type
    source_url  = each.value.source_url
  }
}
