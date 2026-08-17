variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
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

variable "acr_name" {
  description = "Globally unique name of the Azure Container Registry"
  type        = string
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for AKS"
  type        = string
  default     = null
}

variable "aks_node_count" {
  description = "Initial AKS system node count"
  type        = number
  default     = 1
}

variable "aks_vm_size" {
  description = "VM size for AKS system nodes"
  type        = string
  default     = "Standard_B2s"
}