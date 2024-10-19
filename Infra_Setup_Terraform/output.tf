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
  value       = module.user_assigned_identity.identity_id
}

output "identity_principal_id" {
  description = "The principal ID of the User-Assigned Managed Identity."
  value       = module.user_assigned_identity.identity_principal_id
}

output "sql_server_id" {
  description = "The ID of the Azure SQL Server."
  value       = module.sql_server.sql_server_id
}

output "sql_server_fully_qualified_domain_name" {
  description = "The fully qualified domain name of the SQL Server."
  value       = module.sql_server.sql_server_fully_qualified_domain_name
}

output "created_database_ids" {
  description = "Database IDs created by the SQL Database module"
  value       = module.sql_databases.database_ids    # Accessing database_ids from the module
}

# Capture and output the database names created by the module
output "created_database_names" {
  description = "Database Names created by the SQL Database module"
  value       = module.sql_databases.database_names  # Accessing database_names from the module
}

# Capture and output the FQDNs of the databases created by the module
output "created_database_fqdns" {
  description = "Database FQDNs created by the SQL Database module"
  value       = module.sql_databases.database_fqdns  # Accessing database_fqdns from the module
}