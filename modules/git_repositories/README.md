## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.4.5 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | = 0.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 0.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_git_repository.repo](https://registry.terraform.io/providers/microsoft/azuredevops/0.5.0/docs/resources/git_repository) | resource |
| [azuredevops_git_repository.repo_attr](https://registry.terraform.io/providers/microsoft/azuredevops/0.5.0/docs/data-sources/git_repository) | data source |
| [azuredevops_project.project](https://registry.terraform.io/providers/microsoft/azuredevops/0.5.0/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_git_default_branch"></a> [git\_default\_branch](#input\_git\_default\_branch) | The ref of the default branch. <br>Will be used as the branch name for initialized repositories. | `string` | `"refs/heads/master"` | no |
| <a name="input_init_git_repositories"></a> [init\_git\_repositories](#input\_init\_git\_repositories) | (Optional) Names of git repositories to add into the <br>project. | <pre>list(object({<br>    name        = string<br>    source_type = string<br>    source_url  = string<br>    init_type   = string<br>  }))</pre> | `[]` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | (Required if project\_id not set) Name of the Project. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_git_repos_attributes"></a> [git\_repos\_attributes](#output\_git\_repos\_attributes) | Retrieve the git repository attributes. |
