# Common variables needed for Azure resources
variable "region" {
    description = "Location of resources"
    type = string
}

variable "azure_region" {
    description = "Azure location"
    type = string
}

variable "env" {
  description = "Environment name"
}

# Variables needed for Vnet
variable "subnets" {
  type = list(any)
  description = "List of objects that represent the configuration of each subnet."
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used in the virtual network"
}