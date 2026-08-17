module "resource_group" {
  source = "../../modules/resource-group"

  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "dev"
    Project     = "three-tier"
    ManagedBy   = "Terraform"
  }
}

module "network" {
  source = "../../modules/network"

  resource_group_name = module.resource_group.name
  location            = var.location

  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space

  aks_subnet_address_prefix              = var.aks_subnet_address_prefix
  app_gateway_subnet_address_prefix      = var.app_gateway_subnet_address_prefix
  private_endpoint_subnet_address_prefix = var.private_endpoint_subnet_address_prefix

  tags = {
    Environment = "dev"
    Project     = "three-tier"
    ManagedBy   = "Terraform"
  }
}

module "acr" {
  source = "../../modules/acr"

  resource_group_name = module.resource_group.name
  location            = var.location

  name = var.acr_name
  sku  = "Basic"

  tags = {
    Environment = "dev"
    Project     = "three-tier"
    ManagedBy   = "Terraform"
  }
}

module "aks" {
  source = "../../modules/aks"

  resource_group_name = module.resource_group.name
  location            = var.location

  cluster_name = var.aks_cluster_name
  dns_prefix   = var.aks_dns_prefix

  subnet_id = module.network.aks_subnet_id

  kubernetes_version = var.kubernetes_version
  node_count         = var.aks_node_count
  vm_size            = var.aks_vm_size
  acr_id             = module.acr.id

  tags = {
    Environment = "dev"
    Project     = "three-tier"
    ManagedBy   = "Terraform"
  }
}