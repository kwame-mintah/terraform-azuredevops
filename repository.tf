module "git_repositories" {
  source                = "git@github.com:kwame-mintah/terraform-azuredevops-git-repositories.git?ref=d2b17c8ab1b26fedb9eb9a3a39f7ae2d8bfb6910" # v0.1.0
  project_name          = var.project_name
  git_default_branch    = "refs/heads/master"
  init_git_repositories = var.init_git_repositories
  depends_on            = [azuredevops_project.project]
}
