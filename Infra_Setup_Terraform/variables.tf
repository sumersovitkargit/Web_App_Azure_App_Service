# Variables for the Resource Group creation
variable "resource_group_name" {
  description = "Name of the Resource Group to be created."
  type        = string
}

variable "location" {
  description = "Location for the Resource Group."
  type        = string
  default     = "East US"  # Default location
}

variable "tags" {
  description = "Tags for the Resource Group."
  type        = map(string)
  default     = {}  # Optional: empty map for no tags
}

## App service plan
###################################################################
# variables.tf

variable "app_service_plan_name" {
  description = "The name for the App Service Plan."
  type        = string
}


variable "os_type" {
  description = "The O/S type for the App Services to be hosted in this plan."
  type        = string
}


variable "sku_name" {
  description = "The SKU name for the App Service Plan."
  type        = string
}


variable "tags_asp" {
  description = "A mapping of tags which should be assigned to the AppService."
  type        = map(string)
  default     = {}
}

##App Service
variable "app_service_name" {
  description = "The name of the Windows Web App"
  type        = string
}

variable "app_insights_name" {
  description = "The name of the Application Insights resource."
  type        = string
}

variable "application_type" {
  description = "The name of the Resource Group where Application Insights will be created."
  type        = string
}

variable "identity_name" {
  description = "The name of the Application Insights resource."
  type        = string
}

variable "sql_server_name" {
  description = "The name of the Azure SQL Server."
  type        = string
}

variable "administrator_login" {
  description = "The login for the Azure AD administrator."
  type        = string
}

variable "administrator_object_id" {
  description = "The object ID of the Azure AD administrator."
  type        = string
}

variable "databases" {
  description = "Map of SQL databases to create, with optional collation and edition"
  type = map(object({
    collation = optional(string)
    edition   = optional(string)
  }))
  default = {}
}

variable "server_id" {
  description = "The ID of the SQL Server where the databases will be created"
  type        = string
}

