output "sql_connection_string" {
  description = "The connection string to the sample database."
  value       = "Server=tcp:${azurerm_sql_server.sql_server.fully_qualified_domain_name},1433;Initial Catalog=${azurerm_sql_database.sql_database.name};Persist Security Info=False;User ID=${var.sql_administrator_login};Password=${var.sql_administrator_login_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
}

output "database_resource_id" {
  description = "Database Resource ID"
  value       = azurerm_sql_database.sql_database.id
}
