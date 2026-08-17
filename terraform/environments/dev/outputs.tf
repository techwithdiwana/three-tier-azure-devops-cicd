output "resource_group_id" {
  description = "ID of the development resource group"
  value       = module.resource_group.id
}

output "resource_group_name" {
  description = "Name of the development resource group"
  value       = module.resource_group.name
}

output "vnet_id" {
  description = "ID of the development virtual network"
  value       = module.network.vnet_id
}

output "vnet_name" {
  description = "Name of the development virtual network"
  value       = module.network.vnet_name
}

output "aks_subnet_id" {
  description = "ID of the AKS subnet"
  value       = module.network.aks_subnet_id
}

output "app_gateway_subnet_id" {
  description = "ID of the Application Gateway subnet"
  value       = module.network.app_gateway_subnet_id
}

output "private_endpoint_subnet_id" {
  description = "ID of the private endpoint subnet"
  value       = module.network.private_endpoint_subnet_id
}

output "acr_id" {
  description = "ID of the Azure Container Registry"
  value       = module.acr.id
}

output "acr_name" {
  description = "Name of the Azure Container Registry"
  value       = module.acr.name
}

output "acr_login_server" {
  description = "Login server of the Azure Container Registry"
  value       = module.acr.login_server
}