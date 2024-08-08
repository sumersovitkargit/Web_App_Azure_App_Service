terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  #experiments = [module_variable_optional_attrs]
  }

  backend "azurerm" {
    resource_group_name   = "tfstate_RG"
    storage_account_name  = "tfstatessolunistresearch"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

#terraform {
#  experiments = [module_variable_optional_attrs]
#}
provider "azurerm" {
    features{}
    #subscription_id = ""
    #tenant_id = ""
}

locals {
  tags = {
    "Environment Type" = var.env
    #"Team" = var.team

    "Region"      = var.azure_region
  }
}


module "resourcegroup" {
    source = "./modules/resourcegroup"
    region = var.region
    azure_region = var.azure_region
    env = var.env
    tags  = local.tags
}

module "virtualnetwork" {
  depends_on = [module.resourcegroup]
  source     = "./modules/virtualnetwork"
  rg_name    = module.resourcegroup.resource_group_name
  region     = var.region
  #purpose    = var.purpose
  env        = var.env
  subnets    = var.subnets
  #common_tags = local.common_tags
  azure_region = var.azure_region
  tags  = local.tags
  
}


