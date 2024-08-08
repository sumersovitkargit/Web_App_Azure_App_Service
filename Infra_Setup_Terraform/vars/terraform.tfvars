
#commit5
# Common
region = "Central India"
azure_region = "Central India"
env = "webapp_appservoce"
tenant_id = "ab968060-1bea-4e12-ba68-c8579dd00e75"

# tags

# VNET
address_space = ["10.0.0.0/16"]
subnets = [
  { name = "aks_subnet", address_prefixes = ["10.0.0.0/24"], service_endpoints = ["Microsoft.Sql"] }
]
