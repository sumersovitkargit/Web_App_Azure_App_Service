resource_group_name = "MyResourceGroup"
location            = "Central India"
tags = {
  Environment = "Dev"
  Owner       = "Solunist_Research_WebApp"
}

##  App Service Plan
# terraform.tfvars

app_service_plan_name         = "my-app-service-plan"
os_type                       = "Windows"
sku_name                      = "S1"
#sku_tier                      = "Standard"

tags_asp             = { Owner = "Sumer" }

app_service_name = "my-windows-web-app"

app_insights_name = "my-app_insights-web-app"
application_type = "web"
identity_name = "my-Identity"
sql_server_name = "my-sql-server"

administrator_login = "solunistresearch"
administrator_object_id = "fd92d0ef-f590-4784-817a-ea8ad99d6f98"
