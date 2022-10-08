resource "azuredevops_agent_pool" "agent_pool_raspberrypi" {
  name           = "Raspberry Pi 4"
  auto_provision = false
}

resource "azuredevops_agent_queue" "project_agent_queue" {
  project_id    = azuredevops_project.project.id
  agent_pool_id = azuredevops_agent_pool.agent_pool_raspberrypi.id
}

# Grant access to queue to all pipelines in the project
resource "azuredevops_resource_authorization" "project_agent_authorization" {
  project_id  = azuredevops_project.project.id
  resource_id = azuredevops_agent_queue.project_agent_queue.id
  type        = "queue"
  authorized  = true
}