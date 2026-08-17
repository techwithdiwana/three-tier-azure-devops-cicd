variable "resource_group_name" {
  description = "Name of the resource group where the network will be created"
  type        = string
}

variable "location" {
  description = "Azure region for the network resources"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network"
  type        = list(string)
}

variable "aks_subnet_address_prefix" {
  description = "Address prefix for the AKS subnet"
  type        = string
}

variable "app_gateway_subnet_address_prefix" {
  description = "Address prefix for the Application Gateway subnet"
  type        = string
}

variable "private_endpoint_subnet_address_prefix" {
  description = "Address prefix for the private endpoint subnet"
  type        = string
}

variable "tags" {
  description = "Tags to apply to network resources"
  type        = map(string)
  default     = {}
}