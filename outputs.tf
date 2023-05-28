output "project_id" {
  description = <<-EOF
    The project id.

EOF

  value = azuredevops_project.project.id
}

output "project_name" {
  description = <<-EOF
    The project name.

EOF

  value = azuredevops_project.project.name
}

output "git_repositories_repo_attr" {
  description = <<-EOF
    Name for all git repositories within the
    project.

EOF

  value = module.git_repositories
}