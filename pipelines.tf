resource "azuredevops_project_pipeline_settings" "pipeline" {
  project_id                           = azuredevops_project.project.id
  enforce_job_scope                    = true
  enforce_referenced_repo_scoped_token = false
  enforce_settable_var                 = true
  publish_pipeline_metadata            = false
  status_badges_are_private            = true
}