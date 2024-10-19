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
}

output "app_insights_connection_string" {
  value = module.app_insights.connection_string
}