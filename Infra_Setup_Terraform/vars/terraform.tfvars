resource_group_name = "MyResourceGroup"
location            = "East US"
tags = {
  Environment = "Dev"
  Owner       = "Solunist_Research_WebApp"
}

##  App Service Plan
# terraform.tfvars

app_service_plan_name         = "my-app-service-plan"
location                      = "East US"
os_type                       = "Windows"
resource_group_name           = "my-resource-group"
sku_name                      = "S1"
sku_tier                      = "Standard"

# Optional Variables
worker_count                  = 2
per_site_scaling_enabled      = true
tags                          = { Environment = "Production" }
# Leave other optional variables out to use their defaults
