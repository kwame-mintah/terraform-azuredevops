# Terraform Azure DevOps

The main purpose of this repository is for me to play around with [Terraform](https://www.terraform.io/). And I have created this repositories and others, so that I can get familiar with different providers available.

This project will focus on the [Azure DevOps](https://github.com/microsoft/terraform-provider-azuredevops) provider. This project will not be using [Azurerm](https://github.com/hashicorp/terraform-provider-azurerm), a new repository using both providers will be done elsewhere.

## Development

### Dependencies

- [terraform](https://www.terraform.io/),
- [terragrunt](https://terragrunt.gruntwork.io/),
- [pre-commit](https://pre-commit.com/),
- [terraform-docs](https://terraform-docs.io/) this is required for `terraform_docs` hooks.

## Prerequisites

1. Have a [Azure DevOps](https://digitalocean.com) account. 
2. Create an organisation in Azure DevOps,
3. Generate a personal access token (PAT) as per instructions [here](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/guides/authenticating_using_the_personal_access_token).

## Usage

1. Plan your changes with `terraform plan` to see what changes will be made,
2. If you're happy with the changes `terraform apply`

Please note that `.tfstate` files are stored locally on your machine as no backend has been specified. If you would like to properly version control your state files, it is possible to use an Blob Storage to store these files. This will ensure anyone else other than you running a plan/apply will always be using the same state file.

## Pre-Commit hooks

Git hook scripts are very helpful for identifying simple issues before pushing any changes. Hooks will run on every commit automatically pointing out issues in the code e.g. trailing whitespace.

To help with the maintenance of these hooks, [pre-commit](https://pre-commit.com/) is used, along with [pre-commit-hooks](https://pre-commit.com/#install).

Please following [these instructions](https://pre-commit.com/#install) to install `pre-commit` locally and ensure that you have run `pre-commit install` to install the hooks for this project.

Additionally, once installed, the hooks can be updated to the latest available version with `pre-commit autoupdate`.

## Documentation Generation

Code formatting and documentation for `variables` and `outputs` is generated using [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform/releases) hooks that in turn uses [terraform-docs](https://github.com/terraform-docs/terraform-docs) that will insert/update documentation. The following markers have been added to the `README.md`:
```
<!-- {BEGINNING|END} OF PRE-COMMIT-TERRAFORM DOCS HOOK --->
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.4.5 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | =0.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 0.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_git_repositories"></a> [git\_repositories](#module\_git\_repositories) | ./modules/git_repositories | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_agent_pool.raspberrypi_agent_automation_pool](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/agent_pool) | resource |
| [azuredevops_agent_pool.raspberrypi_agent_deployment_pool](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/agent_pool) | resource |
| [azuredevops_agent_queue.raspberrypi_agent_automation_queue](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/agent_queue) | resource |
| [azuredevops_environment.development_environment](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/environment) | resource |
| [azuredevops_environment.production_environment](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/environment) | resource |
| [azuredevops_environment.staging_environment](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/environment) | resource |
| [azuredevops_environment.testing_environment](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/environment) | resource |
| [azuredevops_project.project](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/project) | resource |
| [azuredevops_project_pipeline_settings.pipeline](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/project_pipeline_settings) | resource |
| [azuredevops_resource_authorization.project_agent_queue_authorization](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/resource_authorization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_init_git_repository_name"></a> [init\_git\_repository\_name](#input\_init\_git\_repository\_name) | Names of repositories to create in the project. | `list(string)` | n/a | yes |
| <a name="input_organization_url"></a> [organization\_url](#input\_organization\_url) | This is the Azure DevOps organization url. <br>It can also be sourced from the AZDO\_ORG\_SERVICE\_URL environment variable. | `string` | n/a | yes |
| <a name="input_personal_access_token"></a> [personal\_access\_token](#input\_personal\_access\_token) | This is the Azure DevOps organization personal access token. <br>The account corresponding to the token will need "owner" privileges for this organization. <br>It can also be sourced from the AZDO\_PERSONAL\_ACCESS\_TOKEN environment variable. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_git_repositories_repo_attr"></a> [git\_repositories\_repo\_attr](#output\_git\_repositories\_repo\_attr) | Name for all git repositories within the<br>project. |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The project id. |
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | The project name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK --->
