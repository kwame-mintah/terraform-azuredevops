module "git_repositories" {
  source                = "git@github.com:kwame-mintah/terraform-azuredevops-git-repositories.git?ref=6c160e89185fef42a2f0c0a0518c9681aa58d06b" # v1.0.0
  project_name          = var.project_name
  init_git_repositories = var.init_git_repositories
  depends_on            = [azuredevops_project.project]
}
