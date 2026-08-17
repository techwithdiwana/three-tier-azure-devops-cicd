variable "resource_group_name" {
  description = "Name of the resource group for AKS"
  type        = string
}

variable "location" {
  description = "Azure region for AKS"
  type        = string
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet where AKS nodes will be deployed"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the AKS cluster"
  type        = string
  default     = null
}

variable "node_count" {
  description = "Initial number of nodes in the AKS system node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for the AKS system node pool"
  type        = string
  default     = "Standard_B2s_v2"
}

variable "tags" {
  description = "Tags to apply to AKS resources"
  type        = map(string)
  default     = {}
}
variable "acr_id" {
  description = "ID of the Azure Container Registry"
  type        = string
}