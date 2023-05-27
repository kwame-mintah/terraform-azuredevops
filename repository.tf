module "k_frontend_app" {
  source             = "./modules/git_repositories"
  git_repistory_name = "${var.project_name}-frontend-app"
  project_name       = var.project_name
  depends_on         = [azuredevops_project.project]
}

module "k_backend_app" {
  source             = "./modules/git_repositories"
  git_repistory_name = "${var.project_name}-backend-app"
  project_name       = var.project_name
  depends_on         = [azuredevops_project.project]
}
