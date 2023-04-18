variable "azuredevops_project_name" {
  description = <<-EOF
    (Required if project_id not set) Name of the Project.
EOF

  type    = string
  default = "k-terraform"
}

variable "git_repistory_name" {
  description = <<-EOF
    (Required) The name of the git repository.
EOF

  type = string
}

variable "git_default_branch" {
  description = <<-EOF
    The ref of the default branch. 
    Will be used as the branch name for initialized repositories.
EOF

  type    = string
  default = "refs/heads/master"
}

variable "repo_init_type" {
  description = <<-EOF
    (Required) The type of repository to create. 
    Valid values: `Uninitialized`, `Clean` or `Import`.
EOF

  type    = string
  default = "Clean"
}