output "resource_group_id" {
  description = "The ID of the Resource Group"
  value       = module.resource_group.resource_group_id
}

output "resource_group_name" {
  description = "The Name of the Resource Group"
  value       = module.resource_group.resource_group_name
}

output "app_insights_instrumentation_key" {
  value = module.app_insights.instrumentation_key
  sensitive = true
}

output "app_insights_connection_string" {
  value = module.app_insights.connection_string
  sensitive = true
}

output "identity_id" {
  description = "The ID of the User-Assigned Managed Identity."
  value       = module.user_assigned_identity.my_identity.id
}

output "identity_principal_id" {
  description = "The principal ID of the User-Assigned Managed Identity."
  value       = module.user_assigned_identity.my_identity.principal_id
}