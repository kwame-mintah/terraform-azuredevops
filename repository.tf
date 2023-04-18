module "k_frontend_app" {
  source             = "./modules/git_repositories"
  git_repistory_name = "k-frontend-app"
}

module "k_backend_app" {
  source             = "./modules/git_repositories"
  git_repistory_name = "k-backend-app"
}
