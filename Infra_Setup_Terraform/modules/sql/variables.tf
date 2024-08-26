variable "base_name" {
  description = "This is the base name for each Azure resource name (6-12 chars)"
  type        = string
}

variable "location" {
  description = "The resource group location"
  type        = string
  default     = "West Europe" # You can set a default value or override it at runtime
}

variable "sql_administrator_login" {
  description = "The administrator username of the SQL server"
  type        = string
}

variable "sql_administrator_login_password" {
  description = "The administrator password of the SQL server"
  type        = string
}

variable "rg_name" {
    description = "Resource group name"
    type = string
}
