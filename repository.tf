module "git_repositories" {
  source             = "./modules/git_repositories"
  for_each           = toset(var.init_git_repository_name)
  git_repistory_name = each.key
  project_name       = var.project_name
  depends_on         = [azuredevops_project.project]
}
