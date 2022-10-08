resource "azuredevops_git_repository" "k_pipelines_repo" {
  project_id     = azuredevops_project.project.id
  name           = "k-pipelines"
  default_branch = "refs/heads/master"
  initialization {
    init_type = "Clean"
  }
}

resource "azuredevops_git_repository" "k_nodejs_repo" {
  project_id = azuredevops_project.project.id
  name       = "k-nodejs"
  initialization {
    init_type   = "Import"
    source_type = "Git"
    source_url  = "https://github.com/kwame-mintah/digitalocean-static-app.git"
  }
}