terraform {
  required_version = ">= 1.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }

  # Backend configuration for state management
  backend "azurerm" {
    resource_group_name   = "tfstate_RG"
    storage_account_name  = "tfstatessolunistresearch"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}
# Provider configuration
provider "azurerm" {
  features {}
}
# Call the central module for Resource Group creation
module "resource_group" {
  source = "git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//Resource_group?ref=main"
  
  # Module variables
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}
