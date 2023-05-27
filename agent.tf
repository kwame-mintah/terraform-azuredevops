# A typical pool of task agents
resource "azuredevops_agent_pool" "raspberrypi_agent_automation_pool" {
  name           = "Automation Raspberry Pi 4s (${var.project_name})"
  auto_provision = false
  pool_type      = "automation"
}
resource "azuredevops_agent_queue" "raspberrypi_agent_automation_queue" {
  project_id    = azuredevops_project.project.id
  agent_pool_id = azuredevops_agent_pool.raspberrypi_agent_automation_pool.id
}

# Grant access to queue to all pipelines in the project
resource "azuredevops_resource_authorization" "project_agent_queue_authorization" {
  project_id  = azuredevops_project.project.id
  resource_id = azuredevops_agent_queue.raspberrypi_agent_automation_queue.id
  type        = "queue"
  authorized  = true
}

# A deployment pool
resource "azuredevops_agent_pool" "raspberrypi_agent_deployment_pool" {
  name           = "Deployment Raspberry Pi 4s (${var.project_name})"
  auto_provision = false
  pool_type      = "deployment"
}