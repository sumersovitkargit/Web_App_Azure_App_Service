resource "azurerm_sql_server" "sql_server" {
  name                         = "sql-${var.base_name}"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_administrator_login
  administrator_login_password = var.sql_administrator_login_password
  public_network_access_enabled = true
}

resource "azurerm_sql_firewall_rule" "allow_all_windows_azure_ips" {
  name                = "AllowAllWindowsAzureIps"
  resource_group_name = var.rg_name
  server_name         = azurerm_sql_server.sql_server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_sql_database" "sql_database" {
  name                = "sqldb-adventureworks"
  resource_group_name = var.rg_name
  location            = var.location
  server_name         = azurerm_sql_server.sql_server.name
  edition             = "Basic"
  max_size_gb         = 10
  requested_service_objective_name = "Basic"

  collation           = "SQL_Latin1_General_CP1_CI_AS"
  sample_name         = "AdventureWorksLT"
}