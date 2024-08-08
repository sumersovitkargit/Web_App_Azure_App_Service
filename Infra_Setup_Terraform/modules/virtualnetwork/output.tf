output "vnet_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.virtual_network.id
}

output "virtual_network_name" {
  description = "Virtual Network Name"
  value = azurerm_virtual_network.virtual_network.name
}
 