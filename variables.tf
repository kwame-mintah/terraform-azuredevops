variable "organization_url" {
  description = <<-EOF
    This is the Azure DevOps organization url. 
    It can also be sourced from the AZDO_ORG_SERVICE_URL environment variable.
EOF

  type = string
}

variable "personal_access_token" {
  description = <<-EOF
    This is the Azure DevOps organization personal access token. 
    The account corresponding to the token will need "owner" privileges for this organization. 
    It can also be sourced from the AZDO_PERSONAL_ACCESS_TOKEN environment variable.
EOF

  type = string
}

variable "project_name" {
  description = <<-EOF
    Azure DevOps project.
EOF

  type = string
}