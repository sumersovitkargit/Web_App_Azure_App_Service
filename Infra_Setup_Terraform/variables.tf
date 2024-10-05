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
