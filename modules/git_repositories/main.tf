# Git Repositories Module -----------------------
# -----------------------------------------------
data "azuredevops_project" "project" {
  name = var.project_name
}

data "azuredevops_git_repository" "repo_attr" {
  project_id = data.azuredevops_project.project.id
  name       = var.git_repistory_name
  depends_on = [azuredevops_git_repository.repo]
}

resource "azuredevops_git_repository" "repo" {
  project_id     = data.azuredevops_project.project.id
  name           = var.git_repistory_name
  default_branch = var.git_default_branch
  initialization {
    init_type = var.repo_init_type
  }
}
