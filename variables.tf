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
    Name of the project.

EOF

  type = string
}

variable "azurerm_subscription_name" {
  description = <<-EOF
    The Subscription Name of the targets.

EOF

  type = string
}

variable "azurerm_spn_tenantid" {
  description = <<-EOF
    The Tenant ID if the service principal.

EOF

  type = string
}

variable "azurerm_subscription_id" {
  description = <<-EOF
    The Subscription ID of the Azure targets.

EOF

  type = string
}

variable "init_git_repositories" {
  description = <<-EOF
    Names of repositories to create in the project.

EOF

  type = list(object({
    name        = string
    source_type = string
    source_url  = string
    init_type   = string
  }))
}
