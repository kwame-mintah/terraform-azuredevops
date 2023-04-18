output "git_repo_remote_url" {
  description = <<-EOF
    Retrieve the git repository remote URL.

EOF

  value = data.azuredevops_git_repository.repo_attr.remote_url
}