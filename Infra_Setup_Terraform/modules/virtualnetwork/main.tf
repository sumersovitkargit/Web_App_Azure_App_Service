resource "azurerm_virtual_network" "virtual_network" {
  name                = "vnet-${var.region}-${var.env}"
  address_space       = var.address_space
  location            = var.azure_region
  resource_group_name = var.rg_name
  tags = var.tags
}


resource "azurerm_subnet" "subnets" {
  for_each             = { for subnet in var.subnets : subnet.name => subnet }
  name                 = each.value.name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  service_endpoints    = each.value.service_endpoints
}