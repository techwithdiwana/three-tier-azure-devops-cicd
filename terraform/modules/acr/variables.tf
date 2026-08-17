variable "resource_group_name" {
  description = "Name of the resource group for ACR"
  type        = string
}

variable "location" {
  description = "Azure region for ACR"
  type        = string
}

variable "name" {
  description = "Globally unique name of the Azure Container Registry"
  type        = string
}

variable "sku" {
  description = "SKU of the Azure Container Registry"
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Tags to apply to ACR"
  type        = map(string)
  default     = {}
}