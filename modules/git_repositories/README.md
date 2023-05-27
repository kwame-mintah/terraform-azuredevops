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

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_git_repository.repo](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/resources/git_repository) | resource |
| [azuredevops_git_repository.repo_attr](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/data-sources/git_repository) | data source |
| [azuredevops_project.project](https://registry.terraform.io/providers/microsoft/azuredevops/0.4.0/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_git_default_branch"></a> [git\_default\_branch](#input\_git\_default\_branch) | The ref of the default branch. <br>Will be used as the branch name for initialized repositories. | `string` | `"refs/heads/master"` | no |
| <a name="input_git_repistory_name"></a> [git\_repistory\_name](#input\_git\_repistory\_name) | (Required) The name of the git repository. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | (Required if project\_id not set) Name of the Project. | `string` | n/a | yes |
| <a name="input_repo_init_type"></a> [repo\_init\_type](#input\_repo\_init\_type) | (Required) The type of repository to create. <br>Valid values: `Uninitialized`, `Clean` or `Import`. | `string` | `"Clean"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_git_repo_remote_url"></a> [git\_repo\_remote\_url](#output\_git\_repo\_remote\_url) | Retrieve the git repository remote URL. |
