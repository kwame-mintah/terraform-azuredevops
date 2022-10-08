terraform {
  required_version = "= 1.1.7"

  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "=0.2.2"
    }
  }
}