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

output "project_repositories" {
  description = <<-EOF
    A list of all repositories in the project and their
    attributes.

EOF

  value = data.azuredevops_git_repositories.all_project_repos.repositories
}