module "git_repositories" {
  source                = "./modules/git_repositories"
  project_name          = var.project_name
  init_git_repositories = var.init_git_repositories
  depends_on            = [azuredevops_project.project]
}
