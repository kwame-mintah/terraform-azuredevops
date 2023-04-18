output "project_id" {
  description = <<-EOF
    The project name.

EOF

  value = azuredevops_project.project.id
}

output "project_name" {
  description = <<-EOF
    The project id.

EOF

  value = azuredevops_project.project.name
}

output "k_frontend_repo_remote_url" {
  description = <<-EOF
    Remote url for frontend app.

EOF

  value = module.k_frontend_app.git_repo_remote_url
}

output "k_backend_repo_remote_url" {
  description = <<-EOF
    Remote url for backend app.

EOF

  value = module.k_backend_app.git_repo_remote_url
}