terraform {
  required_version = ">= 1.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0.0"
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

module "app_service_plan" {
  source = "git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//App_Service_Plan?ref=main"
  #depends_on = [module.resource_group]
  # Mandatory variables
  name                = var.app_service_plan_name
  location            = var.location
  os_type             = var.os_type
  resource_group_name = module.resource_group.resource_group_name
  sku_name            = var.sku_name
  tags                         = var.tags_asp
 
}

##App Insights
module "app_insights" {
  source              = "git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//App_Insight?ref=main"
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  application_type    = var.application_type
}

module "user_assigned_identity" {
  source              = "git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//User_managed_Identity?ref=main"
  identity_name      = var.identity_name
  resource_group_name = module.resource_group.resource_group_name
  location           = var.location
}

module "sql_server" {
  source              = "git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//Sql_Server?ref=main"
  sql_server_name             = var.sql_server_name
  resource_group_name          = module.resource_group.resource_group_name
  location                     = var.location
  azuread_administrator_login = var.administrator_login
  administrator_object_id     = var.administrator_object_id
  azuread_authentication_only = true 
}

module "azurerm_windows_web_app" {
  source = "git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//App_Service_Windows?ref=main"
  #depends_on = [module.resource_group, module.app_service_plan, module.app_insights]
  # Mandatory variables
  name                = var.app_service_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  service_plan_id     = module.app_service_plan.app_service_plan_id
  app_insights_instrumentation_key = module.app_insights.instrumentation_key
  app_insights_connection_string   = module.app_insights.connection_string

}

