module "git_repositories" {
  source                = "git@github.com:kwame-mintah/terraform-azuredevops-git-repositories.git"
  project_name          = var.project_name
  git_default_branch    = "refs/heads/master"
  init_git_repositories = var.init_git_repositories
  depends_on            = [azuredevops_project.project]
}
