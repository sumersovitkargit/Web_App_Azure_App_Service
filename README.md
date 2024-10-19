![Description of Image](Web_App_Azure.png)

# Infrastructure
﻿## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=4.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_app_insights"></a> [app\_insights](#module\_app\_insights) | git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//App_Insight | main |
| <a name="module_app_service_plan"></a> [app\_service\_plan](#module\_app\_service\_plan) | git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//App_Service_Plan | main |
| <a name="module_azurerm_windows_web_app"></a> [azurerm\_windows\_web\_app](#module\_azurerm\_windows\_web\_app) | git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//App_Service_Windows | main |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//Resource_group | main |
| <a name="module_sql_databases"></a> [sql\_databases](#module\_sql\_databases) | git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//sql_db | main |
| <a name="module_sql_server"></a> [sql\_server](#module\_sql\_server) | git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//Sql_Server | main |
| <a name="module_user_assigned_identity"></a> [user\_assigned\_identity](#module\_user\_assigned\_identity) | git::https://github.com/sumersovitkargit/Central_Terraform_Modules.git//User_managed_Identity | main |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | The login for the Azure AD administrator. | `string` | n/a | yes |
| <a name="input_administrator_object_id"></a> [administrator\_object\_id](#input\_administrator\_object\_id) | The object ID of the Azure AD administrator. | `string` | n/a | yes |
| <a name="input_app_insights_name"></a> [app\_insights\_name](#input\_app\_insights\_name) | The name of the Application Insights resource. | `string` | n/a | yes |
| <a name="input_app_service_name"></a> [app\_service\_name](#input\_app\_service\_name) | The name of the Windows Web App | `string` | n/a | yes |
| <a name="input_app_service_plan_name"></a> [app\_service\_plan\_name](#input\_app\_service\_plan\_name) | The name for the App Service Plan. | `string` | n/a | yes |
| <a name="input_application_type"></a> [application\_type](#input\_application\_type) | The name of the Resource Group where Application Insights will be created. | `string` | n/a | yes |
| <a name="input_databases"></a> [databases](#input\_databases) | Map of SQL databases to create, with optional collation and edition | <pre>map(object({<br>    collation = optional(string)<br>    edition   = optional(string)<br>  }))</pre> | `{}` | no |
| <a name="input_identity_name"></a> [identity\_name](#input\_identity\_name) | The name of the Application Insights resource. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location for the Resource Group. | `string` | `"East US"` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | The O/S type for the App Services to be hosted in this plan. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the Resource Group to be created. | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU name for the App Service Plan. | `string` | n/a | yes |
| <a name="input_sql_server_name"></a> [sql\_server\_name](#input\_sql\_server\_name) | The name of the Azure SQL Server. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the Resource Group. | `map(string)` | `{}` | no |
| <a name="input_tags_asp"></a> [tags\_asp](#input\_tags\_asp) | A mapping of tags which should be assigned to the AppService. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_insights_connection_string"></a> [app\_insights\_connection\_string](#output\_app\_insights\_connection\_string) | n/a |
| <a name="output_app_insights_instrumentation_key"></a> [app\_insights\_instrumentation\_key](#output\_app\_insights\_instrumentation\_key) | n/a |
| <a name="output_created_database_ids"></a> [created\_database\_ids](#output\_created\_database\_ids) | Database IDs created by the SQL Database module |
| <a name="output_created_database_names"></a> [created\_database\_names](#output\_created\_database\_names) | Database Names created by the SQL Database module |
| <a name="output_identity_id"></a> [identity\_id](#output\_identity\_id) | The ID of the User-Assigned Managed Identity. |
| <a name="output_identity_principal_id"></a> [identity\_principal\_id](#output\_identity\_principal\_id) | The principal ID of the User-Assigned Managed Identity. |
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | The ID of the Resource Group |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The Name of the Resource Group |
| <a name="output_sql_server_fully_qualified_domain_name"></a> [sql\_server\_fully\_qualified\_domain\_name](#output\_sql\_server\_fully\_qualified\_domain\_name) | The fully qualified domain name of the SQL Server. |
| <a name="output_sql_server_id"></a> [sql\_server\_id](#output\_sql\_server\_id) | The ID of the Azure SQL Server. |
